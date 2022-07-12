<?= $this->extend('layout_admin/template'); ?>

<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col-9">
            <form class="nana" action="/news/save" method="post" enctype="multipart/form-data">
                <h2 class="createni-news">Form Tambah Data news</h2>
                <?= csrf_field(); ?>
                <div class="row mb-3">
                    <label for="title" class="col-sm-2 col-form-label">Title</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('title')) ?
                                                                    'is-invalid' : ''; ?>" id="title" name="title" autofocus value="<?= old('title'); ?>">
                        <div class=" invalid-feedback">
                            <?= $validation->getError('title'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="author" class="col-sm-2 col-form-label">Author</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control  <?= ($validation->hasError('author')) ?
                                                                    'is-invalid' : ''; ?>" id="author" name="author" value="<?= old('author'); ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('author'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="content" class="col-sm-2 col-form-label ">Content</label>
                    <div class="col-sm-10">
                        <textarea area class="form-control  <?= ($validation->hasError('content')) ?
                                                                'is-invalid' : ''; ?>" id="content" name="content" value="<?= old('content'); ?>"></textarea>
                        <div class=" invalid-feedback">
                            <?= $validation->getError('content'); ?>
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
                            <input type="file" class="custom-file-input <?= ($validation->hasError('sampul')) ?
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