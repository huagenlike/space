<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Diary */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Diaries', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<style>
    ul li:last-child{text-align:right;}
</style>
<div class="diary-view">

    <h1><?= Html::encode($this->title) ?></h1>



    <ul class="list-group title">
        <li class="list-group-item">标题：<?php echo $model['title'];?></li>
        <li class="list-group-item">类型：<?php echo $model['type'];?></li>
        <li class="list-group-item">状态：<?php echo $model['status'];?></li>
        <li class="list-group-item">内容</li>
        <li class="list-group-item"><?php echo $model['content'];?></li>
        <li class="list-group-item">创建时间：<?php echo date("Y-m-d H:i:s", $model['c_time']);?></li>
    </ul>

    <p>
        <?= Html::a('修改', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('删除', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
</div>
