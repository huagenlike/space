<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
//use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\DiarySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '日历';
$this->params['breadcrumbs'][] = $this->title;
?>
<style>
    .container-fluid div{margin:10px;}
    .title{color:#7b3f25;font-weight:bold;font-size:20px;;}
    .content{height:100px;overflow:hidden;}
    .bigbox,.r-box{margin-top:30px;float: left;}
    .bigbox{width:78%;}

    .bigbox .diary{width:100%;margin:0px;padding:0px;}
    .bigbox .diary li{list-style: none;}
    .bigbox .diary li:first-child{border-top: 2px solid #e0d1ea;border-bottom: 2px dashed #e0d1ea;}
    .bigbox .diary li:not(:first-child){border-bottom: 2px dashed #e0d1ea;}

    .r-box{width:19%;margin-left:2%;}

    .hint{width:400px;height:200px;;position:absolute; left:30%;top:35%;}
    .hint p:first-child{background-color:#00a0e9;}
    .hint p:last-child{height:100%;text-align:center;;border:1px solid #e0d1ea;background-color:#e0d1ea;font:normal bold 18px/200px arial,微软雅黑;}
</style>
<div class="diary-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <div class="bigbox">
        <ul class="diary">
            <?php if ($list) { ?>
                <?php foreach ($list as $val) {?>
                    <li class="span4">
                        <div class="container-fluid">
                            <div class="title"><a href="index.php?r=diary/view&id=<?php echo $val['id']?>"><?php echo $val['title'] ?></a></div>
                            <div class="content"><?php echo $val['content'] ?></div>
                            <div class="diary_footer">
                                <span><?php echo date("Y-m-d", $val['c_time']); ?>&nbsp;</span>
                                <span>阅读&nbsp;（<?php echo $val['click']; ?>）</span>
                                <span>评论&nbsp;（<?php echo $val['comment']; ?>）</span>
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
        <?php echo $pages; ?>
    </div>
    <div class="r-box">
        <ul class="list-group">
            <li class="list-group-item active">日志分类</li>
            <?php foreach ($data as $key => $val) {?>
                <li class="list-group-item <?php echo ($_GET['type'] == $val['id']) ? 'list-group-item-info' : '';?>"><a href="index.php?r=diary/index&type=<?= $val['id'] ?>"><?= $val['name'] ?></a><span class="badge"><?= $val['num'] ?></span></li>
            <?php } ?>
        </ul>
    </div>
</div>
