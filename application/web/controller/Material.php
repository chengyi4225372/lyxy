<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 教材管理控制器
 * Class Auth
 * @package app\web\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:13
 */
class Material extends BasicAdmin
{
    public $table = 'index_material';
    public $table_type = 'course_type';

    public function index()
    {
        $this->title = '教材管理';
        $this->assign('type',$this->_type());
        $get = $this->request->get();
        $db = Db::name($this->table)->where(['is_deleted' => '0']);
        foreach (['name'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        foreach (['type_id'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->where($key,'=' ,"{$get[$key]}");
        }
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode('-', str_replace(' ', '', $get['date']));
//            $start = strtotime($start);
//            $end = strtotime($end);
            $db->whereBetween('create_time', ["{$start}", "{$end}"]);
        }
        return parent::_list($db);
    }

    protected function _data_filter(&$data)
    {
        foreach ($data as &$val) {
            $val['type_name'] = db($this->table_type)->where(['id'=>$val['type_id']])->value('name');
//            $val['create_time'] = date('Y-m-d H:i:s',"{$val['create_time']}");
        }
    }

    private function _type()
    {
        return db($this->table_type)->where(['is_deleted' => '0','status'=>'1'])->select();
    }

    /**
     * 教材添加
     */
    public function add()
    {
        $this->assign('type',$this->_type());
        return $this->_form($this->table, 'form');
    }

    /**
     * 教材编辑
     */
    public function edit()
    {
        $this->assign('type',$this->_type());
        return $this->_form($this->table, 'form');
    }

    /**
     * 教材删除
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("教材删除成功!", '');
        }
        $this->error("教材删除失败, 请稍候再试!");
    }

    /**
     * 教材禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("教材禁用成功!", '');
        }
        $this->error("教材禁用失败, 请稍候再试!");
    }

    /**
     * 教材启用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("教材启用成功!", '');
        }
        $this->error("教材启用失败, 请稍候再试!");
    }
}