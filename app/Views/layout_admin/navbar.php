<nav class="navbar navbar-expand-lg navbar-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Komikid</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link" href="/news">News</a>
                <a class="nav-link" href="/komik/contact_admin">Contact</a>
                <a class="nav-link" href="/komik">List Comics</a>
            </div>
            <?php if (logged_in()) :  ?>
                <a class="nav-item nav-link" href="/logout">Logout</a>
            <?php else : ?>
                <a class="nav-item nav-link" href="/login">Login</a>
            <?php endif; ?>
        </div>
    </div>
</nav>