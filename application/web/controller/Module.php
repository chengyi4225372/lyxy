<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 模块管理控制器
 * Class User
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Module extends BasicAdmin
{

    /**
     * 模块数据表
     * @var string
     */
    public $table = 'degree_module';
    public $degree = 'index_degree';

    /**
     * 模块列表
     */
    public function index()
    {
        $this->title = '模块管理';
//        $this->assign('degree',$this->_degree());
//        print_r($this->_degree());exit;
        $did = $this->request->get('did');
        $db = Db::name($this->table)->where(['is_deleted' => '0','degree_id'=>$did]);
        $get = $this->request->get();
        foreach (['name'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        return parent::_list($db);
    }

    /**
     * 列表数据默认处理
     */
    protected function _data_filter(&$data)
    {
        foreach ($data as &$val){
            $val['degree_name'] = db($this->degree)->where(['id'=>$val['degree_id']])->value('name');
        }
    }

    /**
     * 表单数据默认处理
     * @param array $data
     */
    public function _form_filter(&$data)
    {
    }

    /**
     * 模块添加
     */
    public function add()
    {
        if ($this->request->isGet()) {
            $did = $this->request->get('did');
            $row['degree_name'] = db($this->degree)->where('id', '=', $did)->value('name');
            $row['degree_id'] = db($this->degree)->where('id', '=', $did)->value('id');
//        $this->assign('degree',$this->_degree());
            return view('form', ['vo' => $row]);
        }
        return $this->_form($this->table, 'form');
    }

    /**
     * 模块编辑
     */
    public function edit()
    {
        if ($this->request->isGet()) {
            $id = $this->request->get('id');
            $row = db($this->table)->where('id', '=', $id)->find();
            $row['degree_name'] = db($this->degree)->where('id', '=', $row['degree_id'])->value('name');
            $row['did'] = db($this->degree)->where('id', '=', $row['degree_id'])->value('id');
//            $degree = $this->_degree();
            return view('form', ['vo' => $row]);
        }
        return $this->_form($this->table, 'form');
//        $this->assign('degree',$this->_degree());
    }

    /**
     * 删除模块
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("模块删除成功！", '');
        }
        $this->error("模块删除失败，请稍候再试！");
    }

    /**
     * 模块禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("模块禁用成功！", '');
        }
        $this->error("模块禁用失败，请稍候再试！");
    }

    /**
     * 模块启用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("模块启用成功！", '');
        }
        $this->error("模块启用失败，请稍候再试！");
    }

}
