<?php

namespace app\mobile\controller;


use controller\BasicMobile;

/**
 * 网站入口控制器
 * Class Index
 * @package app\index\controller
 */
class Video extends BasicMobile {
	/**
	 * 网站入口
	 */
	public function index() {
		return $this->fetch();
	}
}
