<?php

// +----------------------------------------------------------------------
// | ThinkAdmin
// +----------------------------------------------------------------------
// | 版权所有 2014~2017 广州楚才信息科技有限公司 [ http://www.cuci.cc ]
// +----------------------------------------------------------------------
// | 官方网站: http://think.ctolog.com
// +----------------------------------------------------------------------
// | 开源协议 ( https://mit-license.org )
// +----------------------------------------------------------------------
// | github开源项目：https://github.com/zoujingli/ThinkAdmin
// +----------------------------------------------------------------------

namespace app\index\controller;

use controller\BasicHome;
use think\Controller;

/**
 * 免费课程控制器
 * Class controller
 * @package app\index\controller
 */
class Course extends BasicHome
{
    public $table = 'index_course';
    public $type = 'course_type';
    public $order = 'member_course';
    public $teacher = 'system_user';
    public $chapter = 'course_chapter';
    public $content = 'chapter_content';
    public $problem = 'problem';
    public $comment = "course_comment";
    public $student = "member_info";
    public $coupon = 'index_coupon';
    public $member_coupon = 'member_coupon';

    public function index()
    {
        $this->assign('title', '免费课程');
        $this->assign('nav', '2');
        $tid = 0;
        $key = null;
        $get = $this->request->get();
        if (isset($get['tid']) && $get['tid'] != '') {
            $tid = input("get.tid");
        }
        if (isset($get['key']) && $get['key'] !== '') {
            $key = input("get.key");
        }
        $this->assign('course', $this->_course($tid, $key));

        // dump($this->_course($tid, $key));exit;
        $this->assign('type', $this->_type());
        return $this->fetch();
    }

    public function detail()
    {
        $id = $this->request->get('id');
        $row = db($this->table)->where('id', '=', $id)->find();
        if ($row['is_free'] == 1) {
            $row['price'] = '0';
        }
        $mid = session("member_info.id");
        if (db($this->order)->where(["member_id" => $mid, 'course_id' => $id, 'course_type' => 1, 'is_finish' => 1])->find()) {
            $is_buy = 1;
        } else {
            $is_buy = 2;
        }
        $this->assign('is_buy', $is_buy);
        $this->assign('title', '课程详情-' . $row['name']);
        $this->assign('nav', '2');
        $this->assign('vo', $row);
        $this->assign('teacher', $this->_teacher($id));
        $this->assign('problem', $this->_problem($id));
        $db = $this->_chapter($id);
        $this->assign('course_time', $db['course_time']);
        unset($db['course_time']);
        $this->assign('chapter', $db);
        $this->assign('chapter_num', count($db));
        $this->assign('comment', $this->_comment());
//		 print_r( $this->_comment());exit;
        return $this->fetch();
    }

    /**
     * @return 购买课程
     */
    public function buy()
    {
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
            if ($row['is_free'] == 1) {
                $row['price'] = '0';
            }
            $coupon = $this->_coupon($row['price'], 1);
            $coupon_num = 0 + count($coupon);
            $this->assign('coupon', $coupon);
            $this->assign('coupon_num', $coupon_num);
            $this->assign('vo', $row);
            $this->assign('type', 1);
            return $this->fetch();
        }
    }

    private function _course($tid, $key)
    {
        $db = db($this->table)->where(['is_deleted' => '0', 'status' => '1']);
        if ($tid != 0) {
            $db->where(['type_id' => $tid]);
        }
        if (!empty($key)) {
            $db->whereLike('name', "%$key%");
        }
        return $db->select();
    }

    private function _type()
    {
        return db($this->type)->where(['is_deleted' => '0', 'status' => '1'])->select();
    }

    private function _teacher($id)
    {
        $teacher_id = db($this->table)->where(['id' => $id])->value('teacher_id');
        return db($this->teacher)->where(['id' => $teacher_id])->find();
    }

    private function _problem($id)
    {
        return db($this->problem)->where(['course_id' => $id])->select();
    }

    private function _chapter($id)
    {
        $row = db($this->table)->where(['id' => $id])->find();
        $course_time = 0;

        $db = db($this->chapter)->where(['course_id' => $row['id'], 'is_deleted' => 0, 'status' => 1])->select();
        foreach ($db as &$val) {
            $content = db($this->content)->where(['chapter_id' => $val['id'], 'is_deleted' => 0, 'status' => 1])->select();
            $val['content'] = $content;
            foreach ($content as $vv) {
                $course_time += $vv['class_time'];
            }
        }
        $db['course_time'] = $course_time;

        return $db;
    }

    private function _comment()
    {
        $db = db($this->comment)->where(['status' => 1, 'is_deleted' => 0, 'course_type' => 1])->select();
        foreach ($db as &$val) {
            $val['member_info'] = db($this->student)->where(['id' => $val['member_id']])->find();
        }
        return $db;
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
