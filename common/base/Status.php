<?php
/**
 * Created by PhpStorm.
 * User: may
 * Date: 2016/1/13
 * Time: 10:53
 */

namespace common\base;

class Status
{
    const NORMAL    = 1;    // 正常
    const CLOSE     = 2;    // 关闭
    const WAIT      = 3;    // 等待
    const ERROR     = 4;    // 错误
    const FAILED    = 5;    // 失败
    const SUCCESS   = 6;    // 成功
    const EXPIRE    = 7;    // 过期
    const DELETE    = 8;    // 删除
}