<?php

namespace app\mobile\controller;


use controller\BasicMobile;

/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Degree extends BasicMobile {

    public $table = "index_degree";
    public $module = "degree_module";
    public $chapter = "degree_chapter";
    public $content = "degree_content";
    public $teacher = "system_user";
    public $package = "degree_package";

	/**
	 * 网站入口
	 */
	public function index() {
        $id = input("get.id");

		$this->assign('title', '乐育学院-学位课程');
        $this->assign('detail', $this->_detail($id));
		$this->assign('team', $this->_team());
        $this->assign('package', $this->_package($id));
		$this->assign('module', $this->_module($id));
//		$this->assign('course', $this->_course());
//		print_r($this->_package($id));exit;
		return $this->fetch();
	}

    private function _detail($id) {
        $db = db($this->table)->where(['status' => 1, 'is_deleted' => 0, 'id' => $id])->find();
        $db['price'] = db($this->package)->where(['degree_id' => $id])->order('price asc')->value('price');
        return $db;
    }

    private function _team() {
        return db($this->teacher)->where(['status' => 1, 'is_deleted' => 0, 'is_teacher' => 1])->order('sort asc')->select();
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

    private function _module($id) {
//        $row = db($this->table)->where('id', '=', $id)->field('id,name,type_id,position')->find();

        $module = db($this->module)->where(['degree_id' => $id, 'is_deleted' => 0, 'status' => 1])->select();
        foreach ($module as &$v) {
            $v['chapter'] = db($this->chapter)->where(['module_id' => $v['id'], 'is_deleted' => 0, 'status' => 1])->select();
            $v['chapter_num'] = count($v['chapter']);
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
}
