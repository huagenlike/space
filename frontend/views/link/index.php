<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $searchModel common\models\DiarySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '网站推荐';
$this->params['breadcrumbs'][] = $this->title;
if(!empty($_GET['type']))
    $this->params['breadcrumbs'][] = $data[$_GET['type']]['name'];
?>
<style>
    .bigbox{width:78%;margin-top:30px;float: left;}
    .content{width:100%;min-height:450px;}
    .content ul:first-child{height:40px;margin:0px;}
    .content ul:first-child li{text-align: center;}
    .content ul li{float:left;border-radius:0px;}
    .content ul li:first-child{width: 20%;}
    .content ul li:nth-child(2){width: 68%;}
    .content ul li:last-child{width: 12%;}
    .content ul:first-child li{float:left;border-radius:0px;}

    .r-box{width:19%;margin-left:2%;float:left;}
    .keyWork{color:#e0d1ea;z-index:0;}
    .keyWork_cur{color:#000000;}
    .search{ margin-top:30px;}
    .commit{border:0px;display:inline-block;position:relative;top:-30px;left:180px;z-index:9;background: url("http://7xq04w.com1.z0.glb.clouddn.com/search.jpg");width:25px;height:25px;}
</style>
<div class="diary-index">
    <div class="bigbox">
        <div class="content">
            <ul class="list-group">
                <li class="list-group-item active">标题</li>
                <li class="list-group-item active">网址</li>
                <li class="list-group-item active">创建时间</li>
            </ul>
            <?php
            if ( !empty($list) ) {
                foreach ($list as $val) {
                    ?>
                    <ul class="list-group">
                        <li class="list-group-item "><?= $val['title']; ?></li>
                        <li class="list-group-item "><a href="<?= $val['addr']; ?>" target="_blank"><?= $val['addr']; ?></a></li>
                        <li class="list-group-item "><?= date("Y-m-d", $val['c_time']); ?></li>
                    </ul>
                    <?php
                }
            } else {

            }
            ?>
        </div>
    </div>
    <div class="r-box search">
        <?php $form = ActiveForm::begin([
            'id' => 'myForm',
            'method' => 'get',
            'options' => ['class' => 'form-horizontal']
        ]); ?>
        <p>搜索网站</p>
        <input type="text" name="keyWord" class="form-control keyWork" value="请输入关键字">
        <?= Html::submitButton('',['class' => 'commit']) ?>
        <?php $form = ActiveForm::end(); ?>
    </div>
</div>
<?php echo $pages; ?>
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
