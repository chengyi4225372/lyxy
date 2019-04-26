<?php

namespace app\alipay\controller;

use alipay\AlipayNotify;
use alipay\AlipaySubmit;
use think\Controller;

/**
 * 支付宝付款服务
 * Class PayService
 * @package service
 * @author Anyon <zoujingli@qq.com>
 * @date 2016/10/25 14:49
 */
class Alipay extends Controller {

	public $alipay_config;
	public $table = "member_course"; //订单
	public $member = "member_info";
    public $coupon = 'index_coupon';
    public $member_coupon = 'member_coupon';

	public function _initialize() {
		$this->alipay_config = [
			/* 支付宝设置 */
			// 收款账号邮箱
			'email' => 'wuchengyx@126.com',
			// 加密key，开通支付宝账户后给予
			'key' => 'g59z9x8i7vdt5i0y7qkg5encrz0bu2af',
			// 合作者ID，支付宝有该配置，开通易宝账户后给予
			'partner' => '2088002972721064',
			//收款支付宝账号，以2088开头由16位纯数字组成的字符串，一般情况下收款账号就是签约账号
			'seller_id' => '2088002972721064',
			//签名方式
			'sign_type' => strtoupper('MD5'),
			//字符编码格式 目前支持utf-8
			'input_charset' => strtolower('utf-8'),
			// 产品类型，无需修改
			'service' => 'create_direct_pay_by_user',
			// 支付类型 ，无需修改
			'payment_type' => '1',
			'cacert' => '/static/index/alipay/cacert.pem',
//            "qr_pay_mode" => 1, //开启扫码支付
			//            "qrcode_width" => 200,//二维码宽度
		];
	}

	public function pay() {
//	    print_r(111);exit;
		if (request()->isPost()) {
			// print_r(input("post."));exit;
			$course = input("post.course");
			$course_type = input("post.course_type");
			$price = input("post.price");
			$coupon = input("post.coupon");
			$pay_type = input("post.pay_type");
			$mid = session("member_info.id");
			$package =input("post.package_id")?input("post.package_id"):'';
			$time = time();
			if (db($this->table)->where(["member_id" => $mid, 'course_id' => $course, 'course_type' => $course_type, 'package_id'=>$package])->find()) {
//                return ['status' => 404, 'msg' => '已购买该课程!请勿重复购买!'];
                if(isMobile()){
                    echo "<script>alert('已购买该课程!请勿重复购买');
                        window.location.href = '" . url('mobile/mycenter/order') . "';</script>";
                }else{
                    echo "<script>alert('已购买该课程!请勿重复购买');
                        window.location.href = '" . url('member/order/index') . "';</script>";
                }
				return false;
			}
			$data['order_code'] = date('YmdHis', $time) . rand(1000, 9999);
			$data['cost'] = $price;
			$data['create_at'] = $time;
			$data['title'] = "乐育学院购买课程";
			$data['member_id'] = $mid;
			$data['course_id'] = $course;
			$data['pay_type'] = $pay_type;
			$data['course_type'] = $course_type;
			$data['package_id'] = $package;
			$data['coupon_id'] = $coupon;
//			print_r($data);exit;
			if (db($this->table)->insert($data)){
			    $coupon_data = array(
			        'use_at' => date('YmdHis', $time),
                    'is_used'=>1,
                    'course_type'=>$course_type,
                    'course_id'=>$course,
                    'order_id'=>db($this->table)->getLastInsID(),
                );
			    db($this->member_coupon)->where('id',$coupon)->update($coupon_data);
                if ($price == 0) {
                    //价格为0时可直接购买
                    $data['is_finish'] = 1;
                    $data['finish_at'] = time();
//                print_r($data);exit;
                    if (db($this->table)->where('order_code', '=', $data['order_code'])->update($data)) {
//                    return ['status' => 200, 'msg' => '购买成功!正在跳转!'];
                        //需要判断是不是手机端
                        isMobile()?$this->redirect("mobile/study/index"):$this->redirect("member/index/study");
                    } else {
//                    return ['status' => 404, 'msg' => '课程购买失败!请稍后再试!'];
                        echo "<script>alert('课程购买失败!请稍后再试')</script>";
                    }
                } else {
                    //付费课程需支付宝验证购买
                    if (!empty($coupon)) { //使用优惠券时
                    }
                    $this->order($data);
                }
            }else{
                echo "<script>alert('课程购买失败!请稍后再试');window.history.back(-1); </script>";
            }
		}
	}

