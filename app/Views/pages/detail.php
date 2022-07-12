<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <div class="detail-card card">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="/gambar/<?= $news['sampul']; ?>" class="card-img" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="title-mantep card-title"><?= $news['title']; ?></h5>
                            <p class="card-text"><b>Author : </b><?= $news['author']; ?></p>
                            <p class="content-news card-text"><?= $news['content']; ?></small></p>
                            <br><br>
                            <a href="/newsuser">Kembali Ke Daftar News</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>