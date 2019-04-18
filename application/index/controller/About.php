<?php
namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Request;

/**
 * 关于我们控制器
 * Class controller
 * @package app\index\controller
 */
class About extends Controller
{
    public function index()
    {
        $this->assign('title','乐育学院的故事');
        $this->assign('nav','6');
        $this->assign('team',$this->_team());
        return $this->fetch();
    }


    public function bangzhu(){
  
      if(request()->isGet()){
            $id = input('get.id','1');
            $info =Db::table('bang')->where('id',$id)->value('content');
        }
 
        $data =Db::table('bang')->field('id,title,content')->select();
        $this->assign('title','帮助中心');
        $this->assign('nav','1');
        $this->assign('team',$this->_team());
        $this->assign('data',$data);
      //$this->assign('info',$info);
        return $this->fetch();
    }


    private function _team()
    {
        return db('system_user')->where(['is_teacher'=>1,'is_deleted'=>0,'status'=>1])->limit(6)->select();
    }

}