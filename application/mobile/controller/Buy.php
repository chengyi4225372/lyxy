<?php

namespace app\mobile\controller;


use controller\BasicMobile;

/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Buy extends BasicMobile
{
    public $degree = "index_degree";
    public $course = "index_course";
    public $package = "degree_package";

    /**
     * 网站入口
     */
    public function buy()
    {
        $this->assign('title', '购买课程');
        $type = input('type');
        $cid = input('cid');
        $pid = input('pid');
        if ($type == 1) {
            $course = db($this->course)->where('id', $cid)->find();
        } else {
            $course = db($this->degree)->where('id', $cid)->find();
            $package = db($this->package)->where('id', $pid)->find();
            $course['name'] = $course['name'] . '--' . $package['name'];
            $course['price'] = $package['price'];
        }
        $this->assign('course', $course);
        $this->assign('course_type', $type);
        return $this->fetch();
    }
}
