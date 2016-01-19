<?php

namespace frontend\controllers;

use Yii;
use common\models\Link;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * LinkController implements the CRUD actions for Link model.
 */
class LinkController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Link models.
     * @return mixed
     */
    public function actionIndex()
    {
        $link = new Link();
        $query = $link->find();
        $query->where('`status` = :status', [
            ':status' => \common\base\Status::NORMAL,
        ]);

        $request = Yii::$app->getRequest()->get();
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

        $query->orderBy(" `id` desc");
        $query->offset($offset);
        $query->limit($pageSize);
        $list = $query->asArray()->all();
        return $this->render('index', [
            'list' => $list,
            'pages' => $pages,
            'total' => $total,
        ]);
    }

    /**
     * Displays a single Link model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Finds the Link model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Link the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Link::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
