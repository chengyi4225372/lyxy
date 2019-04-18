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
class Chapter extends BasicAdmin
{

    /**
     * 课程章节数据表
     * @var string
     */
    public $table = 'course_chapter';
    public $course = 'index_course';

    /**
     * 课程章节列表
     */
    public function index()
    {
        $this->title = '课程章节管理';
//        $this->assign('course',$this->_course());
//        print_r($this->_course());exit;
        $cid = $this->request->get('cid');
        $db = Db::name($this->table)->where(['is_deleted' => '0','course_id'=>$cid]);
        $get = $this->request->get();
        foreach (['name'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
//        foreach (['course_id'] as $key) {
//            (isset($get[$key]) && $get[$key] !== '') && $db->where($key,'=' ,"{$get[$key]}");
//        }
        return parent::_list($db);
    }

    private function _course()
    {
        return db($this->course)->where(['is_deleted' => '0','status'=>'1'])->select();
    }

    /**
     * 列表数据默认处理
     */
    protected function _data_filter(&$data)
    {
        foreach ($data as &$val){
            $val['course_name'] = db($this->course)->where(['id'=>$val['course_id']])->value('name');
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
            $cid = $this->request->get('cid');
            $row['course_name'] = db($this->course)->where('id', '=', $cid)->value('name');
            $row['course_id'] = db($this->course)->where('id', '=', $cid)->value('id');
//        $this->assign('course',$this->_course());
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
            $row['course_name'] = db($this->course)->where('id', '=', $row['course_id'])->value('name');
//            $course = $this->_course();
            return view('form', ['vo' => $row]);
        }
        return $this->_form($this->table, 'form');
//        $this->assign('course',$this->_course());
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