	public function order($data) {
		// print_r($data);
		//        print_r(11);

        $site_url = http_type() . $_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'];
		$dir = dirname($site_url);
		$order['url_notify'] = $dir . url('alipay/alipay/notify_url'); //支付成功异步通知地址
		$order['url_return'] = $dir . url('alipay/alipay/return_url'); //支付成功跳转地址
		$order['show_url'] = $dir . url('index/course/index'); //商品展示地址
		$order['title'] = $data['title'];
		$order['order_no'] = $data['order_code'];
		$order['order_money'] = $data['cost'];
		$order['body'] = "学员购买网站教育类课程"; //商品描述
		$order['goods_type'] = 0; //商品类型  1表示实物类商品，0表示虚拟类商品
		$this->alipay_jump($order);
	}

	/**
	 * 支付宝支付跳转
	 */
	public function alipay_jump($data) {
		print_r("正在跳转支付宝...");
		header("Content-type: text/html; charset=utf-8");
		#获取支付配置信息
		$alipay_config = $this->alipay_config;
//        $alipay_config['email'] = $alipay_config['email'];
		//        $alipay_config['key'] = $alipay_config['key'];
		//        $alipay_config['partner'] = $alipay_config['partner'];
		//        $alipay_config['seller_id'] = $alipay_config['seller_id'];
		//构造要请求的参数数组，无需改动
		$parameter = array(
			"service" => $alipay_config['service'],
			"partner" => $alipay_config['partner'],
			"seller_id" => $alipay_config['seller_id'],
			"payment_type" => $alipay_config['payment_type'],
			"notify_url" => $data['url_notify'],
			"return_url" => $data['url_return'],
			"_input_charset" => $alipay_config['input_charset'],
			"out_trade_no" => $data['order_no'],
			"subject" => $data['title'],
			"total_fee" => $data['order_money'],
			"show_url" => $data['show_url'],
			"goods_type" => $data['goods_type'],
			//"enable_paymethod"=>"directPay^bankPay^cartoon^cash",
			//"exter_invoke_ip"=>  getIp(),
//			"app_pay" => "Y",//启用此参数能唤起钱包APP支付宝
			"body" => $data['body'],
			//其他业务参数根据在线开发文档，添加参数.文档地址:https://doc.open.alipay.com/doc2/detail.htm?spm=a219a.7629140.0.0.2Z6TSk&treeId=60&articleId=103693&docType=1
			//如"参数名"    => "参数值"   注：上一个参数末尾需要“,”逗号。
		);
		if(isMobile()){
            $parameter['app_pay'] = 'Y';
        }
//        print_r($parameter);exit;
		//建立请求
		$alipaySubmit = new AlipaySubmit($alipay_config);
		$html_text = $alipaySubmit->buildRequestForm($parameter, "get", "确认");
		echo $html_text;
	}

