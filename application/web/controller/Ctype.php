<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 课程类别管理控制器
 * Class User
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Ctype extends BasicAdmin
{

    /**
     * 课程类别数据表
     * @var string
     */
    public $type = 'course_type';

    /**
     * 课程类别列表
     */
    public function index()
    {
        $this->title = '课程类别管理';
        $get = $this->request->get();
        $db = Db::name($this->type)->where(['is_deleted' => '0']);
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
    }

    /**
     * 表单数据默认处理
     * @param array $data
     */
    public function _form_filter(&$data)
    {
    }

    /**
     * 课程类别添加
     */
    public function add()
    {
        return $this->_form($this->type, 'form');
    }

    /**
     * 课程类别编辑
     */
    public function edit()
    {
        return $this->_form($this->type, 'form');
    }

    /**
     * 删除课程类别
     */
    public function del()
    {
        if (DataService::update($this->type)) {
            $this->success("课程类别删除成功！", '');
        }
        $this->error("课程类别删除失败，请稍候再试！");
    }

    /**
     * 课程类别禁用
     */
    public function forbid()
    {
        if (DataService::update($this->type)) {
            $this->success("课程类别禁用成功！", '');
        }
        $this->error("课程类别禁用失败，请稍候再试！");
    }

    /**
     * 课程类别启用
     */
    public function resume()
    {
        if (DataService::update($this->type)) {
            $this->success("课程类别启用成功！", '');
        }
        $this->error("课程类别启用失败，请稍候再试！");
    }

}
