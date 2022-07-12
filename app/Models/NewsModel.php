<?php

namespace App\Models;

use CodeIgniter\Model;

class NewsModel extends Model
{
    protected $table      = 'news';
    protected $useTimeStamps = true;
    protected $allowedFields = ['title', 'slug', 'author', 'content', 'sampul'];

    public function getNews($slug = false)
    {
        if ($slug == false) {
            return $this->findAll();
        }
        return $this->where(['slug' => $slug])->first();
    }
    public function search($keyword)
    {
        return $this->table('news')->like('title', $keyword)->orLike('author', $keyword);
    }
}
