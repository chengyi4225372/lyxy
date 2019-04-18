<?php
namespace app\index\controller;

use controller\BasicHome;
use think\Controller;

/**
 * 关于我们控制器
 * Class controller
 * @package app\index\controller
 */
class Material extends BasicHome {
	public $material = 'index_material';
	public $type = 'course_type';

	public function index() {
		$this->assign('title', '内部教材');
		$this->assign('nav', '7');
		$tid = 0;
		$get = $this->request->get();
		if (isset($get['tid']) && $get['tid'] !== '') {
			$tid = input("get.tid");
		}
		$this->assign('material', $this->_material($tid));
		$this->assign('type', $this->_type());
//        print_r($this->_material());exit;
		return $this->fetch();
	}

	private function _material($tid) {
		$db = db($this->material)->where(['is_deleted' => '0', 'status' => '1']);
		if ($tid != 0) {
			$db->where(['type_id' => $tid]);
		}
		return $db->select();
	}

	private function _type() {
		return db($this->type)->where(['is_deleted' => '0', 'status' => '1'])->select();
	}
}