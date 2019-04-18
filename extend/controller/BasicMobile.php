<?php

namespace controller;

use think\Controller;

/**
 * 前台基础控制器
 * Class BasicAdmin
 * @package controller
 */
class BasicMobile extends Controller
{
    public $company = 'index_company';

    protected function _initialize()
    {

    }

    private function _company() {
        return db($this->company)->where(['is_deleted' => '0', 'status' => '1'])->limit(5)->select();
    }
}
