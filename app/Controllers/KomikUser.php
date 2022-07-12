<?php

namespace App\Controllers;

use Error;

class KomikUser extends BaseController
{
    protected $komikModel;
    protected $pagesModel;
    public function index()
    {
        $currentPage = $this->request->getVar('page_komik') ? $this->request->getVar('page_komik') :
            1;
        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $komik =  $this->komikModel->search($keyword);
        } else {
            $komik = $this->komikModel;
        }
        $data = [
            'title' => 'Daftar Komik',
            //'komik' => $this->komikModel->getKomik()
            'komik' => $komik->paginate(5, 'komik'),
            'pager' => $this->komikModel->pager,
            'currentPage' => $currentPage
        ];
        return view('pages/komikuser', $data);
    }
    public function detailuser($slug)
    {

        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug)
        ];

        //jika tidak ada
        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik' . $slug . 'tidak ditemukan.');
        }
        return view('pages/detailuser', $data);
    }
}

       // $db = \Config\Database::connect(); $komik = $db->query("SELECT * FROM komik");foreach ($komik->getResultArray() as $row)d($row);//
