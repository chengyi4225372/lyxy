<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 轮播图管理控制器
 * Class Auth
 * @package app\web\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:13
 */
class Banner extends BasicAdmin
{
    public $table = 'index_banner';

    public function index()
    {
        $this->title = '轮播图管理';
        $get = $this->request->get();
        $db = Db::name($this->table)->where(['is_deleted' => '0']);
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
     * 轮播图添加
     */
    public function add()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 轮播图编辑
     */
    public function edit()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 轮播图菜单
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("轮播图删除成功!", '');
        }
        $this->error("轮播图删除失败, 请稍候再试!");
    }

    /**
     * 轮播图禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("轮播图禁用成功!", '');
        }
        $this->error("轮播图禁用失败, 请稍候再试!");
    }

    /**
     * 轮播图禁用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("轮播图启用成功!", '');
        }
        $this->error("轮播图启用失败, 请稍候再试!");
    }
}