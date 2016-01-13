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
        $query = \common\models\Diary::find();
        $query->where(' `status` != :status', [
            ':status' => \common\base\Status::DELETE,
        ]);
        $request = Yii::$app->getRequest()->get();
        unset($request['r']);

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
        return $this->render('index', ['pages' => $pages, 'total' => $total, 'list' => $list]);
    }

    /**
     * Displays a single Diary model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Diary model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Diary();
        $query = \common\models\DiaryType::find();
        $data = $query->asArray()->all();
        $model->c_time = time();
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
                'data' => $data,
            ]);
        }
    }

    /**
     * Updates an existing Diary model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $query = \common\models\DiaryType::find();
        $data = $query->asArray()->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id, 'data' => $data]);
        } else {
            return $this->render('update', [
                'model' => $model,
                'data' => $data,
            ]);
        }
    }

    /**
     * Deletes an existing Diary model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionUpload()
    {
//        $path = "D:/wamp/www/space/uploads/";
        if(!isset($_FILES) || $_FILES['imgFile']['error'] || !$_FILES['imgFile']['name']){
            return json_encode(['error' => 1, 'message' => '文件上传失败！']);
        }
        if(!in_array($_FILES['imgFile']['type'], ['image/jpeg', 'image/png', 'image/gif', 'image/jpg'])){
            return json_encode(['error' => 1, 'message' => '文件类型符']);
        }
        $filePath = $_FILES['imgFile']['tmp_name'];
        $fileName = date('ymdHis', time()) . $_FILES['imgFile']['name'];
        if(!file_exists($filePath)){
            return json_encode(['error' => 1, 'message' => '临时文件不存在']);
        }

        $url = \common\extend\qiniu\Upload::getInstance()->uploadFile($fileName, $filePath);
        if (isset($url['key']) && $url['key'] ) {
            return json_encode(['error' => 0, 'url' => \Yii::$app->params['qiniu']['baseurl'] . $fileName]); ;
        } else {
            \common\base\TaskLog::getInstance()->writeLog(\yii\helpers\Json::encode($url));
        }
        var_dump($url);die;
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
