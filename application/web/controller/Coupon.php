<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 优惠券管理控制器
 * Class User
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Coupon extends BasicAdmin
{

    /**
     * 优惠券数据表
     * @var string
     */
    public $table = 'index_coupon';
    public $chapter = 'degree_chapter';
    public $module = 'degree_module';
    public $degree = 'index_degree';

    /**
     * 优惠券列表
     */
    public function index()
    {
        $this->title = '优惠券管理';
        $db = Db::name($this->table)->where(['is_deleted' => '0']);
        $get = $this->request->get();
        foreach (['name'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
//        foreach (['chapter_id'] as $key) {
//            (isset($get[$key]) && $get[$key] !== '') && $db->where($key,'=' ,"{$get[$key]}");
//        }
        return parent::_list($db);
    }

    protected function _data_filter(&$data)
    {
        foreach ($data as &$val){
            switch ($val['course_type']){
                case 1:
                    $val['course_type'] = '免费课程';
                    break;
                case 2:
                    $val['course_type'] = '学位课程';
                    break;
                case 3:
                    $val['course_type'] = '七天课程';
                    break;
                default:
                    $val['course_type'] = '不限';
                    break;
            }
//            $val['create_at'] = date('Y-m-d H:i:s',$val['create_at']);
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
     * 优惠券添加
     */
    public function add()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 优惠券编辑
     */
    public function edit()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 删除优惠券
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("优惠券删除成功！", '');
        }
        $this->error("优惠券删除失败，请稍候再试！");
    }

    /**
     * 优惠券禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("优惠券禁用成功！", '');
        }
        $this->error("优惠券禁用失败，请稍候再试！");
    }

    /**
     * 优惠券启用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("优惠券启用成功！", '');
        }
        $this->error("优惠券启用失败，请稍候再试！");
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
