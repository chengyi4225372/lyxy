<?php

namespace app\index\controller;

use controller\BasicHome;

/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Index extends BasicHome {

	public $banner = 'index_banner';
	public $msg = 'index_msg';

	/**
	 * 网站入口
	 */
	public function index() {
		$this->assign('title', '乐育学院');
		$this->assign('nav', '1');
		$this->assign('banner', $this->_banner());
		$this->assign('team', $this->_team());
		$this->assign('student', $this->_student());
		return $this->fetch();
	}

	public function msg() {
		if (request()->isAjax()) {
			if (request()->isPost()) {
				$tel = input("post.tel");
				$msg = input("post.msg");
//                print_r(input("post."));exit;
				$check_phone = '/^1[3|5|7|8]\d{9}$/';
				if (empty($tel) || !preg_match($check_phone, $tel)) {
					return ['status' => 404, 'msg' => '手机号不正确!'];
				}
				if (empty($msg)) {
					return ['status' => 404, 'msg' => '请输入留言内容!'];
				}
				$last_msg = db($this->msg)->where(["tel" => $tel])->value('create_time');
				if (time() - $last_msg <= 180) {
					return ['status' => 404, 'msg' => '请勿频繁留言!'];
				}
				$data = ['msg' => $msg, 'tel' => $tel, 'create_time' => time()];
				if (db($this->msg)->data($data)->insert()) {
					return ['status' => 200, 'msg' => '留言成功!'];
				} else {
					return ['status' => 404, 'msg' => '留言失败!请稍后重试'];
				}
			}
		}
	}

	private function _banner() {
		return db($this->banner)->where(['is_deleted' => '0', 'status' => '1'])->limit(5)->select();
	}

	private function _team() {
		return db('system_user')->where(['is_teacher' => 1, 'is_deleted' => 0, 'status' => 1])->order('sort asc')->limit(6)->select();
	}

	private function _student() {
		return db('member_info')->where(['is_deleted' => 0, 'status' => 1])->order('sort asc')->limit(3)->select();
	}
}
