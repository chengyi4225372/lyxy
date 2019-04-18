<?php
namespace app\member\controller;

use think\Controller;

/**
 * 我的收藏控制器
 * Class controller
 * @package app\index\controller
 */
class Collect extends Common
{
    public function index()
    {
        $this->assign('title','我的收藏');
        $this->assign('nav','0');
        $this->assign('my_nav','3');
        return $this->fetch();
    }
}