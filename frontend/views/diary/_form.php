<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Diary */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="diary-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'content')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'tag')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'type')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'jurisdiction')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'c_time')->textInput() ?>

    <?= $form->field($model, 'u_time')->textInput() ?>

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
