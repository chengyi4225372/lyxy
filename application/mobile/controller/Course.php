<?php

namespace app\mobile\controller;


use controller\BasicMobile;

/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Course extends BasicMobile {

    public $type = 'course_type';
    public $course = 'index_course';
    public $c_chapter = 'course_chapter';
    public $c_content = 'chapter_content';
    public $order = 'member_course';
    public $teacher = 'system_user';
    public $problem = 'problem';
    public $comment = "course_comment";
    public $student = "member_info";
    public $coupon = 'index_coupon';
    public $member_coupon = 'member_coupon';

	/**
	 * 网站入口
	 */
	public function index() {
		$this->assign('title', '乐育学院-精品课程');
        $this->assign('nav', '2');
        $ctype = $this->_course_type();
		$this->assign('course', $this->_course($ctype[0]['id']));
		$this->assign('ctype', $ctype);
//		print_r($this->_degree());exit;
		return $this->fetch();
	}

    public function course()
    {
        if (request()->isPost()){
            $ctype = input('ctype');
            $this->assign('course', $this->_course($ctype));
            return $this->fetch();
        }
	}

    public function detail()
    {
        $cid = input('cid');
        $row = db($this->course)->where('id',$cid)->find();
        if ($row['is_free'] == 1) {
            $row['price'] = '0';
        }
        $mid = session("member_info.id");
        if (db($this->order)->where(["member_id" => $mid, 'course_id' => $cid, 'course_type' => 1, 'is_finish' => 1])->find()) {
            $is_buy = 1;
        } else {
            $is_buy = 2;
        }
        $this->assign('is_buy', $is_buy);
        $this->assign('title', '课程详情-' . $row['name']);
        $this->assign('vo', $row);
        $this->assign('teacher', $this->_teacher($cid));
        $this->assign('problem', $this->_problem($cid));
        $db = $this->_chapter($cid);
        $this->assign('course_time', $db['course_time']);
        unset($db['course_time']);
        $this->assign('chapter', $db);
        $this->assign('chapter_num', count($db));
        $this->assign('comment', $this->_comment());
//        print_r($this->_comment());
//        exit;
        return $this->fetch();
	}

    private function _course($type_id) {
        $db = db($this->course)->where(['is_deleted' => '0', 'status' => '1','type_id'=>$type_id])->select();
        foreach ($db as &$v){
            $v['class_num'] = 0;
            if ($v['is_free']==1){
                $v['price'] = 0;
            }
            $chapter = db($this->c_chapter)->where(['is_deleted' => '0', 'status' => '1','course_id'=>$v['id']])->select();
            foreach ($chapter as &$vv){
                $v['class_num'] += db($this->c_content)->where(['is_deleted' => '0', 'status' => '1','chapter_id'=>$vv['id']])->count();
            }
            $v['has_buy'] = 0;
            if (db($this->order)->where(['member_id'=>session('member_info.id'),'course_type'=>1,'course_id'=>$v['id']])->find()){
                $v['has_buy'] = 1;
            }
        }
        return $db;
    }

	private function _course_type() {
		return db($this->type)->where(['is_deleted' => 0, 'status' => 1])->select();
	}

    private function _teacher($id)
    {
        $teacher_id = db($this->course)->where(['id' => $id])->value('teacher_id');
        return db($this->teacher)->where(['id' => $teacher_id])->find();
    }

    private function _problem($id)
    {
        return db($this->problem)->where(['course_id' => $id])->select();
    }

    private function _chapter($id)
    {
        $row = db($this->course)->where(['id' => $id])->find();
        $course_time = 0;

        $db = db($this->c_chapter)->where(['course_id' => $row['id'], 'is_deleted' => 0, 'status' => 1])->select();
        foreach ($db as &$val) {
            $content = db($this->c_content)->where(['chapter_id' => $val['id'], 'is_deleted' => 0, 'status' => 1])->select();
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
            $create_time = strtotime($val['create_at']);
            $days = 1+ceil((time()-$create_time)/60/60/24);
            if ($days<=30){
                $val['pass_day'] = $days.'天以前';
            } else {
                $months = ceil($days/30);
                $val['pass_day'] = $months.'月以前';
            }
        }
        return $db;
    }
}
