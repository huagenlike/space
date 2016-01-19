/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : space

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-01-19 17:55:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('11', 'hunan', '1024');
INSERT INTO `country` VALUES ('AU', 'Australia', '18886000');
INSERT INTO `country` VALUES ('BR', 'Brazil', '170115000');
INSERT INTO `country` VALUES ('CA', 'Canada', '1147000');
INSERT INTO `country` VALUES ('CN', 'China', '1277558000');
INSERT INTO `country` VALUES ('DE', 'Germany', '82164700');
INSERT INTO `country` VALUES ('FR', 'France', '59225700');
INSERT INTO `country` VALUES ('GB', 'United Kingdom', '59623400');
INSERT INTO `country` VALUES ('IN', 'India', '1013662000');
INSERT INTO `country` VALUES ('RU', 'Russia', '146934000');
INSERT INTO `country` VALUES ('US', 'United States', '278357000');

-- ----------------------------
-- Table structure for `diary`
-- ----------------------------
DROP TABLE IF EXISTS `diary`;
CREATE TABLE `diary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(52) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `tag` varchar(100) DEFAULT NULL COMMENT '标签',
  `type` char(1) DEFAULT NULL COMMENT '分类',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '1 正常 2 关闭 8 删除',
  `comment` smallint(6) unsigned DEFAULT '0' COMMENT '评论数',
  `click` smallint(6) NOT NULL DEFAULT '0' COMMENT '点击数',
  `jurisdiction` char(1) DEFAULT NULL COMMENT '权限',
  `c_time` int(11) NOT NULL,
  `u_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diary
