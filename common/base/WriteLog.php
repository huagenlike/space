<?php
/**
 * Created by PhpStorm.
 * User: may
 * Date: 2016/1/15
 * Time: 10:16
 */

namespace common\base;

class WriteLog
{
    public static $instance;

    public static function getInstance()
    {
        if (empty(self::$instance)) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * $param string | array $log 日志字符串
     * $param string $dir 目录路径
     * @return bool
    */
    public function writeLog($log, $dir = '')
    {
        $path = \Yii::$app->getRuntimePath();
        $pathNow = $path . DIRECTORY_SEPARATOR . "logs";
        $file = date('Y-m-d'). '.log';
        if (!file_exists($pathNow)) {
            chmod($path, 0777);
            mkdir($pathNow);
        }

        $path = $pathNow;
        $pathNow = $path . DIRECTORY_SEPARATOR . date("Y", time());
        if (!file_exists($pathNow)) {
            chmod($path, 0777);
            mkdir($pathNow);
        }

        $path = $pathNow;
        $pathNow = $path . DIRECTORY_SEPARATOR . date("m", time());
        if (!file_exists($pathNow)) {
            chmod($path, 0777);
            mkdir($pathNow);
        }

        $path = $pathNow . DIRECTORY_SEPARATOR . $file;

        if (is_array($log)) {
            $log = \yii\helpers\Json::encode($log);
        }

        $msg = date('H:i:s | ') . $log . PHP_EOL;

        return error_log($msg , 3, $path);
    }
}