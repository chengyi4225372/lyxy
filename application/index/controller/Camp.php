<?php

namespace app\index\controller;

use controller\BasicHome;
use think\Controller;

/**
 * 免费课程控制器
 * Class controller
 * @package app\index\controller
 */
class Camp extends BasicHome
{
	public $table = 'index_camp';
	public $type = 'course_type';
	public $order = 'member_course';
    public $coupon = 'index_coupon';
    public $member_coupon = 'member_coupon';

	public function index() {
		$this->assign('title', '七天训练营');
		$this->assign('nav', '4');
		$camp = db($this->table)->order('start_date desc')->find();
		$camp['surplus'] = $camp['member_num'] - $camp['enroll'];
		$this->assign('camp', $camp);
		$content = $this->_content($camp['id']);
		$video = $content[0]['video_url'];
		$this->assign('content', $content);
		$this->assign('video', $video);
		return $this->fetch();
	}

	/**
	 * @return 购买课程
	 */
	public function buy() {
		if (!session('?member_info')) {
			redirect('index/login/index')->remember();
			$this->redirect('index/login/index');
			exit;
		}

		$this->assign('title', '购买课程');
		$this->assign('nav', 0);
		if ($this->request->isGet()) {
			$id = $this->request->get('id');
			$row = db($this->table)->where('id', '=', $id)->find();

			$mid = session("member_info.id");
			$order = db($this->order)->where(["member_id" => $mid, 'course_id' => $id, 'course_type' => 3])->find();
			if (!empty($order)) {
				if ($order['is_finish'] == 1) {
					$this->redirect("member/index/study");
				} else {
					$this->redirect("member/order/index");
				}
			}

            $coupon = $this->_coupon($row['price'], 1);
            $coupon_num = 0 + count($coupon);
            $this->assign('coupon', $coupon);
            $this->assign('coupon_num', $coupon_num);

			$this->assign('vo', $row);
			$this->assign('type', 3);
			// print_r($row);exit;
			return $this->fetch("course/buy");
		}
	}

	public function _content($id) {
		$chapter = db('camp_chapter')->where('camp_id', $id)->order('id asc')->find();
		return db('camp_content')->where('chapter_id', $chapter['id'])->order('id asc')->limit(6)->select();
	}

    private function _coupon($price, $type)
    {
        $mid = session("member_info.id");
        $db = db($this->member_coupon)->where(['member_id' => $mid, 'is_used' => 0])->select();
        foreach ($db as &$v) {
            $coupon = db($this->coupon)->where('id', $v['coupon_id'])->find();
            if ($coupon['course_type'] == $type || $coupon['course_type'] == 0) {
                if ($coupon['condition'] <= $price) {
                    $v['can_use'] = 1;
                    $create_at = strtotime(date('Y-m-d', strtotime($v['create_at'])));
                    $expiration = $create_at + ($coupon['validity'] * 24 * 60 * 60);
                    if (time() > $expiration) {
                        db($this->member_coupon)->where('id', $v['id'])->update(['is_used' => 2]);
                        unset($v);
                    } else {
                        $v['expiration'] = date('Y-m-d', $expiration);
                        if ($coupon['condition'] == 0) {
                            $v['condition'] = '无门槛';
                        } else {
                            $v['condition'] = '满' . $coupon['condition'] . '减';
                        }
                        $v['name'] = $coupon['name'];
                        $v['discount'] = $coupon['discount'];
                        switch ($coupon['course_type']) {
                            case 1:
                                $v['course_type'] = '限免费课程';
                                break;
                            case 2:
                                $v['course_type'] = '限学位课程';
                                break;
                            case 3:
                                $v['course_type'] = '限七天课程';
                                break;
                            default:
                                $v['course_type'] = '不限课程';
                                break;
                        }
                    }
                } else {
                    $v['can_use'] = 0;
                }
            }
        }
        return $db;
    }
}
