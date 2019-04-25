<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 常见问题管理控制器
 * Class Auth
 * @package app\web\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:13
 */
class Problem extends BasicAdmin
{
    public $table = 'problem';
    //public $table_course = 'index_course';
    public $table_degree = 'index_degree'; //学位课程表

    public function index()
    {
        $this->title = '常见问题管理';
        $get = $this->request->get();
        $db = Db::name($this->table)->where(['is_deleted' => '0']);
        foreach (['question'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        foreach (['course_type'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->where($key,'=', "{$get[$key]}");
        }
//        if (isset($get['date']) && $get['date'] !== '') {
//            list($start, $end) = explode('-', str_replace(' ', '', $get['date']));
//            $db->whereBetween('update_time', ["{$start}", "{$end}"]);
//        }
        return parent::_list($db);
    }


    //关联课程类型
    protected function _data_filter(&$data)
    {
        foreach ($data as &$val){
            $val['type_name'] = db($this->table_degree)->where(['id'=>$val['degree_id']])->value('name');
        }
    }




    // 免费课程
    public function _course()
    {
        return db($this->table_degree)->field('id,name')->where(['is_deleted'=>0,'status'=>1])->select();
    }

    /**
     * 常见问题添加
     */
    public function add()
    {
        $this->assign('course',$this->_course());
        return $this->_form($this->table, 'form');
    }

    /**
     * 常见问题编辑
     */
    public function edit()
    {
        $this->assign('course',$this->_course());
        return $this->_form($this->table, 'form');
    }

    /**
     * 常见问题菜单
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("常见问题删除成功!", '');
        }
        $this->error("常见问题删除失败, 请稍候再试!");
    }

    /**
     * 常见问题禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("常见问题禁用成功!", '');
        }
        $this->error("常见问题禁用失败, 请稍候再试!");
    }

    /**
     * 常见问题禁用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("常见问题启用成功!", '');
        }
        $this->error("常见问题启用失败, 请稍候再试!");
    }
}