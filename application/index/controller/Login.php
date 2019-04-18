<?php

namespace app\index\controller;

use app\geetest\Geetestlib;
use controller\BasicHome;
use think\Controller;

/**
 * 登录控制器
 * Class controller
 * @package app\index\controller
 */
class Login extends BasicHome {
	/**
	 * 默认数据模型
	 * @var string
	 */
	public $member = 'member_info';
	public $captcha_id = 'fdc08005f69534399329a4bc734f8c75'; //极验id
	public $private_key = '8aca04f0c27ccb4a350986b54ccdd49a'; //极验key

	public function index() {
		if (request()->isAjax()) {
			if (request()->isPost()) {
//                print_r(input('post.'));exit;
				$name = input('post.name');
				$pass = md5(input('post.pass') . 'lyxy');
				$login_ip = getIp();
				$challenge = input('post.geetest_challenge');
				$validate = input('post.geetest_validate');
				$seccode = input('post.geetest_seccode');
				if (!db($this->member)->where('name', $name)->find() && !db($this->member)->where('tel', $name)->find()) {
					return ['status' => 404, 'msg' => '账号不存在!请先注册!'];
				}
				if ($this->check_verify($name, $challenge, $validate, $seccode)) {
					if (empty($name)) {
						return ['status' => 404, 'msg' => '请输入用户名!'];
					}
					if (empty($pass)) {
						return ['status' => 404, 'msg' => '请输入密码!'];
					}
					if (db($this->member)->where(array('name' => $name, 'password' => $pass))->find()) {
						$member_info = db($this->member)->where(array('name' => $name, 'password' => $pass))->find();
						session('member_info', $member_info);
						$data['last_login_ip'] = $login_ip;
						$data['last_login_time'] = time();
						db($this->member)->where('id', $member_info['id'])->update($data);
						return ['status' => 200, 'msg' => '登录成功!'];
					} else if (db($this->member)->where(array('tel' => $name, 'password' => $pass))->find()) {
						$member_info = db($this->member)->where(array('tel' => $name, 'password' => $pass))->find();
						session('member_info', $member_info);
						$data['last_login_ip'] = $login_ip;
						$data['last_login_time'] = time();
						db($this->member)->where('id', $member_info['id'])->update($data);
						return ['status' => 200, 'msg' => '登录成功!'];
					} else {
						return ['status' => 404, 'msg' => '用户名或密码错误!请稍候再试!'];
					}
				} else {
					return ['status' => 404, 'msg' => '验证错误!请稍候再试!'];
				}
			}
		}
		return $this->fetch();
	}

	public function regist() {
		if (request()->isAjax()) {
			if (request()->isPost()) {
				$tel = input('post.phone');
				$phone_code = input('post.code');
				$check_phone = '/^0?1[3|4|5|6|7|8][0-9]\d{8}$/';
//                return['status' => 200];
				if (!$tel) {
					return ['status' => 404, 'msg' => '请输入手机号!'];
				}
				if (db($this->member)->where(['tel' => $tel])->find()) {
					return ['status' => 404, 'msg' => '手机号已注册!请直接登录'];
				}
				if (!preg_match($check_phone, $tel)) {
					return ['status' => 404, 'msg' => '请输入正确的手机号!'];
				}
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
//                if (db($this->member)->insert($data)) {
				//                    $id = db($this->member)->getLastInsID();
				//                    $member_info['id'] = $id;
				//
				//                    session('member_info', $member_info);
				return ['status' => 200, 'msg' => '验证成功!', 'data' => $tel];
//                } else {
				////                    return ['status' => 404, 'msg' => '验证成功，请稍候再试!'];
			}
		}
		return $this->fetch();
	}

