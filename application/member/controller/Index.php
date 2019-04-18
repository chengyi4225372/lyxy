<?php

namespace app\member\controller;

use think\Controller;

/**
 * 我的账户控制器
 * Class controller
 * @package app\index\controller
 */
class Index extends Common
{
    public $course = 'index_course';
    public $chapter = 'course_chapter';
    public $content = 'chapter_content';

    public $degree = 'index_degree';
    public $module = 'degree_module';
    public $dchapter = 'degree_chapter';
    public $dcontent = 'degree_content';

    public $camp = 'index_camp';
    public $cchapter = 'camp_chapter';
    public $ccontent = 'camp_content';

    public $coupon = 'index_coupon';
    public $member_coupon = 'member_coupon';

    public function index()
    {
        if (!empty(session('redirect_url'))) {
            $url = session('redirect_url');
            session('redirect_url', null);
            $this->redirect($url);
        }
        $this->assign('title', '我的账户');
        $this->assign('nav', '0');
        $this->assign('my_nav', '1');
        return $this->fetch();
    }

    public function safe()
    {
        $this->assign('title', '账户安全');
        $this->assign('nav', '0');
        $this->assign('my_nav', '5');
        $this->assign('tel', session('member_info.tel'));
        return $this->fetch();
    }

    public function study()
    {
//        print_r($this->_course());exit;
        $this->assign('title', '学习中心');
        $this->assign('nav', '0');
        $this->assign('course', $this->_course());
        $this->assign('degree', $this->_degree());
        $this->assign('camp', $this->_camp());
//        print_r($this->_degree());exit;
        return $this->fetch();
    }

    public function coupon()
    {
        $this->assign('title', '学习中心');
        $this->assign('nav', '0');
        $this->assign('my_nav', '5');
        $coupon = $this->_coupon();
        $is_use0 = 0;
        $is_use1 = 0;
        $is_use2 = 0;
        foreach ($coupon as &$v) {
            if ($v['is_used'] == 0) {
                $is_use0 += 1;
            } else if ($v['is_used'] == 1) {
                $is_use1 += 1;
            } else {
                $is_use2 += 1;
            }
        }
        $this->assign('coupon', $coupon);
        $this->assign('is_used0', $is_use0);
        $this->assign('is_used1', $is_use1);
        $this->assign('is_used2', $is_use2);
        return $this->fetch();
    }

    public function coupon_live()
    {
        if (request()->isPost()) {
            $code = input('code');
            if (empty($code)) {
                return ['status' => 404, 'msg' => '请输入优惠券编码！'];
            }
            $coupon = db($this->coupon)->where('code', $code)->find();
            if (db($this->member_coupon)->where(['member_id' => session('member_info.id'), 'coupon_id' => $coupon['id']])->find()) {
                return ['status' => 404, 'msg' => '已兑换该优惠券！'];
            }
            if (!empty($coupon)) {
                $data = array(
                    'member_id' => session('member_info.id'),
                    'coupon_id' => $coupon['id']
                );
                if (db($this->member_coupon)->insert($data)) {
                    return ['status' => 200, 'msg' => '兑换成功！'];
                } else {
                    return ['status' => 404, 'msg' => '兑换失败！请稍后重试'];
                }
            } else {
                return ['status' => 404, 'msg' => '兑换失败！编码错误'];
            }
        }
    }

    private function _course()
    {
        $mid = session("member_info.id");
        $cid = db("member_course")->where(['is_finish' => 1, 'status' => 1, 'is_deleted' => 0, 'member_id' => $mid, 'course_type' => 1])->column('course_id');
        if (!empty($cid)) {
            $ccid = implode(',', $cid);
            $row = db($this->course)->where('id', 'in', $ccid)->select();
            foreach ($row as &$v) {
                $v['chapter'] = db($this->chapter)->where(['course_id' => $v['id'], 'is_deleted' => 0, 'status' => 1])->select();
                foreach ($v['chapter'] as &$val) {
                    $val['content'] = db($this->content)->where(['chapter_id' => $val['id'], 'is_deleted' => 0, 'status' => 1])->select();
                }
            }
            return $row;
        }
        return null;
    }

    private function _degree()
    {
        $mid = session("member_info.id");
        $cid = db("member_course")->where(['is_finish' => 1, 'status' => 1, 'is_deleted' => 0, 'member_id' => $mid, 'course_type' => 2])->column('course_id');
        if (!empty($cid)) {
            $ccid = implode(',', $cid);
            $row = db($this->degree)->where('id', 'in', $ccid)->select();
            foreach ($row as &$vv) {
                $vv['module'] = db($this->module)->where(['degree_id' => $vv['id'], 'is_deleted' => 0, 'status' => 1])->select();
                foreach ($vv['module'] as &$v) {
                    $v['chapter'] = db($this->dchapter)->where(['module_id' => $v['id'], 'is_deleted' => 0, 'status' => 1])->select();
                    foreach ($v['chapter'] as &$val) {
                        $val['content'] = db($this->dcontent)->where(['chapter_id' => $val['id'], 'is_deleted' => 0, 'status' => 1])->select();
                    }
                }
            }
            return $row;
        }
        return null;
    }

    private function _camp()
    {
        $mid = session("member_info.id");
        $cid = db("member_course")->where(['is_finish' => 1, 'status' => 1, 'is_deleted' => 0, 'member_id' => $mid, 'course_type' => 3])->column('course_id');
        if (!empty($cid)) {
            $ccid = implode(',', $cid);
            $row = db($this->camp)->where('id', 'in', $ccid)->select();
            foreach ($row as &$v) {
                $v['chapter'] = db($this->cchapter)->where(['camp_id' => $v['id'], 'is_deleted' => 0, 'status' => 1])->select();
                foreach ($v['chapter'] as &$val) {
                    $val['content'] = db($this->ccontent)->where(['chapter_id' => $val['id'], 'is_deleted' => 0, 'status' => 1])->select();
                }
            }
            return $row;
        }
        return null;
    }

    private function _coupon()
    {
        $mid = session("member_info.id");
        $db = db($this->member_coupon)->where('member_id', $mid)->select();
        foreach ($db as &$v) {
            $coupon = db($this->coupon)->where('id', $v['coupon_id'])->find();
            $create_at = strtotime(date('Y-m-d', strtotime($coupon['create_at'])));
            $expiration = $create_at + ($coupon['validity'] * 24 * 60 * 60);
            if (time() > $expiration) {
                $v['is_used'] = 2;
            }
            $v['expiration'] = date('Y-m-d', $expiration);

            if ($coupon['condition'] == 0) {
                $v['condition'] = '无门槛';
            } else {
                $v['condition'] = '满' . $coupon['condition'] . '减';
            }

            $v['name'] = $coupon['name'];
            $v['discount'] = $coupon['discount'];
            switch ($coupon['course_type']) {
                case 1:
                    $v['course_type'] = '限免费课程';
                    break;
                case 2:
                    $v['course_type'] = '限学位课程';
                    break;
                case 3:
                    $v['course_type'] = '限七天课程';
                    break;
                default:
                    $v['course_type'] = '不限课程';
                    break;
            }
        }
        return $db;
    }
}