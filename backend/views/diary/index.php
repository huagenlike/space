<?php

use yii\helpers\Html;
//use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\DiarySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Diaries';
$this->params['breadcrumbs'][] = $this->title;
?>
<style>
    .headul li{float: left; width: 100px;text-align: center;}
    .bodyul li{float:left; height:95px;}
    .headul li:nth-child(1),.bodyul li:nth-child(1){width:80px;}
    .headul li:nth-child(2),.bodyul li:nth-child(2){width:200px;}
    .headul li:nth-child(3),.bodyul li:nth-child(3){width:500px;display:block;word-wrap:break-word; overflow:hidden; text-overflow:ellipsis;}
    .headul li:nth-child(4),.bodyul li:nth-child(4){width:110px;}
    .headul li:nth-child(5),.bodyul li:nth-child(5){width:80px;}
    .headul li:nth-child(6),.bodyul li:nth-child(6){width:160px;}



</style>
<div class="diary-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Diary', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <ul class="list-group headul">
        <li class="list-group-item">ID</li>
        <li class="list-group-item">标题</li>
        <li class="list-group-item">内容</li>
        <li class="list-group-item">创建时间</li>
        <li class="list-group-item">状态</li>
        <li class="list-group-item">操作</li>
    </ul>
    <?php foreach ($list as $val) {?>
        <ul class="list-group bodyul">
            <li class="list-group-item"><?php echo $val['id']; ?></li>
            <li class="list-group-item"><?php echo $val['title']; ?></li>
            <li class="list-group-item"><?php echo $val['content']; ?></li>
            <li class="list-group-item"><?php echo date("Y-m-d", $val['c_time']); ?></li>
            <li class="list-group-item"><?php echo $val['status']; ?></li>
            <li class="list-group-item">
                <?php
                echo Html::a('查看', ['view', 'id' => $val['id'], ['target' => '_blank']]);
                echo "&nbsp;&nbsp;&nbsp;";
                echo Html::a('编辑', ['update', 'id' => $val['id'], ['target' => '_blank']]);
                echo "&nbsp;&nbsp;&nbsp;";
                echo Html::a('删除', ['delete', 'id' => $val['id'], ['target' => '_blank']]);
                echo "&nbsp;&nbsp;&nbsp;";
                ?>
            </li>
        </ul>
    <?php } ?>
    <?php echo $pages; ?>
</div>