	public function psd() {
		if (request()->isAjax()) {
			if (request()->isPost()) {
				$tel = input('post.phone');
				$phone_code = input('post.code');
				$check_phone = '/^0?1[3|4|5|6|7|8][0-9]\d{8}$/';
//                return['status' => 200];
				if (!$tel) {
					return ['status' => 404, 'msg' => '请输入手机号!'];
				}
				$find = db($this->member)->where(['tel' => $tel])->find();
				if (empty($find)) {
					return ['status' => 404, 'msg' => '此手机号未注册!请先注册'];
				}
				if (!preg_match($check_phone, $tel)) {
					return ['status' => 404, 'msg' => '请输入正确的手机号!'];
				}
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
				return ['status' => 200, 'msg' => '验证成功!', 'data' => $tel];
//                } else {
				////                    return ['status' => 404, 'msg' => '验证成功，请稍候再试!'];
			}
		}
		return $this->fetch();
	}

	public function change_psd() {
		if (request()->isAjax()) {
			if (request()->isPost()) {
				// print_r(input('post.'));exit;
				$tel = input('post.tel');
				$password = input('post.password');
				$repass = input('post.repsd');
				if (!$tel) {
					return ['status' => 404, 'msg' => '请先验证手机号!'];
				}
				if (!$password) {
					return ['status' => 404, 'msg' => '请输入密码!'];
				}
				if ($repass != $password) {
					return ['status' => 404, 'msg' => '两次密码不一致!'];
				}
				$id = db($this->member)->where(['tel' => $tel])->value('id');
				$data['password'] = md5($password . 'lyxy');
				if (db($this->member)->where('id', $id)->update($data)) {
					return ['status' => 200, 'msg' => '密码修改成功!'];
				} else {
					return ['status' => 404, 'msg' => '密码修改失败，请稍候再试!'];
				}
			}
		}
	}

	public function finish() {
		if (request()->isAjax()) {
			if (request()->isPost()) {
//                print_r(input('post.'));exit;
				$data['name'] = input('post.name');
				$data['tel'] = input('post.tel');
				$password = input('post.password');
				$repass = input('post.repass');
				$data['province'] = input('post.province');
				$data['city'] = input('post.city');
				if (!$data['tel']) {
					return ['status' => 404, 'msg' => '请先验证手机号!'];
				}
				if (!$data['name']) {
					return ['status' => 404, 'msg' => '请输入用户名!'];
				}
				if (db($this->member)->where(['name' => $data['name']])->find()) {
					return ['status' => 404, 'msg' => '用户名已存在!'];
				}
				if (!$password) {
					return ['status' => 404, 'msg' => '请输入密码!'];
				}
				if ($repass != $password) {
					return ['status' => 404, 'msg' => '两次密码不一致!'];
				}
				if (empty($data['city'])) {
					return ['status' => 404, 'msg' => '请选择区域!'];
				}
				$data['password'] = md5($password . 'lyxy');
				$data['last_login_ip'] = getIp();
				$data['last_login_time'] = time();
				$data['create_time'] = time();
				$data['imgurl'] = '/static/index/static/frontend/default.png';
				if (db($this->member)->insert($data)) {
					$id = db($this->member)->getLastInsID();
					$member_info = db($this->member)->where('id', $id)->find();
//                    $member_info['id'] = $id;
					//                    $member_info['name'] = $data['name'];
					session('member_info', $member_info);
					session('sms_code', null);
					session('sms_code_time', null);
					return ['status' => 200, 'msg' => '注册成功!'];
				} else {
					return ['status' => 404, 'msg' => '注册失败，请稍候再试!'];
				}
			}
		}
	}

	public function logout() {
		session('member_info', null);
		$this->redirect('index');
	}