-- ----------------------------
INSERT INTO `diary` VALUES ('1', '这是第二篇日志', '第二篇日志', '第二篇', '3', '1', '0', '0', '2', '1451489516', '1451489866');
INSERT INTO `diary` VALUES ('2', '第三篇', '这是第三篇', '第三', '4', '1', '0', '0', '3', '1451489553', '1451489821');
INSERT INTO `diary` VALUES ('12', '233242', '<p style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\">犯得上发射点发射点发射点<img src=\"http://7xq04w.com1.z0.glb.clouddn.com/160113032400sadasd.png\" alt=\"\" width=\"80\" height=\"80\" title=\"\" align=\"\" /></span> \r\n</p>', '43242', '2', '1', '0', '1', '2', '1452566780', '1452566780');
INSERT INTO `diary` VALUES ('13', 'yii2.0 Activeform表单部分组件使用方法', '<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\"><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">文本框</span><span class=\"hljs-pseudo\" style=\"color:#8888FF;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">:textInput</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">();&nbsp;</span></span></span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\"><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">密码框</span><span class=\"hljs-pseudo\" style=\"color:#8888FF;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">:passwordInput</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">();&nbsp;</span></span></span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\"><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">单选框</span><span class=\"hljs-pseudo\" style=\"color:#8888FF;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">:radio</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">(),</span><span class=\"hljs-tag\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">radioList</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">();&nbsp;</span></span></span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\"><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">复选框</span><span class=\"hljs-pseudo\" style=\"color:#8888FF;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">:checkbox</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">(),</span><span class=\"hljs-tag\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">checkboxList</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">();&nbsp;</span></span></span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\"><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">下拉框</span><span class=\"hljs-pseudo\" style=\"color:#8888FF;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">:dropDownList</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">();&nbsp;</span></span></span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\"><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">隐藏域</span><span class=\"hljs-pseudo\" style=\"color:#8888FF;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">:hiddenInput</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">();&nbsp;</span></span></span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\"><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">文本域</span><span class=\"hljs-pseudo\" style=\"color:#8888FF;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">:textarea</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">([</span><span class=\"hljs-string\" style=\"color:#880000;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">\'rows\'</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">=&gt;</span><span class=\"hljs-number\" style=\"color:#008800;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">3</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">]);&nbsp;</span></span></span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\"><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">文件上传</span><span class=\"hljs-pseudo\" style=\"color:#8888FF;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">:fileInput</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">();&nbsp;</span></span></span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\"><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">提交按钮</span><span class=\"hljs-pseudo\" style=\"color:#8888FF;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">:submitButton</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">();&nbsp;</span></span></span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\"><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">重置按钮</span><span class=\"hljs-pseudo\" style=\"color:#8888FF;font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\">:resetButtun</span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">(); </span><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?php</span> <span class=\"hljs-variable\">$form</span> = ActiveForm::begin([<span class=\"hljs-string\" style=\"color:#880000;\">\'action\'</span> =&gt; [<span class=\"hljs-string\" style=\"color:#880000;\">\'test/getpost\'</span>],<span class=\"hljs-string\" style=\"color:#880000;\">\'method\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'post\'</span>,]); <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;\">echo</span> <span class=\"hljs-variable\">$form</span>-&gt;field(<span class=\"hljs-variable\">$model</span>, <span class=\"hljs-string\" style=\"color:#880000;\">\'username\'</span>)-&gt;textInput([<span class=\"hljs-string\" style=\"color:#880000;\">\'maxlength\'</span> =&gt; <span class=\"hljs-number\" style=\"color:#008800;\">20</span>]) <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;\">echo</span> <span class=\"hljs-variable\">$form</span>-&gt;field(<span class=\"hljs-variable\">$model</span>, <span class=\"hljs-string\" style=\"color:#880000;\">\'password\'</span>)-&gt;passwordInput([<span class=\"hljs-string\" style=\"color:#880000;\">\'maxlength\'</span> =&gt; <span class=\"hljs-number\" style=\"color:#008800;\">20</span>]) <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;\">echo</span> <span class=\"hljs-variable\">$form</span>-&gt;field(<span class=\"hljs-variable\">$model</span>, <span class=\"hljs-string\" style=\"color:#880000;\">\'sex\'</span>)-&gt;radioList([<span class=\"hljs-string\" style=\"color:#880000;\">\'1\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'男\'</span>,<span class=\"hljs-string\" style=\"color:#880000;\">\'0\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'女\'</span>]) <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;\">echo</span> <span class=\"hljs-variable\">$form</span>-&gt;field(<span class=\"hljs-variable\">$model</span>, <span class=\"hljs-string\" style=\"color:#880000;\">\'edu\'</span>)-&gt;dropDownList([<span class=\"hljs-string\" style=\"color:#880000;\">\'1\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'大学\'</span>,<span class=\"hljs-string\" style=\"color:#880000;\">\'2\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'高中\'</span>,<span class=\"hljs-string\" style=\"color:#880000;\">\'3\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'初中\'</span>], [<span class=\"hljs-string\" style=\"color:#880000;\">\'prompt\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'请选择\'</span>,<span class=\"hljs-string\" style=\"color:#880000;\">\'style\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'width:120px\'</span>]) <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;\">echo</span> <span class=\"hljs-variable\">$form</span>-&gt;field(<span class=\"hljs-variable\">$model</span>, <span class=\"hljs-string\" style=\"color:#880000;\">\'file\'</span>)-&gt;fileInput() <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\"> </span><span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;\">echo</span> <span class=\"hljs-variable\">$form</span>-&gt;field(<span class=\"hljs-variable\">$model</span>, <span class=\"hljs-string\" style=\"color:#880000;\">\'hobby\'</span>)-&gt;checkboxList([<span class=\"hljs-string\" style=\"color:#880000;\">\'0\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'篮球\'</span>,<span class=\"hljs-string\" style=\"color:#880000;\">\'1\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'足球\'</span>,<span class=\"hljs-string\" style=\"color:#880000;\">\'2\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'羽毛球\'</span>]) <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;\">echo</span> <span class=\"hljs-variable\">$form</span>-&gt;field(<span class=\"hljs-variable\">$model</span>, <span class=\"hljs-string\" style=\"color:#880000;\">\'info\'</span>)-&gt;textarea([<span class=\"hljs-string\" style=\"color:#880000;\">\'rows\'</span>=&gt;<span class=\"hljs-number\" style=\"color:#008800;\">3</span>]) <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\"> </span><span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;\">echo</span> <span class=\"hljs-variable\">$form</span>-&gt;field(<span class=\"hljs-variable\">$model</span>, <span class=\"hljs-string\" style=\"color:#880000;\">\'userid\'</span>)-&gt;hiddenInput([<span class=\"hljs-string\" style=\"color:#880000;\">\'value\'</span>=&gt;<span class=\"hljs-number\" style=\"color:#008800;\">3</span>]) <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;\">echo</span> Html::submitButton(<span class=\"hljs-string\" style=\"color:#880000;\">\'提交\'</span>, [<span class=\"hljs-string\" style=\"color:#880000;\">\'class\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'btn btn-primary\'</span>,<span class=\"hljs-string\" style=\"color:#880000;\">\'name\'</span> =&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'submit-button\'</span>]) <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;\">echo</span> Html::resetButton(<span class=\"hljs-string\" style=\"color:#880000;\">\'重置\'</span>, [<span class=\"hljs-string\" style=\"color:#880000;\">\'class\'</span>=&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'btn btn-primary\'</span>,<span class=\"hljs-string\" style=\"color:#880000;\">\'name\'</span> =&gt;<span class=\"hljs-string\" style=\"color:#880000;\">\'submit-button\'</span>]) <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span><span style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;background-color:#F0F0F0;\"> </span><span class=\"php\" style=\"font-family:Menlo, Monaco, Consolas, \'Courier New\', monospace;font-size:13px;line-height:18.5714282989502px;\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?php</span> ActiveForm::end(); <span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span> \r\n</p>', 'yii', '2', '1', '0', '1', '0', '1452668462', '1452668462');
INSERT INTO `diary` VALUES ('5', '官方的三个地方', '非官方的是公司的', '打发', '3', '1', '0', '0', '2', '1451490600', '1451490600');
INSERT INTO `diary` VALUES ('6', 'fdgdsfgdsf', 'gdfsgdfg', 'dfgdf', '3', '1', '0', '0', '5', '1451491526', '1451491643');
INSERT INTO `diary` VALUES ('11', '活动记录', '<span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span></span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span></span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span></span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span></span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span></span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span></span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span></span>yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录<span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span></span>yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录<span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span>yii2的活动记录</span><span></span>yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录yii2的活动记录</span>', '记录', '1', '1', '0', '0', '0', '1451555077', '1452670794');
INSERT INTO `diary` VALUES ('8', '试试看', '真的是最后一天了', '最后一天', '3', '1', '0', '0', '1', '1451551204', '1452674005');
INSERT INTO `diary` VALUES ('10', '最后一天', '真的是最后一天了', '最后一天', '5', '1', '0', '0', '4', '1451551568', null);
INSERT INTO `diary` VALUES ('14', '今天是星期三', '今天真的是星期三', '日期', '7', '1', '0', '0', '0', '1452672109', '1452672109');
INSERT INTO `diary` VALUES ('15', '明天是星期四', '明天真的是星期四1', '星期', '1', '1', '0', '1', '0', '1452672135', '1452672135');
INSERT INTO `diary` VALUES ('16', '后天是星期五', '后天就是星期五', '星期', '9', '1', '0', '5', '0', '1452673892', '1452673892');
INSERT INTO `diary` VALUES ('17', '32131', '32131', '12312', '1', '1', '0', '0', '0', '1452679494', '1452679494');
INSERT INTO `diary` VALUES ('18', 'php 跨域 form提交 2种方法', '<p style=\"font-family:\'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti;font-size:16px;\">\r\n	出于安全因素考虑，直接跨域访问是不允许的，下面介绍二种跨域的方法。\r\n</p>\r\n<p style=\"font-family:\'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti;font-size:16px;\">\r\n	&nbsp; &nbsp;<strong>一，通过php curl</strong>\r\n</p>\r\n<pre class=\"php\">function curlPost($url,$params)\r\n{\r\n $postData = \'\';\r\n foreach($params as $k =&gt; $v)\r\n {\r\n $postData .= $k . \'=\'.$v.\'&amp;\';\r\n }\r\n rtrim($postData, \'&amp;\');\r\n $ch = curl_init();\r\n curl_setopt($ch,CURLOPT_URL,$url);\r\n curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);\r\n\r\n curl_setopt($ch,CURLOPT_HEADER, false);\r\n curl_setopt($ch, CURLOPT_POST, count($postData));\r\n curl_setopt($ch, CURLOPT_POSTFIELDS, $postData); \r\n\r\n $output=curl_exec($ch);\r\n\r\n curl_close($ch);\r\n return $output;\r\n}\r\n\r\necho curlPost(\"http://test.com\",array(\'name\'=&gt;\"tank\"));\r\n</pre>\r\n<p style=\"font-family:\'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti;font-size:16px;\">\r\n	&nbsp; &nbsp;以前很多人用curl来抓，邮箱的通讯录，不过现在已经不可以了。哈哈。\r\n</p>\r\n<p style=\"font-family:\'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti;font-size:16px;\">\r\n	&nbsp; &nbsp;<strong>二，利用jquery form，ajax提交</strong>\r\n</p>\r\n<p style=\"font-family:\'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti;font-size:16px;\">\r\n	&nbsp; &nbsp;<strong>1，下载jquery.form.js</strong>\r\n</p>\r\n<p style=\"font-family:\'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti;font-size:16px;\">\r\n	&nbsp; &nbsp;<strong>2，js代码</strong>\r\n</p>\r\n<pre class=\"php\">$(\'#testform\').submit(function() {\r\n $(this).ajaxSubmit({\r\n type: \'post\', // 提交方式 get/post\r\n dataType:\"json\",//数据类型\r\n url: \'your url\', // 需要提交的 url\r\n success: function(data) { // data 保存提交后返回的数据，一般为 json 数据\r\n // 此处可对 data 作相关处理\r\n alert(\'提交成功！\');\r\n }\r\n $(this).resetForm(); // 提交后重置表单\r\n });\r\n return false; // 阻止表单自动提交事件\r\n});</pre>\r\n<p style=\"font-family:\'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti;font-size:16px;\">\r\n	&nbsp; &nbsp;<strong>3，php代码</strong>\r\n</p>\r\n<pre class=\"php\">header(\"Access-Control-Allow-Origin:*\"); //跨域权限设置，允许所有\r\n\r\nheader(\"Access-Control-Allow-Origin:http://www.test.com\"); //只允许test.com跨域提交数据</pre>', 'php', '1', '1', '0', '8', '0', '1452835586', '1452835586');
INSERT INTO `diary` VALUES ('19', '关于Yii2中CSS,JS文件的引入心得', '<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	在yii2中，由于yii2版本升级导致了，很多yii2的用法跟yii1有着很大的区别，这几天一直在view层的视图界面徘徊着，遇到什么问题呢？ 问题就是搞不清我该如何去引入CSS,JS文件了！也看了社区中其它有经验的大神的教程，也按着做了，但是还是有一些问题存在着，比如说yii2的项目打开后，头部和尾部是公共的，该如何去掉？以及如何才能不改动原main.php文件的情况下，去引入JS,CSS文件，也许有一种办法就是写一个xxxAsset.php的配置文件，然后通过xxx&nbsp;Asset::register($this)可以引入文件，但是这下我又遇到问题了，碰到了这句代码无效，不起作用，在firebug打开后，head里没有引入任何的CSS,JS文件，样式也变得乱七八糟，后来我又查了下相关资料，恰巧，下了一个其他人发的yii2后台模版，于是，今天早上我大概了看了下后台的样式是怎么布局的，总结了下：<br />\r\n1、在前台view中最简单不过的就是像之前那样一个文件一个文件的引入,于是在顶部使用use调用代码段\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	use yii\\helpers\\Html;\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	然后在下面的Html中可以这样调用\r\n</p>\r\n<pre><span class=\"php\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span>=Html::jsFile(<span class=\"hljs-string\" style=\"color:#880000;\">\'@web/***/js/***.js\'</span>)<span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span>//这里***代表你的目录名或者文件名 <span class=\"php\"><span class=\"hljs-preprocessor\" style=\"color:#880000;\">&lt;?</span>=Html::cssFile(<span class=\"hljs-string\" style=\"color:#880000;\">\'@web/***/css/***.css\'</span>)<span class=\"hljs-preprocessor\" style=\"color:#880000;\">?&gt;</span></span>//***同上</pre>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	这样的话就不需要动其他文件，直接引入文件就好了，需要哪个引入哪个，当然这样写的话就是每次得写很多行代码去加载，最好还是写到配置文件中，但是用配置文件来引入这个问题我暂时还没弄通，后面如果找到原因我会分享给大家<br />\r\n2、前台这样引入，那么在controller中怎么自定义样式文件呢<br />\r\n在控制器中加上以下代码\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	public $layout = \'layout\';//在类中定义一个变量，名为$layout\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	注意的是这个layout在你的view中有个目录叫layouts，在这个目录下，我新建了一个文件名为layout.php,在其中我加上一句代码\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	&lt;?php echo $content; ?&gt;\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	这样控制器就会自动去找当前视图目录下的layouts目录下的加载视图文件的php文件<br />\r\n以上的几行简短的代码就解决了新手不知道该如何去加载CSS,JS文件的问题，大家如果觉得写***Asset.php文件会有问题，就用我这种办法，后期等熟悉了yii2之后在改用其他的办法去加载<br />\r\n另外，我再补充下，在view中怎么去跳转链接到其他的视图文件<br />\r\n同样在顶部先引入类库\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	use yii\\helpers\\Url;\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	然后再需要链接跳转的地方这样写：\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	&lt;?phpecho Url::toRoute(\'post/index\');?&gt;//post为你的当前控制器名，index为view模版\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Microsoft Yahei\', sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	是不是特别简单啊！<br />\r\n我也是yii2的新手，希望把这一点点心得分享给同样是yii2迷途路上的新手们.\r\n</p>', 'php', '1', '1', '0', '6', null, '1453088020', '1453088020');

