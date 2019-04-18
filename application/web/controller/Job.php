<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/22
 * Time: 16:35
 */
/**
 * 轻课管理控制器
 * Class User
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */

namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;


class Job extends BasicAdmin
{
    /**
     * 当前默认数据模型
     * @var string
     */
    public $table = 'index_job';
   // public $company = '';

    /**
     * 合作企业配置
     */
    public function index()
    {
        $this->title = '轻课管理';
//        print_r($this->_teacher());exit;
        $get = $this->request->get();
        $db = Db::name($this->table);
        foreach (['name'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        return parent::_list($db);
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
        return $this->_form($this->table, 'form');
    }

    /**
     * 课程编辑
     */
    public function edit()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 删除课程
     */
    public function del()
    {
        if (DataService::update($this->table)) {
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