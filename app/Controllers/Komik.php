<?php

namespace App\Controllers;

use Error;

class Komik extends BaseController
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
        return view('komik/index', $data);
    }
    public function detail($slug)
    {

        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug)
        ];

        //jika tidak ada
        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik' . $slug . 'tidak ditemukan.');
        }
        return view('komik/detail', $data);
    }

    public function create()
    {

        $data = [
            'title' => 'Form Tambah Komik',
            'validation' => \Config\Services::validation()
        ];
        return view('komik/create', $data);
    }
    public function save()
    {
        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => '{field} komik harus diisi',
                    'is_unique' => '{field} komik sudah terdaftar'
                ]
            ],
            'penulis' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi'
                ]
            ],
            'sinopsis' => [
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
            // return redirect()->to('/komik/create')->withInput()->with('validation', $validation);
            return redirect()->to('/komik/create')->withInput();
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

        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'sinopsis' => $this->request->getVar('sinopsis'),
            'sampul' => $namaSampul,
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Ditambahkan');


        return redirect()->to('/komik');
    }

    public function delete($id)
    {
        $this->komikModel->delete($id);
        session()->setFlashdata('pesan', 'Data Berhasil Dihapus');
        return redirect()->to('/komik');
    }
    public function edit($slug)
    {

        $data = [
            'title' => 'Form Ubah Data Komik',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikModel->getKomik($slug)
        ];
        return view('komik/edit', $data);
    }
    public function update($id)
    {
        $komikLama = $this->komikModel->getKomik($this->request->getVar('slug'));
        if ($komikLama['judul'] == $this->request->getVar('judul')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[komik.judul]';
        }


        if (!$this->validate([
            'judul' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} komik harus diisi',
                    'is_unique' => '{field} komik sudah terdaftar'
                ]
            ],
            'penulis' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} harus diisi'
                ]
            ],
            'sinopsis' => [
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
            // return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput()->with('validation', $validation);
            return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
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


        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->komikModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'sinopsis' => $this->request->getVar('sinopsis'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Diubah');


        return redirect()->to('/komik');
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
        return view('komik/contact_admin', $data);
    }
}



       // $db = \Config\Database::connect(); $komik = $db->query("SELECT * FROM komik");foreach ($komik->getResultArray() as $row)d($row);//
