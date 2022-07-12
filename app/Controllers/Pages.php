<?php

namespace App\Controllers;

use App\Database\Migrations\News;
use App\Models\NewsModel;

class Pages extends BaseController
{
    protected $pagesModel;
    protected $newsModel;
    public function index()
    {
        return view()->to('/pages/newsuser');
    }

    public function about()
    {
        $data = [
            'title' => 'About me ni ngab'
        ];
        return view('pages/about', $data);
    }
    public function contact()
    {
        $data = [
            'title' => 'Contact Us'
        ];

        return view('pages/contact', $data);
    }
    public function save()
    {
        $this->pagesModel->save(
            [
                'nama_pesan' => $this->request->getVar('nama_pesan'),
                'email_pesan' => $this->request->getVar('email_pesan'),
                'pesan' => $this->request->getVar('pesan'),
            ]
        );

        session()->setFlashdata('pesan_pesan', 'Data Berhasil Ditambahkan');

        return redirect()->to('/pages/contact');
    }
    public function news()
    {
        $data = [
            'title' => 'News Terkini',
            'news' => $this->newsModel->getNews()
        ];
        return view('pages/news', $data);
    }
    public function gallery()
    {

        $data = [
            'title' => 'Our Gallery'
        ];
        return view('pages/gallery', $data);
    }
    public function detail($slug)
    {

        $data = [
            'title' => 'Detail news',
            'news' => $this->newsModel->getNews($slug)
        ];

        //jika tidak ada
        if (empty($data['news'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul news' . $slug . 'tidak ditemukan.');
        }
        return view('pages/detail', $data);
    }
}
