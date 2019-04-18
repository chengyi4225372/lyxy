<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 学位课程管理控制器
 * Class User
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Degree extends BasicAdmin
{

    /**
     * 课程数据表
     * @var string
     */
    public $course = 'index_degree';
    public $table_type = 'course_type';
    public $table_teacher = 'system_user';

    /**
     * 课程列表
     */
    public function index()
    {
        $this->title = '学位课程管理';
        $this->assign('type',$this->_type());
//        $this->assign('teacher',$this->_teacher());
//        print_r($this->_teacher());exit;
        $get = $this->request->get();
        $db = Db::name($this->course)->where(['is_deleted' => '0']);
        foreach (['name'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        foreach (['type_id'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->where($key,'=' ,"{$get[$key]}");
        }
        return parent::_list($db);
    }

    protected function _data_filter(&$data)
    {
        foreach ($data as &$val){
            $val['type_name'] = db($this->table_type)->where(['id'=>$val['type_id']])->value('name');
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
            $row['type_name'] = db($this->table_type)->where('id', '=', $row['type_id'])->value('name');
            $type = $this->_type();
            return view('form', ['vo' => $row,'type'=>$type]);
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

    public function download($file_name)
    {
        $file_path=$_SERVER['DOCUMENT_ROOT'].$file_name;
        $fp=fopen($file_path,"r");
        //获取文件大小
        $file_size=filesize($file_path);
        //tp 下载需要的响应头
        header("Content-type: application/octet-stream"); //返回的文件
        header("Accept-Ranges: bytes");   //按照字节大小返回
        header("Accept-Length: $file_size"); //返回文件大小
        header("Content-Disposition: attachment; filename=".$file_name);//这里客户端的弹出对话框，对应的文件名
        //向客户端返回数据
        //设置大小输出
        $buffer=1024;
        //为了下载安全，我们最好做一个文件字节读取计数器
        $file_count=0;
        //判断文件指针是否到了文件结束的位置(读取文件是否结束)
        while(!feof($fp) && ($file_size-$file_count)>0){
            $file_data=fread($fp,$buffer);
            //统计读取多少个字节数
            $file_count+=$buffer;
            //把部分数据返回给浏览器
            echo $file_data;
        }
        //关闭文件
        fclose($fp);
    }
}
