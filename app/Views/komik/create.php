<?= $this->extend('layout_admin/template'); ?>

<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col-9">
            <form class="form-create" action="/komik/save" method="post" enctype="multipart/form-data">
                <h2 class="createni-komik">Form Tambah Data Komik</h2>
                <?= csrf_field(); ?>
                <div class="row mb-3">
                    <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('judul')) ?
                                                                    'is-invalid' : ''; ?>" id="judul" name="judul" autofocus value="<?= old('judul'); ?>">
                        <div class=" invalid-feedback">
                            <?= $validation->getError('judul'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="penulis" class="col-sm-2 col-form-label">Penulis</label>
                    <div class="col-sm-10">
                        <textarea class="form-control  <?= ($validation->hasError('penulis')) ?
                                                            'is-invalid' : ''; ?>" id="penulis" name="penulis" value="<?= old('penulis'); ?>"></textarea>
                        <div class="invalid-feedback">
                            <?= $validation->getError('penulis'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="sinopsis" class="col-sm-2 col-form-label ">sinopsis</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control  <?= ($validation->hasError('sinopsis')) ?
                                                                    'is-invalid' : ''; ?>" id="sinopsis" name="sinopsis" value="<?= old('sinopsis'); ?>">
                        <div class=" invalid-feedback">
                            <?= $validation->getError('sinopsis'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="sampul" class="col-sm-2 col-form-label">Sampul</label>
                    <div class="col-sm-2">
                        <img src="/gambar/default.png" class="img-thumbnail img-preview">
                    </div>
                    <div class="col-sm-8">
                        <div class="custom-file">
                            <input type="file" class="form-control <?= ($validation->hasError('sampul')) ?
                                                                        'is-invalid' : ''; ?>" id="sampul" name="sampul" onchange="previewImg()">
                            <div class=" invalid-feedback">
                                <?= $validation->getError('sampul'); ?>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Tambah Data</button>
            </form>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>