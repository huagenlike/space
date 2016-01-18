<?php

namespace frontend\controllers;

use Yii;
use common\models\Diary;
use common\models\DiarySearch;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;


/**
 * DiaryController implements the CRUD actions for Diary model.
 */
class DiaryController extends Controller
{
    public $enableCsrfValidation = false;
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index', 'view', 'create', 'update', 'delete', 'upload'],
                        'allow' => true,
                        'roles' => ['@'],
                    ]
                ]
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Diary models.
     * @return mixed
     */
    public function actionIndex()
    {
        $model = new Diary();
        $query = $model::find();
        $query->where(' `status` != :status', [
            ':status' => \common\base\Status::DELETE,
        ]);
        $data = $this->diaryType();

        $types = $model->findBySql("select id,type,count(1) as num from diary group by type")->asArray()->all();
        foreach ($types as $typeVal) {
            $type_data[$typeVal['type']] = $typeVal['num'];
            $type_data[$typeVal['type']] = $typeVal['num'];
        }
        $param = [];
        foreach ($data as $key => $val) {
            $param[$key]['id'] = $key;
            $param[$key]['name'] = $val;
            $param[$key]['num'] = isset($type_data[$key]) ? $type_data[$key] : 0;
        }

        $request = Yii::$app->getRequest()->get();

        $type = '';
        if(!empty($request['type'])){
            $type = $request['type'];
            $query->andWhere(" `type` = :type", [
                ':type' => intval($type)
            ]);
        }
        $total = $query->count();

        $pageSize = 10;
        $pager = new \common\base\Page();
        $pager->pageName = 'page';
        $pageBarNum = 5;
        $pages = $pager->show($total, $pageSize, $pageBarNum);
        $page = isset($request['page']) ? $request['page'] : 1;
        $offset = $pageSize * ($page - 1);
        if ($offset >= $total) {
            $offset = $total;
        };
        $query->orderBy(' `id` DESC');
        $query->offset($offset);
        $query->limit($pageSize);
        $list = $query->asArray()->all();
        return $this->render('index', [
            'pages' => $pages,
            'total' => $total,
            'list' => $list,
            'data' => $param,
        ]);
    }

    /**
     * Displays a single Diary model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $diary = \common\models\Diary::findOne($id);
        $diary->click = $diary['click'] + 1;
        $diary->save();

        $data = $this->diaryType();

        return $this->render('view', [
            'model' => $this->findModel($id),
            'data' => $data
        ]);
    }

    public function diaryType()
    {
        $data = [];
        $query = \common\models\DiaryType::find();
        $result = $query->asArray()->all();

        foreach ($result as $val) {
            $data[$val['id']] = $val['name'];
        }
        return $data;
    }

    /**
     * Finds the Diary model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Diary the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Diary::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
