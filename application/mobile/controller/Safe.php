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

    public $table = 'member_info';

    /**
     * 忘记密码或者修改
     */
    public function forget()
    {
        if(request()->isPost()){
            $data['phone'] = input('post.phone');
            $code = input('post.code');
            $data['pwd'] = input('post.pwd');
            //检查验证码
            if (!$code) {
                return ['status' => 404, 'msg' => '请输入手机验证码!'];
            } else {
                if (time() - session('sms_code_time') > 900) {
                    session('sms_code', null);
                    session('sms_code_time', null);
                    return ['status' => 404, 'msg' => '手机验证码已失效!'];
                }
                if (md5($code) != session('sms_code')) {
                    return ['status' => 404, 'msg' => '手机验证码错误!'];
                }
            }
             //查询手机号码
            $member_info = db($this->table)->where('tel',$data['phone'])->find();
            if(empty($member_info) || $member_info==false){
                return ['status' => 404, 'msg' => '没有查询到改号码信息!'];
            }else{
                $res = db($this->table)->where('tel',$data['phone'])->update(['tel'=>$data['phone'],'password'=>md5($data['pwd']. 'lyxy')]);
                if($res){
                    session('member_info',null);
                    return ['status' => 200, 'msg' => '修改密码成功!'];
                }else{
                    return ['status' => 404, 'msg' => '修改密码失败!'];
                }
            }
        }else{
            $this->assign('title', '更改密码');
            return $this->fetch();
        }

    }

    //发送短信
    public function sendsms(){
        $phone = input('post.tel');
        $login = new Login();
        return $login->send_sms($phone);
    }



    //更换手机号
    public function change()
    {
        $this->assign('title', '更改手机');
        return $this->fetch();
    }
}
