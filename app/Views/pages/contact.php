<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-8">
            <br></br>
            <form class="coa" action="/pages/save" method="post">
                <label class="formcontactext">Form Contact</label>
                <?php if (session()->getFlashdata('pesan_pesan')) : ?>
                    <div class="alert1 alert-success" role="alert">
                        <?= session()->getFlashdata('pesan_pesan'); ?>
                    </div>
                <?php endif; ?>
                <?= csrf_field(); ?>
                <div class="row mb-3">
                    <label for="nama_pesan" class="col-sm-2 col-form-label">Nama: </label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nama_pesan" name="nama_pesan" autofocus>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="email_pesan" class="col-sm-2 col-form-label">Email: </label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="email_pesan" name="email_pesan">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="pesan" class="col-sm-2 col-form-label">Pesan: </label>
                    <div class="col-sm-10">
                        <textarea type="text" class="form-control" id="pesan" name="pesan"></textarea>
                    </div>
                </div>
                <br> <button type="submit" class="btn-contact btn-primary">Tambah Data</button>
            </form>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>