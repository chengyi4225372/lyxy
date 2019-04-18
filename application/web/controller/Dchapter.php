<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 课程章节管理控制器
 * Class User
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Dchapter extends BasicAdmin
{

    /**
     * 课程章节数据表
     * @var string
     */
    public $table = 'degree_chapter';
    public $module = 'degree_module';
    public $degree = 'index_degree';

    /**
     * 课程章节列表
     */
    public function index()
    {
        $this->title = '课程章节管理';
        $dmid = $this->request->get('dmid');
        $this->assign('module',$this->_module());
        $db = Db::name($this->table)->where(['is_deleted' => '0','module_id'=>$dmid]);
        $get = $this->request->get();
        foreach (['name'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        foreach (['module_id'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->where($key,'=' ,"{$get[$key]}");
        }
        return parent::_list($db);
    }

    private function _module()
    {
        return db($this->module)->where(['is_deleted' => '0','status'=>'1'])->select();
    }

    /**
     * 列表数据默认处理
     */
    protected function _data_filter(&$data)
    {
        $did = $this->request->get('did');
        foreach ($data as &$val){
            $val['module_name'] = db($this->module)->where(['id'=>$val['module_id']])->value('name');
            $val['degree_name'] = db($this->degree)->where(['id'=>$did])->value('name');
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
     * 课程章节添加
     */
    public function add()
    {
        if ($this->request->isGet()) {
            $dmid = $this->request->get('dmid');
            $row['module_name'] = db($this->module)->where('id', '=', $dmid)->value('name');
            $row['module_id'] = db($this->module)->where('id', '=', $dmid)->value('id');
//        $this->assign('module',$this->_module());
            return view('form', ['vo' => $row]);
        }
        return $this->_form($this->table, 'form');
    }

    /**
     * 课程章节编辑
     */
    public function edit()
    {
        if ($this->request->isGet()) {
            $id = $this->request->get('id');
            $row = db($this->table)->where('id', '=', $id)->find();
            $row['module_name'] = db($this->module)->where('id', '=', $row['module_id'])->value('name');
//            $module = $this->_module();
            return view('form', ['vo' => $row]);
        }
        return $this->_form($this->table, 'form');
//        $this->assign('module',$this->_module());
    }

    /**
     * 删除课程章节
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("课程章节删除成功！", '');
        }
        $this->error("课程章节删除失败，请稍候再试！");
    }

    /**
     * 课程章节禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("课程章节禁用成功！", '');
        }
        $this->error("课程章节禁用失败，请稍候再试！");
    }

    /**
     * 课程章节启用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("课程章节启用成功！", '');
        }
        $this->error("课程章节启用失败，请稍候再试！");
    }

}
