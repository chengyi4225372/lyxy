<?php

namespace app\mobile\controller;


use controller\BasicMobile;

/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Study extends BasicMobile
{

    public $banner = 'index_banner';
    public $msg = 'index_msg';
    public $type = 'course_type';

    public $course = 'index_course'; //免费课
    public $c_chapter = 'course_chapter'; //课程章节
    public $c_content = 'chapter_content'; //课程内容

    public $degree = 'index_degree';
    public $module = 'degree_module';
    public $dchapter = 'degree_chapter';
    public $dcontent = 'degree_content';

    /**
     * 网站入口
     */
    public function index()
    {
        $this->assign('title', '学习中心');
        $this->assign('nav', '3');
        if (session('?member_info')){
            $this->assign('degree', $this->_degree());
            $this->assign('course', $this->_course());
//		print_r($this->_degree());exit;
            return $this->fetch();
        }else{
            return $this->fetch('nosign');
        }
    }

    public function cdetail()
    {
        $this->assign('title', '专题课程');
            if (isset($_GET['id'])){
            $id = input('get.id');
                //需要取出第一条播放视频 只有没有才去播放默
                $url = db($this->c_chapter)->field('id,course_id')->where('course_id',$id)->select();
                //如果课程章节都没有 直接结束
                if(!is_array($url)){
                   $url = '';
                }else{
                    foreach($url as $k =>$val){
                        $url['video'] = db($this->c_content)->where(['chapter_id'=>$url[$k]['id'],'status'=>1,'is_deleted'=>0])->order('id desc')->find();
                    }
                   $url? $url:'';
                }
                $this->assign('url',$url);
                $this->assign('course', $this->_course($id));
                return $this->fetch();
        }else{
            $this->error('数据错误','index');
         }

    }

    public function ddetail()
    {
        $this->assign('title', '学位课程');
        if (isset($_GET['id'])){
            $id = input('get.id');
            $this->assign('course', $this->_degree($id));
//            print_r($this->_degree($id));
//            exit;
            return $this->fetch();
        }else{
            $this->error('数据错误','index');
        }
    }

    private function _degree($id = 0)
    {
        if ($id != 0) {
            $row = db($this->degree)->where('id', $id)->field('id,name,imgurl,position')->find();
            $row['module'] = db($this->module)->where(['degree_id' => $row['id'], 'is_deleted' => 0, 'status' => 1])->field('id,name,learn_day')->select();
            foreach ($row['module'] as &$v) {
                $v['chapter'] = db($this->dchapter)->where(['module_id' => $v['id'], 'is_deleted' => 0, 'status' => 1])->select();
                foreach ($v['chapter'] as &$val) {
                    $val['content'] = db($this->dcontent)->where(['chapter_id' => $val['id'], 'is_deleted' => 0, 'status' => 1])->select();
                }
            }
            $row['video_content'] = $row['module'][0]['chapter'][0]['content'][0];
            return $row;
        }
        $mid = session("member_info.id");
        $cid = db("member_course")->where(['is_finish' => 1, 'status' => 1, 'is_deleted' => 0, 'member_id' => $mid, 'course_type' => 2])->column('course_id');
        if (!empty($cid)) {
            $ccid = implode(',', $cid);
            $row = db($this->degree)->where('id', 'in', $ccid)->select();
            foreach ($row as &$vv) {
                $module = db($this->module)->where(['degree_id' => $vv['id'], 'is_deleted' => 0, 'status' => 1])->select();
                foreach ($module as &$v) {
                    $chapter = db($this->dchapter)->where(['module_id' => $v['id'], 'is_deleted' => 0, 'status' => 1])->select();
                    foreach ($chapter as &$val) {
                        $vv['content'] = db($this->dcontent)->where(['chapter_id' => $val['id'], 'is_deleted' => 0, 'status' => 1])->find();
                    }
                }
            }
            return $row;
        }
        return null;
    }

    private function _course($id = 0)
    {

        if ($id != 0) {
            $row = db($this->course)->where('id', $id)->find();
            $row['chapter'] = db($this->c_chapter)->where(['course_id' => $row['id'], 'is_deleted' => 0, 'status' => 1])->select(); //课程章节
            //当视频和章节没有时候
            if(!empty($row['chapter'])){
                foreach ($row['chapter'] as &$val) {
                    $val['content'] = db($this->c_content)->where(['chapter_id' => $val['id'], 'is_deleted' => 0, 'status' => 1])->select(); //课程章节标题和视频
                }
                $row['video_content'] = $row['chapter'][0]['content'][0];
                return $row;
            }else{
                return $row['chapter'] == '';
            }
        }

        $mid = session("member_info.id");
        $cid = db("member_course")->where(['is_finish' => 1, 'status' => 1, 'is_deleted' => 0, 'member_id' => $mid, 'course_type' => 1])->column('course_id');
        if (!empty($cid)) {
            $ccid = implode(',', $cid);
            $row = db($this->course)->where('id', 'in', $ccid)->select();
            foreach ($row as &$v) {
                $chapter = db($this->c_chapter)->where(['course_id' => $v['id'], 'is_deleted' => 0, 'status' => 1])->select();
                foreach ($chapter as &$val) {
                    $v['content'] = db($this->c_content)->where(['chapter_id' => $val['id'], 'is_deleted' => 0, 'status' => 1])->find();
                }
            }
            return $row;
        }
        return null;
    }
}
