<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'NewsUser::index');
$routes->get('/news/index', 'News::index');
$routes->get('/pages/contact', 'pages::contact');
$routes->get('/pages/komikuser', 'pages::komikuser');
$routes->get('/pages/newsuser', 'pages::newsuser');
$routes->get('/komik/contact_admin', 'komik::contact_admin');
$routes->get('/komik/create', 'Komik::create');
$routes->get('/komik/edit/(:segment)', 'Komik::edit/$1');
$routes->get('/news/edit/(:segment)', 'News::edit/$1');
$routes->get('/news/create', 'News::create');
$routes->delete('/komik/(:num)', 'Komik::delete/$1');
$routes->delete('/news/(:num)', 'News::delete/$1');
$routes->get('/komik/(:any)', 'Komik::detail/$1');
$routes->get('/news/(:any)', 'News::detail/$1');
$routes->get('pages/komik/(:any)', 'KomikUser::detailuser/$1');
$routes->get('pages/news/(:any)', 'NewsUser::detail/$1');
$routes->get('/news/(:any)', 'Pages::newsdetail/$1');
$routes->get('/users', 'Admin\Users::index');


/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
