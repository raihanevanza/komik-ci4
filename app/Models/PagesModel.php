<?php

namespace App\Models;

use CodeIgniter\Model;

class PagesModel extends Model
{
    protected $table      = 'pesan';
    protected $primaryKey = 'id_pesan';
    protected $useTimeStamps = true;
    protected $allowedFields = ['nama_pesan', 'email_pesan', 'pesan'];

    public function search($keyword)
    {
        return $this->table('pesan')->like('nama_pesan', $keyword);
    }
}
