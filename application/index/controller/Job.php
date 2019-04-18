<?php
namespace app\index\controller;

use think\Controller;

/**
 * 就业喜报控制器
 * Class controller
 * @package app\index\controller
 */
class Job extends Controller
{
    public function index()
    {
        $this->assign('title','轻课');
        $this->assign('nav','8');
        $data = db('index_job')->find();
        $this->assign('data',$data);
        $this->assign('team', $this->_team());
        return $this->fetch();
    }

    public function qrc()
    {
        $wechat = load_wechat('Extends');
        for ($i = 10; $i < 90; $i++) {
            $qrc = $wechat->getQRCode($i, 1);
            print_r($qrc);
        }

    }

    private function _team() {
        return db('system_user')->where(['is_teacher' => 1, 'is_deleted' => 0, 'status' => 1])->order('sort asc')->limit(6)->select();
    }

}