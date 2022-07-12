<?= $this->extend('layout_admin/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <table class="table-pesan-admin table table-dark table-striped">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Email</th>
                        <th scope="col">Pesan</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1 + (10 * ($currentPage - 1)); ?>
                    <?php foreach ($pesan as $p) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $p['nama_pesan']; ?></td>
                            <td><?= $p['email_pesan']; ?></td>
                            <td><?= $p['pesan']; ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <?= $pager->links('pesan', 'pesan_pagination'); ?>
        </div>
    </div>
</div>
<br></br>
<?= $this->endSection(); ?>