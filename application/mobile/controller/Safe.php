<?php

namespace app\mobile\controller;


use controller\BasicMobile;
use think\Session;
use app\mobile\controller\Login;
/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Safe extends BasicMobile
{
    /**
     * 忘记密码或者修改
     */
    public function forget()
    {
        if(request()->isPost()){

        }else{
            $this->assign('title', '更改密码');
            return $this->fetch();
        }

    }

    //更换手机号
    public function change()
    {
        $this->assign('title', '更改手机');
        return $this->fetch();
    }
}