	public function notify_url() {
		/*         *
			         * 功能：支付宝服务器异步通知页面
			         * 版本：3.3
			         * 日期：2012-07-23
			         * 说明：
			         * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
			         * 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。

			         * ************************页面功能说明*************************
			         * 创建该页面文件时，请留心该页面文件中无任何HTML代码及空格。
			         * 该页面不能在本机电脑测试，请到服务器上做测试。请确保外部可以访问该页面。
			         * 该页面调试工具请使用写文本函数logResult，该函数已被默认关闭，见alipay_notify_class.php中的函数verifyNotify
			         * 如果没有收到该页面返回的 success 信息，支付宝会在24小时内按一定的时间策略重发通知
		*/

		$alipay_config = $this->alipay_config;
		//计算得出通知验证结果
		$alipayNotify = new AlipayNotify($alipay_config);
		$verify_result = $alipayNotify->verifyNotify();

		if ($verify_result) {
//验证成功
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//请在这里加上商户的业务逻辑程序代
			//——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
			//获取支付宝的通知返回参数，可参考技术文档中服务器异步通知参数列表
			//商户订单号
			$out_trade_no = $_POST['out_trade_no'];

			//支付宝交易号
			$trade_no = $_POST['trade_no'];

			//交易状态
			$trade_status = $_POST['trade_status'];

			//付款时间
			$gmt_payment = $_POST['gmt_payment'];

			//            file_put_contents('./log.txt', serialize($_POST) . "\n", FILE_APPEND); //测试写入文件
			if ($_POST['trade_status'] == 'TRADE_FINISHED') {
				//判断该笔订单是否在商户网站中已经做过处理
				//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
				//如果有做过处理，不执行商户的业务程序
				//注意：
				//退款日期超过可退款期限后（如三个月可退款），支付宝系统发送该交易状态通知
				//调试用，写文本函数记录程序运行情况是否正常
				//logResult("这里写入想要调试的代码变量值，或其他运行的结果记录");
			} else if ($_POST['trade_status'] == 'TRADE_SUCCESS') {
				//判断该笔订单是否在商户网站中已经做过处理
				//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
				//如果有做过处理，不执行商户的业务程序
				//注意：
				//付款完成后，支付宝系统发送该交易状态通知
				//调试用，写文本函数记录程序运行情况是否正常
				//logResult("这里写入想要调试的代码变量值，或其他运行的结果记录");
				//修改数据库订单状态
				$data['is_finish'] = 1;
				$data['order_code'] = $trade_no;
				$data['finish_at'] = strtotime($gmt_payment);
				if (db($this->table)->where('order_code', '=', $out_trade_no)->update($data)) {
					//file_put_contents('./log.txt', serialize($a) . "\n", FILE_APPEND); //测试写入文件
					echo "success"; //请不要修改或删除
				}
			}

			//——请根据您的业务逻辑来编写程序（以上代码仅作参考）——
			//            echo "success";  //请不要修改或删除
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		} else {
			//            file_put_contents('./log_error.txt', serialize($_POST) . "\n", FILE_APPEND); //测试写入文件
			//验证失败
			echo "fail";

			//调试用，写文本函数记录程序运行情况是否正常
			//logResult("这里写入想要调试的代码变量值，或其他运行的结果记录");
		}
	}

	public function return_url() {
		/*         *
			         * 功能：支付宝页面跳转同步通知页面
			         * 版本：3.3
			         * 日期：2012-07-23
			         * 说明：
			         * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
			         * 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。

			         * ************************页面功能说明*************************
			         * 该页面可在本机电脑测试
			         * 可放入HTML等美化页面的代码、商户业务逻辑程序代码
			         * 该页面可以使用PHP开发工具调试，也可以使用写文本函数logResult，该函数已被默认关闭，见alipay_notify_class.php中的函数verifyReturn
		*/

		//判断异步通知修改数据库订单状态是否成功
		//        if (db($this->table)->where('order_code', '=', $_GET['out_trade_no'])->value('is_finish')) {
		//            return ['status' => 200, 'msg' => '购买成功!正在跳转!'];
		//        }
		$alipay_config = $this->alipay_config;
		//计算得出通知验证结果
		$alipayNotify = new AlipayNotify($alipay_config);
		$verify_result = $alipayNotify->verifyReturn();
		if ($verify_result) {
//验证成功
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//请在这里加上商户的业务逻辑程序代码
			//——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
			//获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表
			//商户订单号
			$out_trade_no = $_GET['out_trade_no'];

			//支付宝交易号
			$trade_no = $_GET['trade_no'];

			//交易状态
			$trade_status = $_GET['trade_status'];
                           
			if ($_GET['trade_status'] == 'TRADE_FINISHED' || $_GET['trade_status'] == 'TRADE_SUCCESS') {
				//判断该笔订单是否在商户网站中已经做过处理
				//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
				//如果有做过处理，不执行商户的业务程序
				//异步通知修改订单状态未成功下面执行修改
				$data['is_finish'] = 1;
				$data['order_code'] = $trade_no;
				$data['finish_at'] = time();
				if (db($this->table)->where('order_code', '=', $out_trade_no)->update($data)) {
                    $c_type = db($this->table)->where('order_code', '=', $out_trade_no)->value('course_type');
                   session('c_type',$c_type);
				$this->redirect("member/index/study");
                                 exit;
				}
			} else {
               return ['status' => 401, 'msg' => "验证错误!错误代码:{$_GET['trade_status']}"];
                session('c_type',null);
$this->redirect("member/index/study");
                                 exit;
				echo "验证错误!错误代码:{$_GET['trade_status']}";

			}

			//echo "验证成功<br />";
			//——请根据您的业务逻辑来编写程序（以上代码仅作参考）——
		} else {
			//验证失败
			//如要调试，请看alipay_notify.php页面的verifyReturn函数
			//            return ['status' => 404, 'msg' => "验证失败!请稍后重试"];
            session('c_type',null);
			echo "<script>alert('验证失败!请稍后重试')</script>";
		}
$this->redirect("member/index/study");
                                 exit;
	}

}