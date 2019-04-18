<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 留言管理控制器
 * Class Auth
 * @package app\web\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:13
 */
class Msg extends BasicAdmin
{
    public $table = 'index_msg';

    public function index()
    {
        $this->title = '留言管理';
        $get = $this->request->get();
        $db = Db::name($this->table)->where(['is_deleted' => '0']);
        foreach (['tel'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode('-', str_replace(' ', '', $get['date']));
            $start = strtotime($start);
            $end = strtotime($end);
            $db->whereBetween('create_time', ["{$start}", "{$end}"]);
        }
        return parent::_list($db);
    }

    protected function _data_filter(&$data)
    {
        foreach ($data as &$val) {
            $val['create_time'] = date('Y-m-d H:i:s',"{$val['create_time']}");
//            $data[$key]['district'] = Db::name($this->district)->where('id', '=', $val['did'])->value('name');
        }
    }

    /**
     * 留言查看
     */
    public function detail()
    {
        if (request()->isAjax()) {
            if (request()->isPost()) {
                $id = input("post.id");
                $msg = db($this->table)->where(["id"=>$id])->value("msg");
                if (!empty($msg)){
                    return ['status' => 200, 'msg' => $msg];
                }
            }
        }
//        return $this->_form($this->table, 'form');
    }

    /**
     * 留言删除
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("留言删除成功!", '');
        }
        $this->error("留言删除失败, 请稍候再试!");
    }

    /**
     * 留言禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("留言禁用成功!", '');
        }
        $this->error("留言禁用失败, 请稍候再试!");
    }

    /**
     * 留言启用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("留言启用成功!", '');
        }
        $this->error("留言启用失败, 请稍候再试!");
    }
}