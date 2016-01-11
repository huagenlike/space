<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "diary".
 *
 * @property string $id
 * @property string $title
 * @property string $content
 * @property string $tag
 * @property string $type
 * @property string $jurisdiction
 * @property integer $c_time
 * @property integer $u_time
 */
class Diary extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'diary';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'content', 'c_time'], 'required'],
            [['content'], 'string'],
            [['c_time', 'u_time'], 'integer'],
            [['title'], 'string', 'max' => 52],
            [['tag'], 'string', 'max' => 100],
            [['type', 'jurisdiction'], 'string', 'max' => 1]
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
            'content' => 'Content',
            'tag' => 'Tag',
            'type' => 'Type',
            'jurisdiction' => 'Jurisdiction',
            'c_time' => 'C Time',
            'u_time' => 'U Time',
        ];
    }
}
