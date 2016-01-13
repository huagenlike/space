<?php
/**
 * Created by PhpStorm.
 * User: may
 * Date: 2016/1/12
 * Time: 13:22
 */
namespace common\extend\qiniu;
require_once __DIR__ . '/autoload.php';

use Qiniu;
use Qiniu\Auth;
use Qiniu\Storage\UploadManager;
use Qiniu\Storage\BucketManager;

class Upload
{
    private $accessKey;
    private  $secretKey;
    private $bucket;
    private $auth;
    private $token;
    public static $instance;

    public static function getInstance()
    {
        if(empty(self::$instance)){
            self::$instance = new self();
        }

        return self::$instance;
    }

    public function __construct(){
        $this->accessKey = \Yii::$app->params['qiniu']['ak'];
        $this->secretKey = \Yii::$app->params['qiniu']['sk'];
        $this->bucket = \Yii::$app->params['qiniu']['bucket'];
        $this->auth = new Auth($this->accessKey, $this->secretKey);
        $this->token = $this->auth->uploadToken($this->bucket);
    }


    /**
     * 上传图片
     * $param string $fileName 图片名称
     * $param string $filePath 图片存放路径
     * return mixed ['hash' => '', 'key' => ''] 成功后的文件名保存在key=>value中
     * @throws \Exception
    */
    public function uploadFile($fileName, $filePath)
    {
        list($ret, $err) = (new UploadManager())->putFile($this->token, $fileName, $filePath);
        if ($err !== null) {
            return $err;
        } else {
            return $ret;
        }
    }

    /**
     * 删除图片
     * $param string $fileName 图片名称
     * return null
    */
    public function deleteFile($fileName)
    {
        $bucketMgr = new BucketManager($this->auth);
        $err = $bucketMgr->delete($this->bucket, $fileName);
        if ($err !== null) {
            return $err;
        } else {
            return "Success!";
        }
    }
}