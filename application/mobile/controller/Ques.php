<?php

namespace app\mobile\controller;


use controller\BasicMobile;

/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Ques extends BasicMobile
{
    /**
     * 网站入口
     */
    //如何购买观看
    public function detail_1()
    {
        $this->assign('title', '如何购买观看');
        return $this->fetch();
    }

    //学位作业要求
    public function detail_2()
    {
        $this->assign('title', '学位作业要求');
        return $this->fetch();
    }

    //版权提示
    public function detail_3()
    {
        $this->assign('title', '版权提示');
        return $this->fetch();
    }
}
