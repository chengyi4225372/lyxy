<?php

namespace app\mobile\controller;


use controller\BasicMobile;

/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Safe extends BasicMobile
{
    /**
     * 网站入口
     */
    public function forget()
    {
        $this->assign('title', '更改密码');
        return $this->fetch();
    }

    public function change()
    {
        $this->assign('title', '更改手机');
        return $this->fetch();
    }
}
