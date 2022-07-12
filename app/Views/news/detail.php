<?= $this->extend('layout_admin/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <div class="detail-news2 card">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="/gambar/<?= $news['sampul']; ?>" class="card-img" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $news['title']; ?></h5>
                            <p class="card-text"><b>Author : </b><?= $news['author']; ?></p>
                            <p class="content-news card-text"><?= $news['content']; ?></small></p>

                            <a href="/news/edit/<?= $news['slug']; ?>" class="btn btn-warning">Edit</a>

                            <form action="/news/<?= $news['id']; ?>" method="post" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger" onclick="return confirm('apakah anda yakin?');">Delete</button>
                            </form>
                            <br><br>
                            <a href="/news">Kembali Ke Daftar news</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>