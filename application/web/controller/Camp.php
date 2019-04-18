<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 七天课程管理控制器
 * Class User
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Camp extends BasicAdmin
{

    /**
     * 课程数据表
     * @var string
     */
    public $course = 'index_camp';
    public $table_type = 'course_type';
    public $table_teacher = 'system_user';

    /**
     * 课程列表
     */
    public function index()
    {
        $this->title = '七天课程管理';
        $this->assign('type',$this->_type());
        $this->assign('teacher',$this->_teacher());
//        print_r($this->_teacher());exit;
        $get = $this->request->get();
        $db = Db::name($this->course)->where(['is_deleted' => '0']);
        foreach (['name'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        foreach (['teacher_id','type_id'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->where($key,'=' ,"{$get[$key]}");
        }
        return parent::_list($db);
    }

    protected function _data_filter(&$data)
    {
        foreach ($data as &$val){
            $val['type_name'] = db($this->table_type)->where(['id'=>$val['type_id']])->value('name');
            $val['teacher_name'] = db($this->table_teacher)->where(['id'=>$val['teacher_id']])->value('teacher_name');
        }
    }

    private function _type()
    {
        return db($this->table_type)->where(['is_deleted' => '0','status'=>'1'])->select();
    }

    private function _teacher()
    {
        return db($this->table_teacher)->where(['is_deleted' => '0','is_teacher'=>'1','status'=>'1'])->select();
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
        $this->assign('type',$this->_type());
        $this->assign('teacher',$this->_teacher());
        return $this->_form($this->course, 'form');
    }

    /**
     * 课程编辑
     */
    public function edit()
    {
        if ($this->request->isGet()) {
            $id = $this->request->get('id');
            $row = db($this->course)->where('id', '=', $id)->find();
            $row['teacher_name'] = db($this->table_teacher)->where('id', '=', $row['teacher_id'])->value('teacher_name');
            $row['type_name'] = db($this->table_type)->where('id', '=', $row['type_id'])->value('name');
            $type = $this->_type();
            $teacher = $this->_teacher();
            return view('form', ['vo' => $row,'type'=>$type,'teacher'=>$teacher]);
        }
        return $this->_form($this->course, 'form');
    }

    /**
     * 删除课程
     */
    public function del()
    {
        if (DataService::update($this->course)) {
            $this->success("课程删除成功！", '');
        }
        $this->error("课程删除失败，请稍候再试！");
    }

    /**
     * 课程禁用
     */
    public function forbid()
    {
        if (DataService::update($this->course)) {
            $this->success("课程禁用成功！", '');
        }
        $this->error("课程禁用失败，请稍候再试！");
    }

    /**
     * 课程启用
     */
    public function resume()
    {
        if (DataService::update($this->course)) {
            $this->success("课程启用成功！", '');
        }
        $this->error("课程启用失败，请稍候再试！");
    }
}
