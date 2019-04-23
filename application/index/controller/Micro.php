<?php
namespace app\index\controller;

use controller\BasicHome;
use think\Controller;

/**
 * 学位课程控制器
 * Class controller
 * @package app\index\controller
 */
class Micro extends BasicHome {
	public $table = "index_degree"; //学位课程
	public $module = "degree_module"; //学位课程模块
	public $chapter = "degree_chapter"; //学位课程章节
	public $content = "degree_content"; //学位课程-内容表(章节内容)
	public $news = "member_tidings"; //就业喜报
	public $pros = "problem";        //常见问题
	public $package = "degree_package"; //学位课程-价格套餐
	public $project = "degree_project";//学位课程-实战项目
	public $student = "member_info";  //用户信息
	public $teacher = "system_user"; //教师 表
	public $comment = "course_comment"; //课程评价表
    public $order = 'member_course'; //学院购买课程表
    public $coupon = 'index_coupon'; //优惠券表
    public $member_coupon = 'member_coupon';//学员拥有优惠券表

	public function index() {
	    //没有登录 情况下 走默认的
		$this->assign('title', '学位课程');
		$this->assign('nav', '3');
		$this->assign('micro', $this->_micro());
		$this->assign('news', $this->_news());
		$this->assign('pros', $this->_pros());
		if (isset($_GET['did'])) {
		    //关联
			$did = input("get.did");
		} else {
            //查询如果没有关联，默认去第一条
			$did = db($this->table)->where(['status' => 1, 'is_deleted' => 0])->order('id asc')->limit(1)->value('id');
		}

		// print_r($did);exit;
		$this->assign('detail', $this->_detail($did));
		$this->assign('package', $this->_package($did));
		$this->assign('project', $this->_project($did));
		$this->assign('module', $this->_module($did));
		$this->assign('stus', $this->_stus());
		$this->assign('team', $this->_team());
		$this->assign('comment', $this->_comment());
		$this->assign('degree', $this->_degree($did));
        //有登陆并且购买了情况下
        $mid = session("member_info.id");
        //用户 关于学位 课程的订单列表  is_finish 0未支付,1已支付,2超时取消',
        $order = db($this->order)->where(['member_id' => $mid, 'course_id' => $did, 'course_type' => 2,'status'=>1,'is_deleted'=>0])->find();
        $this->assign('order',$order);
        return $this->fetch();
	}

	/**
	 * @return 购买课程
	 */
	public function buy() {
	    //判断是否登录
		if (!session('?member_info')) {
			redirect('index/login/index')->remember();
			$this->redirect('index/login/index');
			exit;
		}
		//导航条
		$this->assign('title', '购买课程');
		$this->assign('nav', 0);

		if ($this->request->isGet()) {
			$id = $this->request->get('id');
			$mid = session("member_info.id");
			$pid = $this->request->get('pid');
			$order = db($this->order)->where(["member_id" => $mid, 'course_id' => $id, 'course_type' => 2,'package_id'=>$pid])->find();
			if (!empty($order)) {
				if ($order['is_finish'] == 1) {
					$this->redirect("member/index/study");
				} else {
					$this->redirect("member/order/index");
				}
			}
			$row = db($this->table)->where('id', '=', $id)->find();
			$row['price'] = $this->request->get('price');
			$row['package_id'] = $pid;

            $coupon = $this->_coupon($row['price'], 1);
            $coupon_num = 0 + count($coupon);
            $this->assign('coupon', $coupon);
            $this->assign('coupon_num', $coupon_num);

			$this->assign('vo', $row);
			$this->assign('type', 2);
			return $this->fetch("course/buy");
		}
	}

	private function _micro() {
		$db = db($this->table)->where(['status' => 1, 'is_deleted' => 0])->order('sort asc')->limit(4)->select();
//		foreach ($db as &$v) {
		//			$v['type_name'] = db("course_type")->where(['id' => $v['type_id']])->value('name');
		//			$v['package'] = db("degree_package")->where(['degree_id' => $v['id']])->select();
		//			$dmid = db($this->module)->where(["degree_id" => $v['id']])->value('id');
		//			$dmcid = db($this->chapter)->where(["module_id" => $dmid])->value('id');
		//			$v['video_url'] = db($this->content)->where(["chapter_id" => $dmcid])->value('video_url');
		//		}
		return $db;
	}

	private function _package($id) {
		$package = db($this->package)->where(['degree_id' => $id])->order('price asc')->select();
		foreach ($package as &$val) {
//            if (!empty($val['content'])){
			$val['list'] = explode("/", $val['content']);
//            }
		}
		return $package;
	}

	private function _project($id) {
		return db($this->project)->where(['degree_id' => $id])->select();
	}

	private function _detail($id) {
		$db = db($this->table)->where(['status' => 1, 'is_deleted' => 0, 'id' => $id])->find();
		$dmid = db($this->module)->where(["degree_id" => $id])->value('id');
		$dmcid = db($this->chapter)->where(["module_id" => $dmid])->value('id');
		$db['video_url'] = db($this->content)->where(["chapter_id" => $dmcid])->value('video_url');
		$db['video_name'] = db($this->content)->where(["chapter_id" => $dmcid])->value('name');
		return $db;
	}

	private function _news() {
		$db = db($this->news)->where(['status' => 1, 'is_deleted' => 0])->order("create_at desc")->limit(20)->select();
		foreach ($db as &$v) {
			$v['stu_name'] = mb_substr($v['stu_name'], 0, 2, 'utf-8') . "**同学";
			$v['company'] = mb_substr($v['company'], 0, 3, 'utf-8') . "****公司";
		}
		return $db;
	}

	private function _pros() {
		return db($this->pros)->where(['status' => 1, 'is_deleted' => 0])->order("create_at desc")->limit(5)->select();
	}

	private function _module($id) {
		return db($this->module)->where(['status' => 1, 'is_deleted' => 0, "degree_id" => $id])->select();
	}

	private function _stus() {
		return db($this->student)->where(['status' => 1, 'is_deleted' => 0])->order('sort asc')->limit(4)->select();
	}

	private function _team() {
		return db($this->teacher)->where(['status' => 1, 'is_deleted' => 0, 'is_teacher' => 1])->order('sort asc')->limit(4)->select();
	}

	private function _comment() {
		$db = db($this->comment)->where(['status' => 1, 'is_deleted' => 0, 'course_type' => 2])->select();
		foreach ($db as &$val) {
			$val['member_info'] = db($this->student)->where(['id' => $val['member_id']])->find();
		}
		return $db;
	}

	//课程章节
	private function _degree($id) {
		$row = db($this->table)->where('id', '=', $id)->field('id,name,type_id,position')->find();
		$module = db($this->module)->where(['degree_id' => $row['id'], 'is_deleted' => 0, 'status' => 1])->field('id,name,learn_day')->select();
		foreach ($module as &$v) {
			$v['chapter'] = db($this->chapter)->where(['module_id' => $v['id'], 'is_deleted' => 0, 'status' => 1])->select();
			foreach ($v['chapter'] as &$val) {
				$val['has_free'] = 0;
				$val['content'] = db($this->content)->where(['chapter_id' => $val['id'], 'is_deleted' => 0, 'status' => 1])->select();
				foreach ($val['content'] as &$vv) {
					if ($vv['is_free'] == 1) {
						$val['has_free'] = 1;
					}
				}

			}
		}

		return $module;
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
