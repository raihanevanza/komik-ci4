<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="bodok">Daftar news</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-7">
            <form action="" method="post">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Masukan Pencarian" name="keyword">
                    <button class="btn btn-outline-secondary" type="submit" name="submit">Cari</button>
                </div>
        </div>
        </form>
    </div>
    <table class="table">
        <tbody>
            <?php foreach ($news as $n) : ?>
                <tr>
                    <td><img src="/gambar/<?= $n['sampul']; ?>" alt="" class="sampul-news"></td>
                    <td class="title-detail"><?= $n['title']; ?></td>
                    <td><a href="newsdetail/<?= $n['slug']; ?>" class="btn btn-success">Detail</a></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
</div>
</div>
<br></br>
<?= $this->endSection(); ?>