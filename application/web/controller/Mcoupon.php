<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 使用优惠券管理控制器
 * Class Auth
 * @package app\web\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:13
 */
class Mcoupon extends BasicAdmin
{
    public $table = 'member_coupon';
    public $table_coupon = 'index_coupon';
    public $table_member = 'member_info';
    public $table_course = 'index_course';
    public $table_degree = 'index_degree';
    public $degree_package = 'degree_package';
    public $table_open = 'index_open';
    public $table_camp = 'index_camp';
    public $table_order = 'member_course';

    public function index()
    {
        $this->title = '使用优惠券管理';
        $get = $this->request->get();
        $db = Db::name($this->table)->where(['is_deleted' => '0']);
        foreach (['course_type','code'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        if (isset($get['use_at']) && $get['use_at'] !== '') {
            list($start, $end) = explode('-', str_replace(' ', '', $get['use_at']));
            $db->whereBetween('use_at', ["{$start}", "{$end}"]);
        }
        return parent::_list($db);
    }

    protected function _data_filter(&$data)
    {
        foreach ($data as &$val) {
            $val['order_code'] = db($this->table_order)->where('id',$val['order_id'])->value('order_code');

            $coupon = db($this->table_coupon)->where('id',$val['coupon_id'])->find();
            $val['code'] = $coupon['code'];
            $val['discount'] = $coupon['discount'];

            $member = db($this->table_member)->where('id',$val['member_id'])->find();
            $val['member_name'] = $member['name'];
            $val['member_real_name'] = $member['real_name'];

            if ($val['is_used']==1){
                switch ($val['course_type']){
                    case 1:
                        $val['course_type'] = '免费课程';
                        $val['course_name'] = db($this->table_course)->where('id',$val['course_id'])->value('name');
                        break;
                    case 2:
                        $val['course_type'] = '学位课程';
                        $val['course_name'] = db($this->table_degree)->where('id',$val['course_id'])->value('name');
                        break;
                    case 3:
                        $val['course_type'] = '七天课程';
                        $val['course_name'] = db($this->table_camp)->where('id',$val['course_id'])->value('name');
                        break;
                }
            }
        }
    }

    /**
     * 优惠券删除
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("优惠券删除成功!", '');
        }
        $this->error("优惠券删除失败, 请稍候再试!");
    }

    /**
     * 优惠券禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("优惠券禁用成功!", '');
        }
        $this->error("优惠券禁用失败, 请稍候再试!");
    }

    /**
     * 优惠券启用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("优惠券启用成功!", '');
        }
        $this->error("优惠券启用失败, 请稍候再试!");
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
        vendor("PHPExcel.PHPExcel.Style.NumberFormat");
        $objPHPExcel = new \PHPExcel();
        $objWriter = new \PHPExcel_Writer_Excel5($objPHPExcel);
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);

        //获取上月起始和结束时间
        $begin_time = strtotime('-1 month');
        $end_time = strtotime(-date('d').'day');

        // 实例化完了之后就先把数据库里面的数据查出来
        $sql = db($this->table)->whereBetween('create_at',"{$begin_time},{$end_time}")->select();
        foreach ($sql as &$v){
            $member = db($this->table_member)->where('id',$v['member_id'])->find();
            $v['member_name'] = $member['name'];
            $v['member_real_name'] = $member['real_name'];
            $v['create_at'] = date('Y-m-d H:i:s',$v['create_at']);
            if ($v['is_finish']==1){
                $v['is_finish'] = '已完成';
            }else{
                $v['is_finish'] = '';
            }
            switch ($v['course_type']){
                case 1:
                    $v['course_type'] = '免费课程';
                    $v['course_name'] = db($this->table_course)->where('id',$v['course_id'])->value('name');
                    break;
                case 2:
                    $v['course_type'] = '学位课程';
                    $v['course_name'] = db($this->table_degree)->where('id',$v['course_id'])->value('name');
                    break;
                case 3:
                    $v['course_type'] = '七天课程';
                    $v['course_name'] = db($this->table_camp)->where('id',$v['course_id'])->value('name');
                    break;
            }
        }

        // 设置表头信息
        $objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A1', 'ID')
            ->setCellValue('B1', '优惠券号')
            ->setCellValue('C1', '支付宝优惠券号')
            ->setCellValue('D1', '学员账号')
            ->setCellValue('E1', '学员姓名')
            ->setCellValue('F1', '优惠券创建时间')
            ->setCellValue('G1', '优惠券金额')
            ->setCellValue('H1', '优惠券是否已完成')
            ->setCellValue('I1', '优惠券完成时间')
            ->setCellValue('J1', '课程类型')
            ->setCellValue('K1', '课程名称');

        /*--------------开始从数据库提取信息插入Excel表中------------------*/

        $i=2;  //定义一个i变量，目的是在循环输出数据是控制行数
        $count = count($sql);  //计算有多少条数据
        for ($i = 2; $i <= $count+1; $i++) {
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $sql[$i-2]['id']);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, ' '.$sql[$i-2]['order_code']);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, ' '.$sql[$i-2]['alipay_code']);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $sql[$i-2]['member_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, $sql[$i-2]['member_real_name']);
            $objPHPExcel->getActiveSheet()->setCellValue('F' . $i, $sql[$i-2]['create_at']);
            $objPHPExcel->getActiveSheet()->setCellValue('G' . $i, $sql[$i-2]['cost']);
            $objPHPExcel->getActiveSheet()->setCellValue('H' . $i, $sql[$i-2]['is_finish']);
            $objPHPExcel->getActiveSheet()->setCellValue('I' . $i, $sql[$i-2]['finish_at']);
            $objPHPExcel->getActiveSheet()->setCellValue('J' . $i, $sql[$i-2]['course_type']);
            $objPHPExcel->getActiveSheet()->setCellValue('K' . $i, $sql[$i-2]['course_name']);
        }


        /*--------------下面是设置其他信息------------------*/

        $objPHPExcel->getActiveSheet()->setTitle('order_info');      //设置sheet的名称
//        $objPHPExcel->getActiveSheet()->getStyle('B')->getNumberFormat()->setFormatCode(\PHPExcel_Style_NumberFormat::FORMAT_TEXT);
        $objPHPExcel->setActiveSheetIndex(0);                   //设置sheet的起始位置
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');   //通过PHPExcel_IOFactory的写函数将上面数据写出来

        $PHPWriter = \PHPExcel_IOFactory::createWriter( $objPHPExcel,"Excel2007");

        header('Content-Disposition: attachment;filename="优惠券信息.xlsx"');
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');

        $PHPWriter->save("php://output"); //表示在$path路径下面生成demo.xlsx文件

    }
}