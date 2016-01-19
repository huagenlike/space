<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "link".
 *
 * @property integer $id
 * @property string $title
 * @property string $addr
 * @property string $status
 * @property integer $c_time
 * @property integer $u_time
 */
class Link extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */

    static public $static = [
        1 => '显示',
        2 => '隐藏',
        8 => '删除'
    ];

    public static function tableName()
    {
        return 'link';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'addr', 'c_time'], 'required'],
            [['c_time', 'u_time'], 'integer'],
            [['title'], 'string', 'max' => 255],
            [['addr'], 'string', 'max' => 233],
            [['status'], 'string', 'max' => 1],
            [['title'], 'unique']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'addr' => 'Addr',
            'status' => 'Status',
            'c_time' => 'C Time',
            'u_time' => 'U Time',
        ];
    }
}
