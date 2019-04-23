<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 喜讯管理控制器
 * Class Auth
 * @package app\web\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:13
 */
class Tidings extends BasicAdmin
{
    public $table = 'member_tidings';
    public $index_degree = 'index_degree'; //学位课程

    public function index()
    {
        $this->title = '喜讯管理';
        $get = $this->request->get();
        $db = Db::name($this->table)->where(['is_deleted' => '0']);
        foreach (['name'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
//        if (isset($get['date']) && $get['date'] !== '') {
//            list($start, $end) = explode('-', str_replace(' ', '', $get['date']));
//            $db->whereBetween('update_time', ["{$start}", "{$end}"]);
//        }
        return parent::_list($db);
    }


    //关联学位课程
    protected function _data_filter(&$data)
    {
        foreach ($data as &$val){
            $val['type_name'] = db($this->index_degree)->where(['id'=>$val['de_id']])->value('name');
        }
    }


    /**
     * 喜讯添加
     */
    public function add()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 喜讯编辑
     */
    public function edit()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 喜讯菜单
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("喜讯删除成功!", '');
        }
        $this->error("喜讯删除失败, 请稍候再试!");
    }

    /**
     * 喜讯禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("喜讯禁用成功!", '');
        }
        $this->error("喜讯禁用失败, 请稍候再试!");
    }

    /**
     * 喜讯禁用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("喜讯启用成功!", '');
        }
        $this->error("喜讯启用失败, 请稍候再试!");
    }
}