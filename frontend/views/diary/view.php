<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Diary */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => '日志', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<style>
    ul li:last-child{text-align:right;}
    h1{text-align: center;margin-top:40px;}
    .box{padding:10px;}
    .header-box{text-align: right;margin-right: 30px;}
    .content{margin-top:35px;}
</style>
<div class="diary-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="box">
        <div class="header-box"><?= date("Y-m-d H:i:s", $model['c_time']);?>&nbsp;&nbsp;阅读&nbsp;（<?= $model['click']?>）</div>
        <div class="content">
            <?= $model['content'];?>
        </div>
    </div>


</div>
