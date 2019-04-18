<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 学位课程套餐管理控制器
 * Class User
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Package extends BasicAdmin
{

    /**
     * 套餐数据表
     * @var string
     */
    public $table = 'degree_package';
    public $degree = 'index_degree';

    /**
     * 套餐列表
     */
    public function index()
    {
        $this->title = '套餐管理';
        $did = $this->request->get('did');
        $db = Db::name($this->table)->where(['is_deleted' => '0','degree_id'=>$did]);
        $get = $this->request->get();
        foreach (['name'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        return parent::_list($db);
    }

    protected function _data_filter(&$data)
    {
        foreach ($data as &$val){
            $val['degree_name'] = db($this->degree)->where(['id'=>$val['degree_id']])->value('name');
        }
    }

    /**
     * 套餐添加
     */
    public function add()
    {
        if ($this->request->isGet()) {
            $did = $this->request->get('did');
            $row['degree_name'] = db($this->degree)->where('id', '=', $did)->value('name');
            $row['degree_id'] = db($this->degree)->where('id', '=', $did)->value('id');
            return view('form', ['vo' => $row]);
        }
        return $this->_form($this->table, 'form');
    }

    /**
     * 套餐编辑
     */
    public function edit()
    {
        if ($this->request->isGet()) {
            $id = $this->request->get('id');
            $row = db($this->table)->where('id', '=', $id)->find();
            $row['degree_name'] = db($this->degree)->where('id', '=', $row['degree_id'])->value('name');
            $row['degree_id'] = db($this->degree)->where('id', '=', $row['degree_id'])->value('id');
//            $course = $this->_course();
            return view('form', ['vo' => $row]);
        }
        return $this->_form($this->table, 'form');
    }

    /**
     * 删除套餐
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("套餐删除成功！", '');
        }
        $this->error("套餐删除失败，请稍候再试！");
    }

    /**
     * 套餐禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("套餐禁用成功！", '');
        }
        $this->error("套餐禁用失败，请稍候再试！");
    }

    /**
     * 套餐启用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("套餐启用成功！", '');
        }
        $this->error("套餐启用失败，请稍候再试！");
    }

}
