<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Diary;

/**
 * DiarySearch represents the model behind the search form about `common\models\Diary`.
 */
class DiarySearch extends Diary
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'c_time', 'u_time'], 'integer'],
            [['title', 'content', 'tag', 'type', 'jurisdiction'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Diary::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'c_time' => $this->c_time,
            'u_time' => $this->u_time,
        ]);

        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'content', $this->content])
            ->andFilterWhere(['like', 'tag', $this->tag])
            ->andFilterWhere(['like', 'type', $this->type])
            ->andFilterWhere(['like', 'jurisdiction', $this->jurisdiction]);

        return $dataProvider;
    }
}
