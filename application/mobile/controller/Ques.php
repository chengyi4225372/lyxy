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
    public function detail()
    {
        $this->assign('title', '常见问题');
        return $this->fetch();
    }
}
