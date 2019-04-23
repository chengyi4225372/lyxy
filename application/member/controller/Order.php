<?php
namespace app\member\controller;

use think\Controller;

/**
 * 我的订单控制器
 * Class controller
 * @package app\index\controller
 */
class Order extends Common {
	public $order = 'member_course';
	public $course = 'index_course';
	public $degree = 'index_degree';
	public $open = 'index_open';
	public $camp = 'index_camp';
	public $package = 'degree_package';
	public $comment = 'course_comment';

	public function index() {
		$this->assign('title', '我的订单');
		$this->assign('order', $this->_order());
		// print_r($this->_order());exit;
		$this->assign('nav', '0');
		$this->assign('my_nav', '2');
		return $this->fetch();
	}

	public function comment() {
		if (request()->isAjax()) {
			if (request()->isPost()) {
//                print_r(input("post."));exit;
				$score = input("post.score");
				$impress = input("post.impress");
				$content = input("post.content");
				$cid = input("post.cid");
				$tid = input("post.tid");
				$mid = session("member_info.id");
				if (empty($score)) {
					return ['status' => 404, 'msg' => '请先评分!'];
				}
				if (empty($impress)) {
					return ['status' => 404, 'msg' => '请先选择印象!'];
				}
				if (empty($content)) {
					return ['status' => 404, 'msg' => '请先输入评语!'];
				}
				$data = [
					'score' => $score,
					'impress' => $impress,
					'content' => $content,
					'course_id' => $cid,
					'course_type' => $tid,
					'member_id' => $mid,
				];
				if (db($this->comment)->data($data)->insert() &&
					db($this->order)->where(['member_id' => $mid, 'course_id' => $cid, 'course_type' => $tid])->update(['is_comment' => 1])) {
					return ['status' => 200, 'msg' => '评论成功!'];
				} else {
					return ['status' => 404, 'msg' => '评论失败!请稍后再试'];
				}
			}
		}
		$oid = $this->request->get("id");
		$type = $this->request->get("type");
		$order = db($this->order)->where(["id" => $oid])->find();
		// print_r($order);exit;
		if ($order['is_finish'] == 1) {
			if ($type == 1) {
				$course = db($this->course)->where(["id" => $order['course_id']])->find();
			} else if ($type == 2) {
				$course = db($this->degree)->where(["id" => $order['course_id']])->find();
			} else {
				$course = db($this->camp)->where(["id" => $order['course_id']])->find();
			}
			$order['finish_at'] = date("Y-m-d H:i:s", "{$order['finish_at']}");
			$this->assign('title', '课程评价');
			$this->assign('order', $order);
			$this->assign('course', $course);
			$this->assign('nav', '0');
			$this->assign('type', $type);
			return $this->fetch();
		} else if ($order['is_finish'] == 0) {
			action("alipay/Alipay/order", ['data' => $order]);
		}
	}

	private function _order() {
		$row = db($this->order)->where(['is_deleted' => '0', 'status' => 1, 'member_id' => session("member_info.id")])->order('create_at desc')->select();
		foreach ($row as &$v) {
			if ($v['course_type'] == 1) {
				$v['course_name'] = db($this->course)->where("id", '=', $v['course_id'])->value('name');
				$v['price'] = db($this->course)->where("id", '=', $v['course_id'])->value('price');
				$v['create_at'] = date("Y-m-d H:i:s", "{$v['create_at']}");
			} else if ($v['course_type'] == 2) {
				$course = db($this->degree)->where("id", '=', $v['course_id'])->find();
				$v['course_name'] = $course['name'];
				$price = db($this->package)->where("id", '=', $v['package_id'])->value('price');
				$v['price'] = $price;
				$v['create_at'] = date("Y-m-d H:i:s", "{$v['create_at']}");
			} else {
				$v['course_name'] = db($this->camp)->where("id", '=', $v['course_id'])->value('name');
				$v['price'] = db($this->camp)->where("id", '=', $v['course_id'])->value('price');
				$v['create_at'] = date("Y-m-d H:i:s", "{$v['create_at']}");
			}
		}
		return $row;
	}
}