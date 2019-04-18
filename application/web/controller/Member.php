<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 前台学员管理控制器
 * Class User
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Member extends BasicAdmin
{

    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'member_info';

    /**
     * 学员列表
     */
    public function index()
    {
        $this->title = '学员管理';
        $get = $this->request->get();
        $db = Db::name($this->table)->where(['is_deleted' => '0']);
        foreach ($db as &$val){
            $val['last_login_time'] = strtotime("{$val['last_login_time']}");
            $val['create_time'] = strtotime("{$val['create_time']}");
        }
        foreach (['real_name', 'tel'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode('-', str_replace(' ', '', $get['date']));
            $start = strtotime($start);
            $end = strtotime($end);
            $db->whereBetween('last_login_time', ["{$start}", "{$end}"]);
        }
        return parent::_list($db);
    }

    protected function _data_filter(&$data)
    {
        foreach ($data as &$val) {
            if ($val['last_login_time']&&$val['create_time']){
                $val['last_login_time'] = date('Y-m-d H:i:s',"{$val['last_login_time']}");
                $val['create_time'] = date('Y-m-d H:i:s',"{$val['create_time']}");
            }
//            $data[$key]['district'] = Db::name($this->district)->where('id', '=', $val['did'])->value('name');
        }
    }

    /**
     * 表单数据默认处理
     * @param array $data
     */
    public function _form_filter(&$data)
    {
        if ($this->request->isPost()) {
            if (isset($data['authorize']) && is_array($data['authorize'])) {
                $data['authorize'] = join(',', $data['authorize']);
            }
            if (isset($data['id'])) {
                unset($data['name']);
            } elseif (Db::name($this->table)->where(['name' => $data['name']])->count() > 0) {
                $this->error('用户账号已经存在，请使用其它账号！');
            }
        }
    }

    /**
     * 授权管理
     * @return array|string
     */
    public function auth()
    {
        return $this->_form($this->table, 'auth');
    }

    /**
     * 用户添加
     */
    public function add()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 用户编辑
     */
    public function edit()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 用户密码修改
     */
    public function pass()
    {
        if ($this->request->isGet()) {
            $this->assign('verify', false);
            return $this->_form($this->table, 'pass');
        }
        $post = $this->request->post();
        if ($post['password'] !== $post['repassword']) {
            $this->error('两次输入的密码不一致！');
        }
        $data = ['id' => $post['id'], 'password' => md5($post['password'])];
        if (DataService::save($this->table, $data, 'id')) {
            $this->success('密码修改成功，下次请使用新密码登录！', '');
        }
        $this->error('密码修改失败，请稍候再试！');
    }

    /**
     * 删除用户
     */
    public function del()
    {
        if (in_array('10000', explode(',', $this->request->post('id')))) {
            $this->error('系统超级账号禁止删除！');
        }
        if (DataService::update($this->table)) {
            $this->success("用户删除成功！", '');
        }
        $this->error("用户删除失败，请稍候再试！");
    }

    /**
     * 用户禁用
     */
    public function forbid()
    {
        if (in_array('10000', explode(',', $this->request->post('id')))) {
            $this->error('系统超级账号禁止操作！');
        }
        if (DataService::update($this->table)) {
            $this->success("用户禁用成功！", '');
        }
        $this->error("用户禁用失败，请稍候再试！");
    }

    /**
     * 用户禁用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("用户启用成功！", '');
        }
        $this->error("用户启用失败，请稍候再试！");
    }

    /**
     * 导出Excel
     */
    public function out()
    {

        //导出
        $path = dirname(__FILE__); //找到当前脚本所在路径
        vendor("PHPExcel.PHPExcel.PHPExcel");
        vendor("PHPExcel.PHPExcel.Writer.IWriter");
        vendor("PHPExcel.PHPExcel.Writer.Abstract");
        vendor("PHPExcel.PHPExcel.Writer.Excel5");
        vendor("PHPExcel.PHPExcel.Writer.Excel2007");
        vendor("PHPExcel.PHPExcel.IOFactory");
        $objPHPExcel = new \PHPExcel();
        $objWriter = new \PHPExcel_Writer_Excel5($objPHPExcel);
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);

        //获取上月起始和结束时间
        $begin_time = strtotime(date('Y-m-01 00:00:00',strtotime('-1 month')));
        $end_time = strtotime(date("Y-m-d 23:59:59", strtotime(-date('d').'day')));

        // 实例化完了之后就先把数据库里面的数据查出来
        $sql = db($this->table)->whereBetween('create_time',"{$begin_time},{$end_time}")->select();

        // 设置表头信息
        $objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A1', 'ID')
            ->setCellValue('B1', '姓名')
            ->setCellValue('C1', '省份')
            ->setCellValue('D1', '市区')
            ->setCellValue('E1', '账号创建时间')
            ->setCellValue('F1', '最近登录时间')
            ->setCellValue('G1', '最近登录IP')
            ->setCellValue('H1', '学前岗位')
            ->setCellValue('I1', '工作地点')
            ->setCellValue('J1', '目前岗位')
            ->setCellValue('K1', '薪资变化');

        /*--------------开始从数据库提取信息插入Excel表中------------------*/

        $i=2;  //定义一个i变量，目的是在循环输出数据是控制行数
        $count = count($sql);  //计算有多少条数据
        for ($i = 2; $i <= $count+1; $i++) {
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $sql[$i-2]['real_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $sql[$i-2]['tel']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $sql[$i-2]['province']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $sql[$i-2]['city']);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, date('Y-m-d H:i:s',$sql[$i-2]['create_time']));
            $objPHPExcel->getActiveSheet()->setCellValue('F' . $i, date('Y-m-d H:i:s',$sql[$i-2]['last_login_time']));
            $objPHPExcel->getActiveSheet()->setCellValue('G' . $i, $sql[$i-2]['last_login_ip']);
            $objPHPExcel->getActiveSheet()->setCellValue('H' . $i, $sql[$i-2]['before']);
            $objPHPExcel->getActiveSheet()->setCellValue('I' . $i, $sql[$i-2]['work_place']);
            $objPHPExcel->getActiveSheet()->setCellValue('J' . $i, $sql[$i-2]['position']);
            $objPHPExcel->getActiveSheet()->setCellValue('K' . $i, htmlspecialchars_decode($sql[$i-2]['salary']));
        }


        /*--------------下面是设置其他信息------------------*/

        $objPHPExcel->getActiveSheet()->setTitle('member_info');      //设置sheet的名称
        $objPHPExcel->setActiveSheetIndex(0);                   //设置sheet的起始位置
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');   //通过PHPExcel_IOFactory的写函数将上面数据写出来

        $PHPWriter = \PHPExcel_IOFactory::createWriter( $objPHPExcel,"Excel2007");

        header('Content-Disposition: attachment;filename="学员信息.xlsx"');
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');

        $PHPWriter->save("php://output"); //表示在$path路径下面生成demo.xlsx文件

    }
}
