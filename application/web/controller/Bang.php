<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/7
 * Time: 9:54
 */
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 帮助中心
 * Class Auth
 * @package app\web\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:13
 */
class Bang extends BasicAdmin
{
    public $table = 'bang';

    public function index()
    {
        $this->title = '帮助中心管理';
        $get = $this->request->get();
        $db = Db::name($this->table);
        foreach (['name', 'web_url'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode('-', str_replace(' ', '', $get['date']));
            $start = strtotime($start);
            $end = strtotime($end);
            $db->whereBetween('update_time', ["{$start}", "{$end}"]);
        }
        return parent::_list($db);
    }

    /**
     * 添加
     */
    public function add()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 编辑
     */
    public function edit()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 删除
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("删除成功!", '');
        }
        $this->error("删除失败, 请稍候再试!");
    }

    /**
     * 禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("禁用成功!", '');
        }
        $this->error("禁用失败, 请稍候再试!");
    }

    /**
     * 启用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("启用成功!", '');
        }
        $this->error("启用失败, 请稍候再试!");
    }
}