-- ----------------------------
-- Table structure for `diary_type`
-- ----------------------------
DROP TABLE IF EXISTS `diary_type`;
CREATE TABLE `diary_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `create_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diary_type
-- ----------------------------
INSERT INTO `diary_type` VALUES ('1', '个人日记', '132132');
INSERT INTO `diary_type` VALUES ('2', '休闲搞笑', '123145');
INSERT INTO `diary_type` VALUES ('3', '天下杂侃', '123465');
INSERT INTO `diary_type` VALUES ('4', '情感天地', '123465');
INSERT INTO `diary_type` VALUES ('5', '强烈推荐', '123456');
INSERT INTO `diary_type` VALUES ('6', '胡说八道', '123465');
INSERT INTO `diary_type` VALUES ('7', '幽默搞笑', '123456');
INSERT INTO `diary_type` VALUES ('8', '游戏人生', '123456');
INSERT INTO `diary_type` VALUES ('9', '家乡风情', '123456');

-- ----------------------------
-- Table structure for `link`
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `addr` varchar(233) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '1 显示 2 隐藏 8 删除',
  `c_time` int(11) NOT NULL,
  `u_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('1', '廖雪峰', 'http://www.liaoxuefeng.com/', '1', '1453176048', '1453188923');
INSERT INTO `link` VALUES ('2', 'CSDN', 'http://www.csdn.net/', '1', '1453180094', null);
INSERT INTO `link` VALUES ('3', '伯乐在线', 'http://blog.jobbole.com/', '1', '1453186625', null);
INSERT INTO `link` VALUES ('4', '猿代码', 'http://www.ydma.cn/', '1', '1453186642', null);
INSERT INTO `link` VALUES ('5', 'IT技术博客大学习', 'http://blogread.cn/it/', '1', '1453186656', null);
INSERT INTO `link` VALUES ('6', 'Yii2文档', 'http://www.yiichina.com/doc/guide/2.0', '1', '1453186669', null);
INSERT INTO `link` VALUES ('7', 'jQuery手册', 'http://www.php100.com/manual/jquery/', '1', '1453186683', null);
INSERT INTO `link` VALUES ('8', 'JavaScript手册', 'http://www.php100.com/manual/javascript.html', '1', '1453186694', null);
INSERT INTO `link` VALUES ('9', 'PHP手册', 'http://php.net/manual/zh/', '1', '1453186705', null);
INSERT INTO `link` VALUES ('10', '博客园', 'http://www.cnblogs.com/', '1', '1453186716', null);
INSERT INTO `link` VALUES ('11', 'conoha', 'https://www.conoha.jp/zh/login', '1', '1453186742', null);

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m130524_201442_init', '1451316052');
INSERT INTO `migration` VALUES ('m151228_153026_create_users_table', '1451316898');

-- ----------------------------
-- Table structure for `talk`
-- ----------------------------
DROP TABLE IF EXISTS `talk`;
CREATE TABLE `talk` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(520) NOT NULL COMMENT '内容',
  `image` varchar(32) DEFAULT NULL COMMENT '图片id',
  `misuc` varchar(100) DEFAULT NULL COMMENT '音乐地址',
  `c_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of talk
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'huagen', null, '$2y$13$ETY8PxAxCjD0E.WI700LpO3JBxvCVfUWl/U/JfJtFXA/gdjKTjMj.', null, 'huagen@qq.com', '10', '10', '1451317623', '1451317623');
INSERT INTO `user` VALUES ('2', 'muzili', 'hgTEPkoj1yNTXuUq3W70y_p-CWULPMoF', '$2y$13$BIIstbyqXUihMrSTTTUP9.BaeSWzAuHjmKQvDAGe.NghRpP3LZokq', null, 'muzili@qq.com', '10', '10', '1451318241', '1451318241');
INSERT INTO `user` VALUES ('3', 'may104', '4ZeaZMIwuYO3AoZ7dBmWz_mbn_6NQenK', '$2y$13$/F5i96hVOzC5HwelboeoNeYtEW0zF7wPNvI.96bivfT7.jfsNE0PK', 'LnK_9wGbT5X-rcyRfnV99rzIj-bIHNtB_1451403888', '834718759@qq.com', '10', '10', '1451395583', '1451403888');

-- ----------------------------
-- Table structure for `user_relation`
-- ----------------------------
DROP TABLE IF EXISTS `user_relation`;
CREATE TABLE `user_relation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `frend_id` varchar(500) DEFAULT NULL COMMENT '好友id',
  `c_time` int(11) DEFAULT NULL,
  `u_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `user_tag`
-- ----------------------------
DROP TABLE IF EXISTS `user_tag`;
CREATE TABLE `user_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `t_tag` varchar(52) NOT NULL COMMENT '好友标签（用于分类）',
  `c_time` int(11) DEFAULT NULL,
  `u_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_tag
-- ----------------------------
