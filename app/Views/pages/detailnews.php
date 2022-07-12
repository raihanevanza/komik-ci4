<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="mt-2">Detail news</h2>
            <div class="card">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="/gambar/<?= $news['sampul']; ?>" class="card-img" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $news['title']; ?></h5>
                            <p class="card-text"><b>Author : </b><?= $news['author']; ?></p>
                            <p class="sinopsis card-text"><small class="text-muted"><?= $news['content']; ?></small></p>
                            <br><br>
                            <a href="/newsuser">Kembali Ke Daftar news</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>