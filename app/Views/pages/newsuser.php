<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
    <div class="col-7">
        <form action="" method="post">
            <div class="form-search input-group mb-3">
                <input type="text" class="form-control" placeholder="Masukan Pencarian" name="keyword">
                <button class="btn btn-outline-secondary" type="submit" name="submit">Cari</button>
            </div>
    </div>
    </form>
</div>
<table class="table">
    <tbody>
        <?php $i = 1 + (5 * ($currentPage - 1)); ?>
        <?php foreach ($news as $n) : ?>
            <tr>
                <td><img src="/gambar/<?= $n['sampul']; ?>" alt="" class="sampul-news"></td>
                <td class="title-news"><?= $n['title']; ?></td>
                <td><a href="pages/detail/<?= $n['slug']; ?>" class="btn btn-success">Detail</a></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<?= $pager->links('news', 'komikuser_pagination'); ?>
</div>
</div>
</div>
<br></br>
<?= $this->endSection(); ?>