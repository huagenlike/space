<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model common\models\Diary */
/* @var $form yii\widgets\ActiveForm */

$model->jurisdiction = 0;
$model->type = $model['type'];
?>

<div class="diary-form">
<!--   --><?php // var_dump($model['type'],$data);die; ?>
    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true])->label("标题") ?>

    <?= $form->field($model, 'tag')->textInput(['maxlength' => true])->label("标签") ?>

    <?= $form->field($model, 'type')->dropDownList(ArrayHelper::map($data,'id', 'name'))->label("分类"); ?>

    <?= $form->field($model, 'content')->textarea(['rows' => 6])->label("内容") ?>

    <?= $form->field($model, 'status')->radioList(['1'=>'显示','2'=>'隐藏'])->label("状态")?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

<?php
$this->registerCssFile('@web/plugins/kindeditor/themes/default/default.css', [
    'depends' => [backend\assets\AppAsset::className()],
]);
$this->registerJsFile('@web/plugins/kindeditor/kindeditor-all-min.js', [
    'depends' => [backend\assets\AppAsset::className()],
]);
$this->registerJs('
    KindEditor.ready(function(K) {
        window.editor = K.create(\'#diary-content\', {
            "allowFileManager" : false,
            "uploadJson" : "' . \yii\helpers\Url::to(['upload'], true) . '",
            "afterCreate" : function(){this.sync();},
			"afterBlur" : function(){this.sync();}
        });
    });
');
?>
