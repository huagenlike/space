<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $searchModel common\models\diarySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '日历';
$this->params['breadcrumbs'][] = $this->title;
if(!empty($_GET['type']))
    $this->params['breadcrumbs'][] = $data[$_GET['type']]['name'];
?>
<style>
    .container-fluid div{margin:10px;}
    .title{color:#7b3f25;font-weight:bold;font-size:20px;;}
    .content{height:100px;overflow:hidden;}
    .bigbox,.r-box{margin-top:30px;float: left;}
    .bigbox{width:78%;min-height:495px;}

    .bigbox .diary{width:100%;margin:0px;padding:0px;}
    .bigbox .diary li{list-style: none;}
    .bigbox .diary li:first-child{border-top: 2px solid #e0d1ea;border-bottom: 2px dashed #e0d1ea;}
    .bigbox .diary li:not(:first-child){border-bottom: 2px dashed #e0d1ea;}

    .r-box{width:19%;margin-left:2%;}

    .hint{width:400px;height:200px;;position:absolute; left:30%;top:35%;}
    .hint p:first-child{background-color:#00a0e9;}
    .hint p:last-child{height:100%;text-align:center;;border:1px solid #e0d1ea;background-color:#e0d1ea;font:normal bold 18px/200px arial,微软雅黑;}

    .keyWork{color:#e0d1ea;z-index:0;}
    .keyWork_cur{color:#000000;}
    .search{ margin-top:0px;}
    .commit{border:0px;display:inline-block;position:relative;top:-30px;left:180px;z-index:9;background: url("http://7xq04w.com1.z0.glb.clouddn.com/search.jpg");width:25px;height:25px;}
</style>
<div class="diary-index">

    <div class="bigbox">
        <ul class="diary">
            <?php if ($list) { ?>
                <?php foreach ($list as $val) { ?>
                    <li class="span4">
                        <div class="container-fluid">
                            <div class="title"><?= Html::a($val['title'], ['diary/view', 'id' => $val['id'], ['class' => '']]) ?></div>
                            <div class="content"><?= $val['content'] ?></div>
                            <div class="diary_footer">
                                <span><?= date("Y-m-d", $val['c_time']) ?>&nbsp;</span>
                                <span>阅读&nbsp;（<?= $val['click']; ?>）</span>
                                <span>评论&nbsp;（<?= $val['comment']; ?>）</span>
                            </div>
                        </div>
                    </li>
                <?php } ?>
            <?php }else{ ?>
                <div class='hint'>
                    <p class="list-group-item">提示</p>
                    <p>当前分类下没有日志！</p>
                </div>
            <?php } ?>
        </ul>
        <?= $pages; ?>
    </div>
    <div class="r-box">
        <ul class="list-group">
            <li class="list-group-item active">日志分类</li>
            <?php foreach ($data as $key => $val) { ?>
                <li class="list-group-item <?=  (!empty($_GET['type']) && $_GET['type'] == $val['id']) ? 'list-group-item-info' : '';?>"><?= Html::a($val['name'], ['diary/index', 'type' => $val['id']]) ?><span class="badge"><?= $val['num'] ?></span></li>
            <?php } ?>
        </ul>
    </div>
    <div class="r-box search">
        <?php $form = ActiveForm::begin([
            'id' => 'myForm',
            'method' => 'get',
            'options' => ['class' => 'form-horizontal']
        ]); ?>
        <p>搜索日志</p>
        <input type="text" name="keyWork" class="form-control keyWork" value="请输入关键字">
            <?= Html::submitButton('',['class' => 'commit']) ?>

        <?php $form = ActiveForm::end(); ?>
    </div>
</div>
<?php
    $this->registerJs('
        $(".keyWork").click(function() {
            $(this).addClass("keyWork_cur");
            $(this).val("");
        }).focusout(function() {
            var word = $(this).val();
            if (word == "") {
                $(this).removeClass("keyWork_cur");
                $(this).val("请输入关键字");
            }
        });
        $()
    ');
?>
