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

	//发送 短信
	public function send_sms(){
	    $phone = input('post.tel');
        if (session('reg_sms_time')) {
            $time = time() - session('reg_sms_time');
        } else {
            $time = 0;
        }
        $sec = 120 - $time;
        if ($time >= 120 || session('reg_sms_time') == '') {
            // -1  没有该用户账户,-2  接口密钥不正确 [查看密钥]不是账户登陆密码,-21 MD5接口密钥加密不正确
            // -3  短信数量不足,-11 该用户被禁用,-14 短信内容出现非法字符,-4  手机号格式不正确,-41 手机号码为空
            // -42 短信内容为空,-51 短信签名格式不正确,接口签名格式为：【签名内容】,-52 短信签名太长
            // 建议签名10个字符以内,-6  IP限制,大于0 短信发送数量
            $smsapi = "http://utf8.api.smschinese.cn/";
            $user = 'wilson007'; //短信平台帐号
            $pass = 'd41d8cd98f00b204e980'; //短信平台密码
            $code = rand(1234, 9999);
            $content = sysconf('sms_prefix') . "您的验证码是{$code},15分钟内有效.若非本人操作请忽略此消息"; //要发送的短信内容
            $sendurl = $smsapi . "?Uid=" . $user . "&Key=" . $pass . "&smsMob=" . $phone . "&smsText=" . $content;
            $result = file_get_contents($sendurl);
            if ($result == -4) {
                return ['msg' => '手机号码不正确', 'status' => 404];
            }
            session('reg_sms_time', time());
            if ($result >= 0) {
                session('sms_code', md5($code)); //短信验证码
                session('sms_code_time', time()); //发送短信验证码时间
                return ['msg' => '短信发送成功', 'status' => 200];
            } else {
                return ['msg' => '短信发送失败', 'status' => 404];
            }
        } else {
            return ['msg' => "请在{$sec}秒后再发送", 'status' => 404];
        }

    }


	//手机端注册 和 登陆
    public function register()
    {
        if (request()->isAjax()) {
            if (request()->isPost()) {
                $tel = input('post.phone');
                $phone_code = input('post.code');
                //使用手机号登录
                //3. 对比短信验证码
                if (!$phone_code) {
                    return ['status' => 404, 'msg' => '请输入手机验证码!'];
                } else {
                    if (time() - session('sms_code_time') > 900) {
                        session('sms_code', null);
                        session('sms_code_time', null);
                        return ['status' => 404, 'msg' => '手机验证码已失效!'];
                    }
                    if (md5($phone_code) != session('sms_code')) {
                        return ['status' => 404, 'msg' => '手机验证码错误!'];
                    }
                }
                    //2.没有注册的 直接用手机好登陆 存入member_info
                    $member_info=db($this->member)->where('tel',$tel)->find();
                    if(empty($member_info)){
                        $user_id = db($this->member)->getLastInsID(['tel'=>$member_info]);
                        $member_info = db($this->member)->where('id',$user_id)->find();
                        session('member_info',$member_info);
                        return ['status' => 200, 'msg' => '登陆成功！'];
                    }else{
                        //1.已经有的就查询出来 存入session
                        session('member_info',$member_info);
                        return ['status' => 200, 'msg' => '登陆成功！'];
                    }

                }
            } else {
                $this->assign('title', '手机号快捷登录(注册)');
                return $this->fetch();
            }


    }





}
