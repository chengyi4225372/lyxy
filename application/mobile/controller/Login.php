<?php

namespace app\mobile\controller;


use controller\BasicMobile;

/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Login extends BasicMobile {

    public $member = 'member_info';
	/**
	 * 网站入口
	 */
	public function login() {
	    if ($this->request->isPost()){
//	        print_r(input("post."));exit;
            $user = input('post.user');
            $pass = md5(input('post.pass') . 'lyxy');
            $login_ip = getIp();
            if (empty($user)) {
                return ['status' => 404, 'msg' => '请输入用户名!'];
            }
            if (empty($pass)) {
                return ['status' => 404, 'msg' => '请输入密码!'];
            }
            if (!db($this->member)->where('name', $user)->find() && !db($this->member)->where('tel', $user)->find()) {
                return ['status' => 404, 'msg' => '账号不存在!请先注册!'];
            }
            if (db($this->member)->where(array('name' => $user, 'password' => $pass))->find()) {
                $member_info = db($this->member)->where(array('name' => $user, 'password' => $pass))->find();
                session('member_info', $member_info);
                $data['last_login_ip'] = $login_ip;
                $data['last_login_time'] = time();
                db($this->member)->where('id', $member_info['id'])->update($data);
                return ['status' => 200, 'msg' => '登录成功!'];
            } else if (db($this->member)->where(array('tel' => $user, 'password' => $pass))->find()) {
                $member_info = db($this->member)->where(array('tel' => $user, 'password' => $pass))->find();
                session('member_info', $member_info);
                $data['last_login_ip'] = $login_ip;
                $data['last_login_time'] = time();
                db($this->member)->where('id', $member_info['id'])->update($data);
                return ['status' => 200, 'msg' => '登录成功!'];
            } else {
                return ['status' => 404, 'msg' => '用户名或密码错误!请稍候再试!'];
            }

        }
        $this->assign('title', '登录');
		return $this->fetch();
	}

	//手机端注册
    public function register(){
	    return $this->fetch();
    }


    //手机端找回密码


}
