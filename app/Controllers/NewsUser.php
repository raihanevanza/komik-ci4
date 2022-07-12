<?php

namespace App\Controllers;

use Error;

class newsUser extends BaseController
{
    protected $newsModel;
    protected $pagesModel;
    public function index()
    {
        $currentPage = $this->request->getVar('page_news') ? $this->request->getVar('page_news') :
            1;
        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $news =  $this->newsModel->search($keyword);
        } else {
            $news = $this->newsModel;
        }
        $data = [
            'title' => 'Daftar news',
            //'news' => $this->newsModel->getnews()
            'news' => $news->paginate(5, 'news'),
            'pager' => $this->newsModel->pager,
            'currentPage' => $currentPage
        ];
        return view('pages/newsuser', $data);
    }
}

       // $db = \Config\Database::connect(); $news = $db->query("SELECT * FROM news");foreach ($news->getResultArray() as $row)d($row);//
