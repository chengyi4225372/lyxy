<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 合作企业控制器
 * Class Config
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:05
 */
class Company extends BasicAdmin
{
    /**
     * 当前默认数据模型
     * @var string
     */
    public $table = 'index_page';
    public $company = 'index_company';

    /**
     * 合作企业配置
     */
    public function index()
    {
        $this->title = '合作企业管理';
//        print_r($this->_teacher());exit;
        $get = $this->request->get();
        $db = Db::name($this->company)->where(['is_deleted' => '0']);
        foreach (['name'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        return parent::_list($db);
    }

    protected function _data_filter(&$data)
    {
        foreach ($data as &$val){
//            $val['type_name'] = db($this->table_type)->where(['id'=>$val['type']])->value('name');
//            $val['teacher_name'] = db($this->table_teacher)->where(['id'=>$val['teacher_id']])->value('teacher_name');
        }
    }

    private function _type()
    {
//        return db($this->table_type)->where(['is_deleted' => '0'])->select();
    }

    /**
     * 表单数据默认处理
     * @param array $data
     */
    public function _form_filter(&$data)
    {
    }

    /**
     * 课程添加
     */
    public function add()
    {
        return $this->_form($this->company, 'form');
    }

    /**
     * 课程编辑
     */
    public function edit()
    {
//        if ($this->request->isGet()) {
//            $id = $this->request->get('id');
//            $row = db($this->company)->where('id', '=', $id)->find();
//            return view('form', ['vo' => $row,'type'=>$type,'teacher'=>$teacher]);
//        }
        return $this->_form($this->company, 'form');
    }

    /**
     * 删除课程
     */
    public function del()
    {
        if (DataService::update($this->company)) {
            $this->success("课程删除成功！", '');
        }
        $this->error("课程删除失败，请稍候再试！");
    }

    /**
     * 课程禁用
     */
    public function forbid()
    {
        if (DataService::update($this->company)) {
            $this->success("课程禁用成功！", '');
        }
        $this->error("课程禁用失败，请稍候再试！");
    }

    /**
     * 课程启用
     */
    public function resume()
    {
        if (DataService::update($this->company)) {
            $this->success("课程启用成功！", '');
        }
        $this->error("课程启用失败，请稍候再试！");
    }
}
