<?php
namespace app\index\controller;

use controller\BasicHome;
use think\Controller;

/**
 * 公开课控制器
 * Class controller
 * @package app\index\controller
 */
class Open extends BasicHome
{
    public function index()
    {
        $this->assign('title','公开课');
        $this->assign('nav','5');
        $this->assign('open',$this->_open(3));
        $this->assign('rows',$this->_open());
        return $this->fetch();
    }

    private function _open($limit=0)
    {
        if ($limit==0){
            $row = db('index_open')->where(['status'=>'1','is_deleted'=>'0'])->order('open_time desc')->select();
        }else{
            $row = db('index_open')->where(['status'=>'1','is_deleted'=>'0'])->order('open_time desc')->limit($limit)->select();
        }
        foreach ($row as &$v){
            $v['teacher_name'] = db('system_user')->where(['id'=>$v['teacher_id']])->value('teacher_name');
            $v['type_name'] = db('course_type')->where(['id'=>$v['type_id']])->value('name');
        }
        return $row;
    }
}