	public function get_verify() {
		if (request()->isAjax()) {
			if (request()->isPost()) {
				// print_r(111);
				// print_r(input('post.'));exit;
				$phone = input('post.phone');
				$challenge = input('post.geetest_challenge');
				$validate = input('post.geetest_validate');
				$seccode = input('post.geetest_seccode');
				if (empty($challenge) || empty($validate) || empty($seccode)) {
					return ['msg' => '请先完成验证!', 'status' => 404];
				}
				if ($this->check_verify($phone, $challenge, $validate, $seccode)) {
					if ($this->check_user($phone)) {
						return ['msg' => '手机号码已注册!请直接登录', 'status' => 404];
					}
					if (empty($phone)) {
						return ['msg' => '手机号码为空，请重新输入', 'status' => 404];
					}
//            return['msg' => '短信已发送', 'status' => 200];
					return $this->smsbao($phone);
				} else {
					return ['msg' => '验证错误!请稍候再试!', 'status' => 404];
				}
			}
		}
	}

	public function psd_verify() {
		if (request()->isAjax()) {
			if (request()->isPost()) {
				// print_r(111);
				// print_r(input('post.'));exit;
				$phone = input('post.phone');
				$challenge = input('post.geetest_challenge');
				$validate = input('post.geetest_validate');
				$seccode = input('post.geetest_seccode');
				if (empty($challenge) || empty($validate) || empty($seccode)) {
					return ['msg' => '请先完成验证!', 'status' => 404];
				}
				if ($this->check_verify($phone, $challenge, $validate, $seccode)) {
					if (!$this->check_user($phone)) {
						return ['msg' => '手机号码未注册!请先注册', 'status' => 404];
					}
					if (empty($phone)) {
						return ['msg' => '手机号码为空，请重新输入', 'status' => 404];
					}
//            return['msg' => '短信已发送', 'status' => 200];
					return $this->smsbao($phone);
				} else {
					return ['msg' => '验证错误!请稍候再试!', 'status' => 404];
				}
			}
		}
	}

	public function smsbao($phone) {
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
				session('sms_code', md5($code));
				session('sms_code_time', time());
				return ['msg' => '短信发送成功', 'status' => 200];
			} else {
				return ['msg' => '短信发送失败', 'status' => 404];
			}
		} else {
			return ['msg' => "请在{$sec}秒后再发送", 'status' => 404];
		}
	}

	//查询用户是否注册
	private function check_user($tel) {
		if (db($this->member)->where('tel', $tel)->count() > 0) {
			return true;
		} else {
			return false;
		}
	}

	public function qrc() {
		$wechat = load_wechat('Extends');
		for ($i = 10; $i < 90; $i++) {
			$qrc = $wechat->getQRCode($i, 1);
			print_r($qrc);
		}

	}

	public function start_captcha() {
		if (request()->isGet()) {
			$GtSdk = new Geetestlib($this->captcha_id, $this->private_key);

			$data = array(
				"user_id" => "test", # 网站用户id
				"client_type" => "web", #web:电脑上的浏览器；h5:手机上的浏览器，
				#包括移动应用内完全内置的web_view；native：通过原生SDK植入APP应用的方式
				"ip_address" => getIp(), # 请在此处传输用户请求验证时所携带的IP
			);

			$status = $GtSdk->pre_process($data, 1);
			session('gtserver', $status);
//            session('user_id',$data['user_id']);
			echo $GtSdk->get_response_str();
		}
	}

	private function check_verify($name, $challenge, $validate, $seccode) {
		$GtSdk = new Geetestlib($this->captcha_id, $this->private_key);
		$data = array(
			"user_id" => $name, # 网站用户id
			"client_type" => "web", #web:电脑上的浏览器；h5:手机上的浏览器，包括移动应用内完全内置的web_view；native：通过原生SDK植入APP应用的方式
			"ip_address" => getIp(), # 请在此处传输用户请求验证时所携带的IP
		);

		if (session('gtserver') == 1) {
			//服务器正常
			$result = $GtSdk->success_validate($challenge, $validate, $seccode, $data);
			if ($result) {
				return true;
			} else {
				return false;
			}
		} else {
			//服务器宕机,走failback模式
			if ($GtSdk->fail_validate($challenge, $validate, $seccode)) {
				return true;
			} else {
				return false;
			}
		}
	}
}