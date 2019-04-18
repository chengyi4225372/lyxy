<?php
namespace app\member\controller;

use think\Controller;

/**
 * 会员中心父类控制器
 * Class controller
 * @package app\index\controller
 */
class Common extends Controller
{
    public $company = 'index_company';

    protected function _initialize()
    {
        $this->assign('company', $this->_company());
        if (!session('?member_info')){
            $this->redirect('index/login/index');
        }
    }

    private function _company() {
        return db($this->company)->where(['is_deleted' => '0', 'status' => '1'])->limit(5)->select();
    }
}