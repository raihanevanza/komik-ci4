<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <div class="card">
                <?php foreach ($news as $n) : ?>
                    <div class="row g-0">
                        <div class="col-md-12">
                            <div class="card-body">
                                <h2 class="mt-2"><?= $n['title']; ?></h2>
                                <h5 class="card-title"><?= $n['author']; ?></h5>
                                <p class="card-text"><b>Penulis : </b><?= $n['content']; ?></p>
                                <p class="card-text"><small class="text-muted"><b>Penerbit : </b><?= $n['status']; ?></small></p>
                                <a href="" class="btn btn-warning">Edit</a>
                                <a href="" class="btn btn-danger">Delete</a>
                                <br><br>
                                <a href="/komik">Kembali Ke Daftar Komik</a>
                            <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>