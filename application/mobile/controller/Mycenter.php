<?php

namespace app\mobile\controller;


use controller\BasicMobile;

/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Mycenter extends BasicMobile
{

    public $coupon = 'member_coupon';
    public $msg = 'index_msg';
    public $type = 'course_type';
    public $degree = 'index_degree'; //学位课程
    public $course = 'index_course'; //免费课程
    public $c_chapter = 'course_chapter'; //学位课
    public $c_content = 'chapter_content';
    public $order ='member_course'; //订单表

    /**
     * 网站入口
     */
    public function index()
    {
        $this->assign('title', '个人中心');
        $this->assign('nav', '4');
        if (session('member_info')) {
            $coupon_num = db($this->coupon)->where(['member_id'=>session('member_info.id'),'is_used'=>0])->count();
            $this->assign('coupon_num', $coupon_num);
//            print_r(session('member_info'));exit;
            return $this->fetch();
        } else {
            return $this->fetch('nosign');
        }
    }


    public function logout() {
        if (request()->isPost()){
            session('member_info', null);
            return ['status' => 200];
        }
    }

    public function info()
    {
        $this->assign('title', '个人中心');
        return $this->fetch();
    }
    //个人订单页面
    public function order()
    {
        if(session('member_info') == ''|| session('member_info')==null){
            $this->redirect('mobile/login/login');
        }
        $member_id = session('member_info.id');
        $info = db($this->order)->where('member_id',$member_id)->select();
        foreach ($info as $k=>$val){
            if($info[$k]['course_type'] ==1){
                $info[$k]['course_type'] = '免费课程';
                $info[$k]['ke_title'] = db($this->course)->where('id',$info[$k]['course_id'])->value('name');
                $info[$k]['ke_img'] = db($this->course)->where('id',$info[$k]['course_id'])->value('imgurl');
            }else if($info[$k]['course_type'] ==2){
                $info[$k]['course_type'] = '学位课程';
                $info[$k]['ke_title'] = db($this->degree)->field('name')->where('id',$info[$k]['course_id'])->value('name');
            }else if($info[$k]['course_type'] ==3){
                $info[$k]['course_type'] = '七天课程';
                $info[$k]['ke_title'] = db($this->c_chapter)->field('name')->where('id',$info[$k]['course_id'])->value('name');
            }else{
                $info[$k]['course_type'] ='公开课';
                $info[$k]['ke_title'] = db('index_open')->field('name')->where('id',$info[$k]['course_id'])->value('name');
                $info[$k]['ke_img'] = db('index_open')->where('id',$info[$k]['course_id'])->value('imgurl');
            }
        }

        $this->assign('title', '订单中心');
        $this->assign('info',$info);
        return $this->fetch();
    }

    public function coupon()
    {
        $this->assign('title', '优惠券中心');
        return $this->fetch();
    }

    public function safe()
    {
        $this->assign('title', '安全中心');
        return $this->fetch();
    }

    public function ques()
    {
        $this->assign('title', '常见问题');
        return $this->fetch();
    }

    private function _degree()
    {
        $db = db($this->type)->where(['is_deleted' => '0', 'status' => '1', 'is_index' => 1])->limit(2)->select();
        foreach ($db as &$v) {
            $v['degree'] = db($this->degree)->where(['is_deleted' => '0', 'status' => '1', 'type_id' => $v['id']])->limit(2)->column('id,name,imgurl,target');
        }
        return $db;
    }

    private function _course()
    {
        $db = db($this->course)->where(['is_deleted' => '0', 'status' => '1', 'is_hot' => 1])->limit(3)->select();
        foreach ($db as &$v) {
            $v['class_num'] = 0;
            if ($v['is_free'] == 1) {
                $v['price'] = 0;
            }
            $chapter = db($this->c_chapter)->where(['is_deleted' => '0', 'status' => '1', 'course_id' => $v['id']])->select();
            foreach ($chapter as &$vv) {
                $v['class_num'] += db($this->c_content)->where(['is_deleted' => '0', 'status' => '1', 'chapter_id' => $vv['id']])->count();
            }
        }
        return $db;
    }

    private function _team()
    {
        return db('system_user')->where(['is_teacher' => 1, 'is_deleted' => 0, 'status' => 1])->order('sort asc')->limit(6)->select();
    }

    private function _student()
    {
        return db('member_info')->where(['is_deleted' => 0, 'status' => 1])->order('sort asc')->limit(3)->select();
    }
}
