<?php

namespace App\Controllers;

use Error;

class News extends BaseController
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
        return view('news/index', $data);
    }
    public function detail($slug)
    {

        $data = [
            'title' => 'Detail news',
            'news' => $this->newsModel->getNews($slug)
        ];

        //jika tidak ada
        if (empty($data['news'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('title news' . $slug . 'tidak ditemukan.');
        }
        return view('news/detail', $data);
    }

    public function create()
    {

        $data = [
            'title' => 'Form Tambah news',
            'validation' => \Config\Services::validation()
        ];
        return view('news/create', $data);
    }
    public function save()
    {
        if (!$this->validate([
            'title' => [
                'rules' => 'required|is_unique[news.title]',
                'errors' => [
                    'required' => '{field} news harus diisi',
                    'is_unique' => '{field} news sudah terdaftar'
                ]
            ],
            'author' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi'
                ]
            ],
            'content' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/news/create')->withInput()->with('validation', $validation);
            return redirect()->to('/news/create')->withInput();
        }
        // ambil gambar
        $fileSampul = $this->request->getFile('sampul');
        // cek gambar
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.png';
        } else {
            // generate nama random img
            $namaSampul = $fileSampul->getRandomName();
            // pindahkan file ke folder gambar
            $fileSampul->move('gambar', $namaSampul);
            // ambil nama file
            // $namaSampul = $fileSampul->getName();
        }

        $slug = url_title($this->request->getVar('title'), '-', true);
        $this->newsModel->save([
            'title' => $this->request->getVar('title'),
            'slug' => $slug,
            'author' => $this->request->getVar('author'),
            'content' => $this->request->getVar('content'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Ditambahkan');


        return redirect()->to('/news');
    }
    public function delete($id)
    {
        $this->newsModel->delete($id);
        session()->setFlashdata('pesan', 'Data Berhasil Dihapus');
        return redirect()->to('/news');
    }
    public function edit($slug)
    {

        $data = [
            'title' => 'Form Ubah Data news',
            'validation' => \Config\Services::validation(),
            'news' => $this->newsModel->getNews($slug)
        ];
        return view('news/edit', $data);
    }
    public function update($id)
    {
        $newsLama = $this->newsModel->getNews($this->request->getVar('slug'));
        if ($newsLama['title'] == $this->request->getVar('title')) {
            $rule_title = 'required';
        } else {
            $rule_title = 'required|is_unique[news.title]';
        }


        if (!$this->validate([
            'title' => [
                'rules' => $rule_title,
                'errors' => [
                    'required' => '{field} news harus diisi',
                    'is_unique' => '{field} news sudah terdaftar'
                ]
            ],
            'author' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi'
                ]
            ],
            'content' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/news/edit/' . $this->request->getVar('id'))->withInput()->with('validation', $validation);
            return redirect()->to('/news/edit/' . $this->request->getVar('slug'))->withInput();
        }
        // ambil gambar
        $fileSampul = $this->request->getFile('sampul');
        // cek gambar
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            $namaSampul = $fileSampul->getRandomName();
            // pindahkan file ke folder gambar
            $fileSampul->move('gambar', $namaSampul);
        }


        $slug = url_title($this->request->getVar('title'), '-', true);
        $this->newsModel->save([
            'id' => $id,
            'title' => $this->request->getVar('title'),
            'slug' => $slug,
            'author' => $this->request->getVar('author'),
            'content' => $this->request->getVar('content'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Diubah');


        return redirect()->to('/news');
    }
    public function contact_admin()
    {
        $currentPage = $this->request->getVar('page_pesan') ? $this->request->getVar('page_pesan') :
            1;
        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $pesan =  $this->pagesModel->search($keyword);
        } else {
            $pesan = $this->pagesModel;
        }
        $data = [
            'title' => 'Daftar Pesan',
            'pesan' => $pesan->paginate(10, 'pesan'),
            'pager' => $this->pagesModel->pager,
            'currentPage' => $currentPage
        ];
        return view('news/contact_admin', $data);
    }
}



       // $db = \Config\Database::connect(); $news = $db->query("SELECT * FROM news");foreach ($news->getResultArray() as $row)d($row);//
