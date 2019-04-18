<?php

namespace controller;

use think\Controller;

/**
 * 前台基础控制器
 * Class BasicAdmin
 * @package controller
 */
class BasicHome extends Controller
{
    public $company = 'index_company';

    protected function _initialize()
    {
        if (isMobile()){
            $this->redirect("mobile/index/index");
        }
        $this->assign('company', $this->_company());
    }

    private function _company() {
        return db($this->company)->where(['is_deleted' => '0', 'status' => '1'])->limit(5)->select();
    }
}
