<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "diary_type".
 *
 * @property integer $id
 * @property string $name
 * @property integer $create_at
 */
class DiaryType extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'diary_type';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'create_at'], 'required'],
            [['create_at'], 'integer'],
            [['name'], 'string', 'max' => 32],
            [['name'], 'unique']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'create_at' => 'Create At',
        ];
    }
}
