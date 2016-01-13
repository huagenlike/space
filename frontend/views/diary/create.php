<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Diary */

$this->title = 'Create Diary';
$this->params['breadcrumbs'][] = ['label' => 'Diaries', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="diary-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'data' => $data,
    ]) ?>

</div>
