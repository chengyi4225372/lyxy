<?php

namespace app\mobile\controller;


use controller\BasicMobile;

/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Index extends BasicMobile {

	public $banner = 'index_banner';
	public $msg = 'index_msg';
    public $type = 'course_type';
    public $degree = 'index_degree';
    public $course = 'index_course';
    public $c_chapter = 'course_chapter';
    public $c_content = 'chapter_content';

	/**
	 * 网站入口
	 */
	public function index() {
		$this->assign('title', '乐育学院');
		$this->assign('nav', '1');
		$this->assign('banner', $this->_banner());  //轮播图
		$this->assign('degree', $this->_degree());
		$this->assign('course', $this->_course());
//		print_r($this->_degree());exit;
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

    private function _degree() {
        $db = db($this->type)->where(['is_deleted' => '0', 'status' => '1','is_index'=>1])->limit(2)->select();
        foreach ($db as &$v){
            $v['degree'] = db($this->degree)->where(['is_deleted' => '0', 'status' => '1','type_id'=>$v['id']])->limit(2)->column('id,name,imgurl,target');
        }
        return $db;
    }

    private function _course() {
        $db = db($this->course)->where(['is_deleted' => '0', 'status' => '1','is_hot'=>1])->limit(3)->select();
        foreach ($db as &$v){
            $v['class_num'] = 0;
            if ($v['is_free']==1){
                $v['price'] = 0;
            }
            $chapter = db($this->c_chapter)->where(['is_deleted' => '0', 'status' => '1','course_id'=>$v['id']])->select();
            foreach ($chapter as &$vv){
                $v['class_num'] += db($this->c_content)->where(['is_deleted' => '0', 'status' => '1','chapter_id'=>$vv['id']])->count();
            }
        }
        return $db;
    }

	private function _team() {
		return db('system_user')->where(['is_teacher' => 1, 'is_deleted' => 0, 'status' => 1])->order('sort asc')->limit(6)->select();
	}

	private function _student() {
		return db('member_info')->where(['is_deleted' => 0, 'status' => 1])->order('sort asc')->limit(3)->select();
	}
}
