<?php
namespace app\member\controller;

use think\Controller;

/**
 * 我的资料控制器
 * Class controller
 * @package app\index\controller
 */
class Profile extends Common
{
    public function index()
    {
        $this->assign('title','我的资料');
        $this->assign('nav','0');
        $this->assign('my_nav','4');
        return $this->fetch();
    }
}