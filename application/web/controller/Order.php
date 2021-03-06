<?php
namespace app\web\controller;

use controller\BasicAdmin;
use service\DataService;
use think\Db;

/**
 * 订单管理控制器
 * Class Auth
 * @package app\web\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:13
 */
class Order extends BasicAdmin
{
    public $table = 'member_course';
    public $table_member = 'member_info';
    public $table_course = 'index_course';
    public $table_degree = 'index_degree';
    public $degree_package = 'degree_package';
    public $table_open = 'index_open';
    public $table_camp = 'index_camp';

    public function index()
    {
        $this->title = '订单管理';
        $get = $this->request->get();
        $db = Db::name($this->table)->where(['is_deleted' => '0'])->order('create_at desc');
        foreach (['tel'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        if (isset($get['create_at']) && $get['create_at'] !== '') {
            list($start, $end) = explode('-', str_replace(' ', '', $get['date']));
            $start = strtotime($start);
            $end = strtotime($end);
            $db->whereBetween('create_at', ["{$start}", "{$end}"]);
        }
        return parent::_list($db);
    }

    protected function _data_filter(&$data)
    {
        foreach ($data as &$val) {
            $val['create_at'] = date('Y-m-d H:i:s', "{$val['create_at']}");
//            if (!empty($val['finish_at'])){
//                $val['finish_at'] = date('Y-m-d H:i:s',"{$val['finish_at']}");
//            }

            $val['member_name'] = db($this->table_member)->where('id', $val['member_id'])->value('name');
            $val['member_real_name'] = db($this->table_member)->where('id', $val['member_id'])->value('real_name');
            switch ($val['course_type']) {
                case 1:
                    $val['course_name'] = db($this->table_course)->where('id', $val['course_id'])->value('name');
                    $val['course_type'] = '免费课程';
                    break;
                case 2:
                    $course = db($this->table_degree)->where('id', $val['course_id'])->find();
                    $val['course_name'] = $course['name'];
                    $val['course_name'] .= '-' . db($this->degree_package)->where(['degree_id' => $course['id'], 'id' => $val['package_id']])->value('name');
                    $val['course_type'] = '学位课程';
                    break;
                case 3:
                    $val['course_name'] = db($this->table_camp)->where('id', $val['course_id'])->value('name');
                    $val['course_type'] = '七天课程';
                    break;
                case 4:
                    $val['course_name'] = db($this->table_open)->where('id', $val['course_id'])->value('name');
                    $val['course_type'] = '公开课';
                    break;
            }
        }
    }

    /**
     * 订单查看
     */
    public function detail()
    {
        if (request()->isAjax()) {
            if (request()->isPost()) {
                $id = input("post.id");
                $msg = db($this->table)->where(["id" => $id])->value("msg");
                if (!empty($msg)) {
                    return ['status' => 200, 'msg' => $msg];
                }
            }
        }
//        return $this->_form($this->table, 'form');
    }

    /**
     * 订单删除
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("订单删除成功!", '');
        }
        $this->error("订单删除失败, 请稍候再试!");
    }

    /**
     * 订单禁用
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("订单禁用成功!", '');
        }
        $this->error("订单禁用失败, 请稍候再试!");
    }

    /**
     * 订单启用
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("订单启用成功!", '');
        }
        $this->error("订单启用失败, 请稍候再试!");
    }


    /**
     * 导出Excel 方法
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

        $begin_time = input('post.date', '', 'strtotime');
        $end_time = input('post.date1', '', 'strtotime');

        // 实例化完了之后就先把数据库里面的数据查出来
        $sql = db($this->table)->whereBetween('create_at', "{$begin_time},{$end_time}")->where('is_finish', 1)->select();
        foreach ($sql as &$v) {
            $member = db($this->table_member)->where('id', $v['member_id'])->find();
            $v['member_name'] = $member['name'];
            $v['member_real_name'] = $member['real_name'];
            $v['create_at'] = date('Y-m-d H:i:s', $v['create_at']);
            $v['finish_at'] = date('Y-m-d H:i:s', $v['finish_at']);
            if ($v['is_finish'] == 1) {
                $v['is_finish'] = '已完成';
            }
            switch ($v['course_type']) {
                case 1:
                    $v['course_type'] = '免费课程';
                    $v['course_name'] = db($this->table_course)->where('id', $v['course_id'])->value('name');
                    break;
                case 2:
                    $v['course_type'] = '学位课程';
                    $v['course_name'] = db($this->table_degree)->where('id', $v['course_id'])->value('name');
                    break;
                case 3:
                    $v['course_type'] = '七天课程';
                    $v['course_name'] = db($this->table_camp)->where('id', $v['course_id'])->value('name');
                    break;
            }
        }
        $objActSheet = $objPHPExcel->getActiveSheet();
        // 设置表头信息
       // $objPHPExcel->setActiveSheetIndex(0)
         $objActSheet->setCellValue('A1', 'ID');
         $objActSheet->setCellValue('B1', '订单号');
         $objActSheet->setCellValue('C1', '支付宝订单号');
         $objActSheet->setCellValue('D1', '学员账号');
         $objActSheet->setCellValue('E1', '学员姓名');
         $objActSheet->setCellValue('F1', '订单创建时间');
         $objActSheet->setCellValue('G1', '订单金额');
         $objActSheet->setCellValue('H1', '订单已完成');
         $objActSheet->setCellValue('I1', '订单完成时间');
         $objActSheet->setCellValue('J1', '课程类型');
         $objActSheet->setCellValue('K1', '课程名称');

        /*--------------开始从数据库提取信息插入Excel表中------------------*/

        //$i=2;  //定义一个i变量，目的是在循环输出数据是控制行数

        $count = count($sql);  //计算有多少条数据
        for ($i = 2; $i <= $count + 1; $i++) {
            $objActSheet->setCellValue('A' . $i, $sql[$i - 2]['id']);
            $objActSheet->setCellValue('B' . $i, ' ' . $sql[$i - 2]['order_code']);
            $objActSheet->setCellValue('C' . $i, $sql[$i - 2]['alipay_code']);
            $objActSheet->setCellValue('D' . $i, $sql[$i - 2]['member_name']);
            $objActSheet->setCellValue('E' . $i, $sql[$i - 2]['member_real_name']);
            $objActSheet->setCellValue('F' . $i, $sql[$i - 2]['create_at']);
            $objActSheet->setCellValue('G' . $i, $sql[$i - 2]['cost']);
            $objActSheet->setCellValue('H' . $i, $sql[$i - 2]['is_finish']);
            $objActSheet->setCellValue('I' . $i, $sql[$i - 2]['finish_at']);
            $objActSheet->setCellValue('J' . $i, $sql[$i - 2]['course_type']);
            $objActSheet->setCellValue('K' . $i, $sql[$i - 2]['course_name']);
        }

        /*--------------下面是设置其他信息------------------*/

        $objActSheet->setTitle('订单列表');      //设置sheet的名称
//        $objPHPExcel->getActiveSheet()->getStyle('B')->getNumberFormat()->setFormatCode(\PHPExcel_Style_NumberFormat::FORMAT_TEXT);
        $objPHPExcel->setActiveSheetIndex(0);                   //设置sheet的起始位置
        $filename = date("Y-m-d") . '导出订单信息';
        //ob_end_clean();
        header('Content-Disposition: attachment;filename="' . $filename . '.xlsx"');
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Cache-Control: max-age=0');
        // $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');   //通过PHPExcel_IOFactory的写函数将上面数据写出来
        $PHPWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, "Excel2007");
        $PHPWriter->save("php://output"); //表示在$path路径下面生成demo.xlsx文件
        //exit();
    }



}