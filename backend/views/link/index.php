<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\LinkSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '网站推荐';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="link-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Link', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            [
                'header' => '编号',
                'class' => 'yii\grid\SerialColumn'
            ],
            [
                'header' => '标题',
                'value' => 'title'
            ],
            [
                'header' => 'url地址',
                'value' => 'addr'
            ],
            [
                'header' => '状态',
                'value' => function ($data) {
                    return \common\models\Link::$static[$data->status];
                }
            ],
            [
                'header' => '创建时间',
                'value' => function ($data) {
                    return date("Y-m-d", $data->c_time);
                }
            ],
            [
                'header' => '操作',
                'class' => 'yii\grid\ActionColumn',
            ],
        ],
    ]); ?>

</div>
