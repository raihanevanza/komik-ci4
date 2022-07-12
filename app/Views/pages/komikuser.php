<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col-7">
            <form action="" method="post">
                <div class="form-search-1 input-group mb-3">
                    <input type="text" class="form-control" placeholder="Masukan Pencarian" name="keyword">
                    <button class="btn btn-outline-secondary" type="submit" name="submit">Cari</button>
                </div>
        </div>
        </form>
    </div>
    <table class="table table-dark table-striped">
        <thead>
            <tr>
                <th scope="col">No</th>
                <th scope="col">Sampul</th>
                <th scope="col">Judul</th>
                <th scope="col">Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1 + (5 * ($currentPage - 1)); ?>
            <?php foreach ($komik as $k) : ?>
                <tr>
                    <th scope="row"><?= $i++; ?></th>
                    <td><img src="/gambar/<?= $k['sampul']; ?>" alt="" class="sampul"></td>
                    <td><?= $k['judul']; ?></td>
                    <td><a href="pages/komik/<?= $k['slug']; ?>" class="btn btn-success">Detail</a></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <?= $pager->links('komik', 'komikuser_pagination'); ?>
</div>
</div>
</div>
<br></br>
<?= $this->endSection(); ?>