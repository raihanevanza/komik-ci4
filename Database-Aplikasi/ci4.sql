-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2021 pada 16.32
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'fad793db46a105a5bb1aacbb5e929dca', '2021-04-26 16:29:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'raihanevanza', NULL, '2021-04-26 16:08:13', 0),
(2, '::1', 'raihan.evanza20@gmail.com', 1, '2021-04-26 16:08:21', 1),
(3, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-26 16:29:46', 1),
(4, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-26 16:41:02', 1),
(5, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-27 03:41:48', 1),
(6, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-27 06:59:55', 1),
(7, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-27 09:00:46', 1),
(8, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-27 09:03:46', 1),
(9, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-27 09:06:45', 1),
(10, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-27 09:09:53', 1),
(11, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-27 09:10:15', 1),
(12, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-27 12:59:41', 1),
(13, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-28 03:34:12', 1),
(14, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-28 09:28:06', 1),
(15, '::1', 'raihan.evanza2036@gmail.com', 3, '2021-04-28 10:31:09', 1),
(16, '::1', 'raihanevanza20@gmail.com', 11, '2021-05-03 09:14:16', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(100) NOT NULL DEFAULT 'John Doe',
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `sinopsis` text NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `sinopsis`, `sampul`, `created_at`, `updated_at`) VALUES
(2, 'One Piece', 'one-piece', 'Oda', 'One Piece menceritakan tentang petualangan seorang anak bernama Monkey D. Luffy yang bercita-cita menjadi raja bajak laut dan menemukan \"One Piece\" setelah terinspirasi oleh Shanks. Sekitar 22 tahun sebelum cerita dimulai, seorang bajak laut bernama Gol D. Roger, atau lebih dikenal sebagai raja bajak laut dieksekusi mati di depan publik. Tepat sebelum kematiannya, ia mengumumkan kepada orang banyak tentang harta miliknya, One Piece, yang diklaim sebagai harta terbesar yang pernah ada.\r\n\r\nKematian Roger memicu dimulainya era \"Zaman Keemasan Bajak Laut\", ditandai turunnya banyak bajak laut hingga tak terhitung jumlahnya mencari harta karun. Luffy termasuk salah satu yang berniat menemukan One Piece dan menjadi raja bajak laut berikutnya, turun ke laut untuk memulai petualangannya serta mulai mengumpulkan beberapa kru sebagai teman seperjalanan.', '1619542651_02d068406a49f025ebdc.jpg', '2021-03-16 16:30:55', '2021-03-16 16:30:55'),
(3, 'Black Clover', 'black-clover', 'Yuki Tabata', 'bercerita tentang 2 anak yatim piatu bernama Asta dan Yuno. Mereka dibesarkan bersama di gereja yang sama dan sejak itu tak terpisahkan. Sebagai anak-anak, mereka berjanji akan saling bersaing untuk melihat siapa yang akan menjadi Kaisar Magus berikutnya.', '1619542668_fb2b9720ce048dd43dc0.jpg', NULL, NULL),
(4, 'Dragon Ball', 'dragon-ball', 'Akira Toriyama', 'bercerita tentang seorang bocah bernama Goku yang hidup di tengah gunung sendirian. Dia lalu bertemu dengan Bulma, seorang gadis muda genius, yang berusaha mengumpulkan 7 bola ajaib yang katanya bisa mengabulkan semua keinginan. Bola-bola tersebut dinamakan Dragon Ball.', 'dball.jpg', NULL, NULL),
(5, 'Dr.Stone', 'drstone', 'Boichi', '3700 tahun setelah kilatan cahaya misterius mengubah umat manusia menjadi batu, seorang remaja jenius bernama Senku Ishigami bangkit dan menemukan dirinya di dunia tempat di mana semua jejak peradaban manusia telah terkikis oleh waktu. Senku yang menyadari bahwa dirinya dibangkitkan dengan asam nitrat, menghidupkan kembali temannya yang bernama Taiju Oki dan teman sekelas mereka Yuzuriha Ogawa untuk membangun kembali peradaban mereka. Namun, Senku juga menghidupkan kembali seniman bela diri Tsukasa Shishio, yang menentang niat Senku dan memutuskan untuk menciptakan dunia baru yang bebas dari korupsi ala generasi lama. Kejadian tersebut meningkat menjadi Perang Batu antara Kerajaan Ilmu Pengetahuan pimpinan Senku, yang mendapatkan sekutu yaitu suku manusia yang rupanya adalah keturunan ayahnya dan lima astronaut yang kembali ke Bumi setelah proses pembatuan, dan Kekaisaran Kekuatan yang didirikan Tsukasa dengan cara menghidupkan kembali orang-orang kuat yang menjadi batu. Setelah Kerajaan Ilmu Pengetahuan Senku menang, mereka akhirnya menghadapi musuh baru, sebuah suku yang dikenal sebagai Kerajaan Pembatuan, yang memiliki perangkat yang digunakan untuk mengubah dunia menjadi batu 3700 tahun yang lalu.', 'drstone.jpg', NULL, NULL),
(13, 'Haikyuu', 'haikyuu', 'Haruichi Furudate', 'Haikyu merupakan anime sport yang layak ditonton untuk kamu yang suka dengan olahraga terutama bola voli. Anime ini menceritakan seorang siswa SMU KARASUNO Hinata Shouyo, Hinata yang gemar bermain voli karena melihat cara SMU KARASUNO bermain di kejuaraan nasional dan mengidolakan ace mereka yang disebut sebagai \"raksasa kecil\". Pada masa smp Hinata hanya bermain di kejuaraan satu kali dan dikalahkan oleh SMP kitagawa daichi dengan pemain andalan mereka \"raja lapangan\" Kageyama Tobio. Berniat untuk balas dendam kepada Kageyama, Hinata masuk ke SMU Karasuno. Tanpa disangka-sangka Kageyawa juga memutuskan untuk masuk ke SMU Karasuno. Bumbu - bumbu persaingan diantara mereka sudah terlihat dari awal episode. Seiring berjalannya waktu mereka dikenal dengan duo aneh karena lemparan dan spike mereka yang terlampau cepat. Hinata yang memiliki bakat dengan kecepatan dan reflek yang luar biasa sementara Kageyama yang memiliki bakat seorang setter jenius dapat membawa Karasuno ke langit nasional setelah beberapa tahun gagal menembus kejuaraan nasional. Kisah kocak kedua orang ini pun di perkuat dengan para kakak kelas yang \"terlalu bersemangat\".', 'haikyuu.jpg', NULL, NULL),
(26, 'Diamond No Ace', 'diamond-no-ace', 'Terajima Yuuji', 'Diamond No Ace atau Ace Of Diamong adalah anime tentang olahraga Baseball. Cerita ini berawal dari seorang murid SMP bernama Sawamura Eijun seorang Pithcer (Pelempar) dalam olahraga baseball, Sawamura bermain baseball untuk SMPnya untuk membuat kenang-kenangan maju ke tingkat nasional karena sekolah Sawamura akan dibongkar. Karena tidak memiliki pemain yang handal akhirnya tim Sawamura kalah, akan tetapi di akhir pertandingan, bakat melempar Sawamura sebagai pitcher keluar, dan hal itu membuat asisten pelatih dari SMA ternama SMA Seido. Karena tidak ingin berpisah dengan teman-temannya Sawamura awalnya menolak untuk bergabung, namun oleh asisten pelatih ini Sawamura diminta untuk mempertimbangkan dan mengundang Sawamura ke latihan baseball SMA Seido. Saat di SMA Seido, Sawamura terlihat kagum dengan cara mereka latihan, hingga perhatiannya tertuju pada seorang batter (pemukul) yang sedang memarahi pitcher karena lemparan yang begitu lemah. Merasa tidak tahan dengan hal itu, Sawamura meneriaki Batter tersebut dan akhirnya mereka berduel. Seorang Catcher yang dijuluki Catcher jenius bernama Miyuki akhirnya tertarik dan ikut dalam duel tersebut, seorang Catcher berperang penting dalam pertandingan, karena dia lah yang mengontrol lemparan pitcher agar menjadi \"lemparan sempurna\". Akhirnya Sawamura berhasil mengalahkan Batter tersebut dengan lemparannya. Sawamura yang telah mempertimbangkannya menyetujui untuk masuk ke SMA Seido. Perjalanan karir Baseball Sawamura dimulai disini. Sesaat setelah dia diterima di SMA Seido, Sawamura membuat beberapa masalah dimulai dari kejahilan kakak kelas Sawamura mengajak begadang hingga akhirnya dia terlambat latihan pagi, lalu datang ke barisan secara sembunyi-sembunyi hingga pelatih akan mengeluarkan Sawamura, merasa tidak terima, Sawamura mengajukan protes kepada pelatih, pelatih akhirnya memberi Sawamura ujian, yaitu melempar bola sampai batas lapangan, saat melakukan lemparan Sawamura salah menggunakan teknik lemparan yang harusny', '1619542981_b41fd9fdbbe7c39429f0.jpg', NULL, NULL),
(27, 'Solo Levelling', 'solo-levelling', 'Gee So-Lyung', '10 tahun yang lalu, setelah “Gerbang” yang terhubung ke dunia dengan dunia monster dibuka, beberapa hal yang biasa, setiap hari orang menerima kekuatan untuk memburu monster di dalam Gerbang. Mereka dikenal sebagai “Pemburu(Hunter)”. Namun, tidak semua Pemburu kuat. Nama saya Sung Jin-Woo, Hunter E-rank. Saya seseorang yang harus mempertaruhkan nyawanya di dugeon paling rendah, “Terlemah Di Dunia”.', '1619543039_26e28ac1d8fc815902c2.jpg', NULL, NULL),
(28, 'My Hero Academia', 'my-hero-academia', 'Horikoshi Kouhei', 'Manusia dilahirkan tak sama, sebuah realisasi midoriya izuku selama 4 tahun yang dialaminya saat di bully oleh teman sekelas-nya yang mempunyai kekuatan khusus. izuku adalah satu-satunya kasus yang langka dimana dia dilahirkan dengan tanpa kekuatan khusus. ini tak menghentikan izuku untuk mengejar mimpinya, sebuah mimpi untuk menjadi pahlawan hebat seperti \"the legendary All-might\". untuk menjadi pahlawan hebat yang tak diharapkannya, dia sekarang akan bergabung dengan salah satu sekolah dengan peringkat pertama dari kalangan utama \"hero acamedia\" di sebuah kota: yueiko. dengan bantuan dari idolanya \"All-Might\", akankah dia mendapatkan \"rank\" dan menjadi pahlawan sejati?', '1619543092_7dc1f1b5e0ff8861d345.jpg', NULL, NULL),
(29, 'One Punch Man', 'one-punch-man', 'One', 'Dalam hal ini baru aksi - komedi , segala sesuatu tentang seorang pemuda bernama Saitama berteriak \" RATA-RATA , \" dari ekspresi tak bernyawa , kepala botak , untuk fisik mengesankan nya . Namun , rekan -rata tampan ini tidak memiliki masalah rata-rata ... Dia benar-benar seorang superhero yang mencari lawan tangguh ! Masalahnya adalah , setiap kali ia menemukan kandidat yang menjanjikan ia mengalahkan ingus keluar dari mereka dalam satu pukulan . Dapat Saitama akhirnya menemukan seorang penjahat jahat cukup kuat untuk menantangnya ? Ikuti Saitama melalui aktivitas seksual lucu saat ia mencari orang-orang jahat baru untuk menantang !', '1619543133_d6fa82522fb460ed40f1.jpg', NULL, NULL),
(30, '8Kaijuu', '8kaijuu', 'Matsumoto Naoya', 'Seorang pria, yang tidak senang dengan pekerjaan yang harus ia lakukan dalam hidup, terlibat dalam peristiwa tak terduga …! Dia menjadi seorang Kaijuu, makhluk mengerikan, memberinya kesempatan baru untuk mencapai apa yang selalu dia impikan!', '1619546588_d2e0dfe4e7e6bc3c7487.jpg', NULL, NULL),
(31, 'Yuragisou no Yuuna-san', 'yuragisou-no-yuuna-san', 'Miura', 'Seri ini menceritakan tentang spesialis supernatural Fuyuzora Kogarashi yang menjadi gelandangan akibat sering terlibat dengan kasus supernatural. Setelah menyelesaikan sebuah kasus dia mendapatkan rekomendasi untuk tinggal di onsen yang sangat murah akibat reputasi berdarah dari penginapan tersebut.', '1619546702_6cb98e2ed608009c0a05.jpg', NULL, NULL),
(32, 'Youkai Shoujo', 'youkai-shoujo', 'Funatsu Kazuki', 'Bekerja paruh waktu di sebuah toko umum di Akiba, Yatsuki bertemu seorang gadis cantik bernama Rokka. Apa yang membuat Yatsuki istimewa adalah kemampuannya untuk melihat hantu. Tapi hantu tidak seperti monster, mereka sebagian besar tidak berbahaya. Setidaknya tokoh kita dapat hidup dengan hanya mengabaikan mereka. Yatsuki tidak pernah percaya pada monster sampai hari ketika ia bertemu dengan gadis bernama Rokka. Gadis ceria ini tampaknya memiliki rahasia.', '1619546795_509351e8f81fd3f54de3.jpg', NULL, NULL),
(33, 'Yongbi', 'yongbi', 'Ki Woon Ryu', 'Yongbi atau lengkapnya Yongbi The Invincible juga merupakan manhwa action buatan Ryu Ki-woon dan Moon Jung-hoo (sebelum Gosu). Komik ini bercerita soal petualangan bounty hunter bernama Yongbi. Ia terjebak dalam sengketa harta dan senjata sakti yang diperebutkan oleh semua tokoh dunia persilatan.', '1619546874_b126f3d2e8b541fc064a.jpg', NULL, NULL),
(34, 'Tokyo Ghoul: re', 'tokyo-ghoul-re', 'Ishida Sui', 'Sinopsis: Di Tokyo, sebuah keputusasaan berubah adalah mengintai. Misterius pemakan manusia makhluk, hantu, merajalela di Tokyo. Hidup tersembunyi selama kehidupan sehari-hari, keberadaan hantu, yang identitasnya benar terselubung misteri, permanen meneror warga Tokyo. Pada CCG, satu-satunya lembaga yang menyelidiki dan menyelesaikan kasus-kasus yang berhubungan dengan hantu, Haise Sasaki telah ditetapkan misi tertentu. Sementara berurusan dengan anak-anak empat masalah nakal dikenal sebagai \"Quinx\", hari Haise tentang penderitaan dimulai ...?!', '1619546914_f7d8ca5999776755925b.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-04-05-074647', 'App\\Database\\Migrations\\News', 'default', 'App', 1617609710, 1),
(2, '2021-04-05-092231', 'App\\Database\\Migrations\\Gallery', 'default', 'App', 1617615176, 2),
(3, '2021-04-26-174919', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1619460172, 3),
(5, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1619470038, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL DEFAULT 'John Doe',
  `content` varchar(5000) DEFAULT NULL,
  `sampul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `author`, `content`, `sampul`) VALUES
(11, 'Spoiler One Piece 1000, Luffy berhasil hantam tubuh Kaido di atap Istana Onigasima', 'spoiler-one-piece-1000-luffy-berhasil-hantam-tubuh-kaido-di-atap-istana-onigasima', 'Raihan Evanza', 'KONTAN.CO.ID - JAKARTA. One Piece 1000 dijadwalkan terbit pada awal bulan Januari 2021. Spoiler One Piece 1000, pecahnya perang besar! Luffy, Zoro, Law, Kid, Killer vs Big Mom dan Kaido di atas Onigashima.   Para penggemar manga dan anime pasti sudah tidak asing dengan One Piece. Maklum saja, One Piece memang salah satu manga terpopuler di Jepang dan juga negara lainnya termasuk Indonesia. Sekedar info, One Piece memulai debutnya pada tahun 1997 dengan terbit secara reguler di majalah Weekly Shonen Jump. Sudah terbit lebih dari 20 tahun, One Piece masih jadi idola para penggemar manga dan anime.   Eiichiro Oda, sang kreator One Piece berhasil menyajikan jalan cerita dan karakter yang menarik.   Saat ini kisah One Piece sedang seru-serunya. Luffy dan teman-temannya berada di negeri Wano. Luffy bergabung dengan para samurai anak buah Oden untuk mengalahkan Kaido.  Untuk pekan ini Eiichiro Oda mengambil waktu istirahat yang cukup lama. Melansir dari Manga Plus, One Piece 1000 dijadwalkan terbit pada 3 Januari 2021.   Belakangan spoiler One Piece 1000 sudah banyak beredar di dunia maya. Anda sudah penasaran dengan spoiler One Piece 1000?   Ini spoiler One Piece 1000 yang dikutip dari situs Reddit.  Setelah banyak dihadang musuh, Luffy akhirnya berhasil mencapai atap istana Onigashima berkat bantuan kelompok Shishilian dan Inuarashi.   Marco memblokir serangan King dan Queen yang ditujukan kepada Zoro. Marco melempar Zoro ke atap istana.   Di dalam istana, Yamato mengatakan bahwa menurut buku catatan Oden, para bajak laut muda akan tiba di dunia baru dalam 20 tahun.   Ace mengingat sesuatu yang pernah LUffy sampaikan tentang mimpinya. Ace meminta Yamato tidak tertawa dengan ceritanya. Yamato mengatakan tidak akan tertawa karena raja bajak laut mengatakan hal yang sama.   Yamato memberi Ace kartu Vivre.   Luffy, Zoro, Law, Kid dan Killer ada di atap istana Onigashima. Mereka siap bertempur dengan Kaido dan Big Mom.   Kaido bertanya kepada Luffy ', '1619600416_ce33eabfb5fc2d4b04a6.jpg'),
(16, 'Sasuke Kenalkan Senjata Kunai Boruto di Novel Terbaru', 'sasuke-kenalkan-senjata-kunai-boruto-di-novel-terbaru', 'Ahmad', 'Jakarta - Novel Sasuke Shinden yang rilis di Amerika Serikat membawa fakta cerita terbaru dalam semesta Konohagakure. Selama ini, Boruto Uzumaki diketahui punya dendam terhadap ninja-ninja yang memanfaatkan sains dalam penggunaan senjata. Teknologi yang semakin pesat, tak bisa dihindari para ninja di desa Konoha. Itulah sebabnya Sasuke dan klan Uchiha mengenalkan kunai terbaru kepada semua warga desa.  Kunai adalah peralatan berukuran kecil yang biasa digunakan oleh para ninja. Senjata jenis ini menyerupai pisau yang ujungnya berbentuk runcing dan sering digunakan oleh ninja untuk latihan menempel di dinding. Nah, jika melihat bentuk kunai, pastinya hanya ada dalam berbagai cerita para ninja.  Dalam novel Sasuke Shinden yang berlatarkan timeline Boruto, dalam salah satu bagian diceritakan Sarada tengah menghabiskan waktu bersama ayahnya.  Saat Sarada tengah bergabung dengan rekan-rekannya, Sasuke tiba. Ia memberitahu anak-anak ada kunai terbaru yang diciptakan oleh ninja ilmiah dengan alasan khusus.  Sarada memperhatikan kunai milik ayahnya berwarna merah. Senjata tersebut terbuat dari tembaga dan khusus untuk menghantarkan listrik.  Kunai milik ayah Sarada juga diketahui lebih baik dari jenis kunai lainnya yang ada di Konohagakure.  ', '1619543262_4bf3944e50d45d389b52.jpeg'),
(17, 'Serialisasi Manga Hitori Bocchi no Marumaru Seikatsu Berakhir', 'serialisasi-manga-hitori-bocchi-no-marumaru-seikatsu-berakhir', 'Hanabi', 'Serialisasi manga, “Hitori Bocchi no Marumaru Seikatsu” karya Katsuwo resmi berakhir hari ini di majalah Comic Dengeki Daioh “g” edisi Juni 2021 volume ke-92. ASCII Media Works juga mempersiapkan penerbitan volume kedelapan atau terakhirnya pada Juni 2021. Volume kedelapan ini akan terbagi menjadi edisi reguler dan spesial.  Serialisasi manga “Hitori Bocchi no Marumaru Seikatsu” diluncurkan Katsuwo di majalah Comic Dengeki Daioh “g” pada 27 September 2013. Volume pertamanya mulai diterbitkan oleh ASCII Media Works pada 27 November 2014.  Adaptasi anime “Hitori Bocchi no Marumaru Seikatsu” dikerjakan oleh studio C2C (Majo no Tabitabi). Takebumi Anzai menjadi sutradara dan Jukki Hanada menulis skrip serialnya. Kii Tanaka berperan sebagai desainer karakter sekaligus kepala sutradara animasinya.  Bersamaan dengan manga ini, Katsuwo juga mengerjakan serialisasi manga “Mitsubishi Colors” yang berjalan di majalah Dengeki Daioh pada 26 Juli 2014 hingga 27 Juni 2020. Manga ini telah diadaptasi menjadi anime oleh studio SILVER LINK (KimiSen). Mangaka ini juga menjalankan serial manga “Kin no Tamago” pada 9 September 2015 dan berakhir pada 9 Februari 2017 di majalah Bessatsu Shounen Magazine.', '1619543278_c524a1cacb135fb7201f.jpg'),
(18, 'Trailer Terbaru Film Kiniro Mosaic: Thank You!! Diperlihatkan', 'trailer-terbaru-film-kiniro-mosaic-thank-you-diperlihatkan', 'Rena', 'Situs resmi film anime dari manga karya Yui Hara, “Kiniro Mosaic: Thank You!!“ mengungkap trailer terbarunya pada Selasa petang (27/04). Dalam trailer ini diperdengarkan lagu tema “Kin`iro Rhodanthe” yang dibawakan oleh unit seiyuu Rhodanthe*. Film ini dipastikan akan diputar di bioskop di Jepang pada Jum’at, 20 Agustus 2021. Munenori Nawa (Kiss x Sis) yang menjadi sutradara episode musim pertamanya kini menempati posisi sutradara utama film ini. Yuniko Ayana (Bakuman) kembali mengisi pos yang sama sebagai penyusun skrip cerita seperti di musim pertama dan keduanya. Kazuyuki Ueda (Hinako Note) juga kembali sebagai desainer karakternya. Studio Gokumi dan AxsiZ akan menggarap produksi animasinya.Manga Kiniro Mosaic berkisah tentang Shinobu, perempuan berusia 15 tahun, yang tampak sebagai gadis Jepang polos yang pernah mengikuti homestay di Britania Raya. Walau setelah kembali Jepang, ia sering rindu dengan waktunya saat di luar negeri. Suatu hari, sebuah surat datang dari Alice, gadis yang juga adalah anak dari keluarga homestary-nya dahulu di Britania Raya. Surat itu tertulis, “Shinobu, Aku datang ke Jepang!” Kedatangannya membuat hari-hari Shinobu dipenuhi dengan komedi ringan bersama dengan Alice, Aya, Karen, Youko dan kawan-kawan lainnya. Serial Kiniro Mosaic diluncurkan Yui Hara di majalah Manga Time Kirara Max pada April 2010 dan tamat pada 19 Maret 2020. Houbunsha telah merilis volume ke-11 atau terakhir manga-nya pada 27 April 2020. Yen Press juga menerbitkan manga ini dalam bahasa Inggris, dan volume ke-10 telah diterbitkan pada 17 Maret 2020. Manga spesial berjudul “Kiniro Mosaic Best Wishes” tampil di majalah Manga Time Kirara Max pada terbitan Juli 2020.  Adaptasi anime dari serial 4-koma ini pertama kali tayang pada musim panas 2013 oleh Studio Gokumi sebagai studio animasinya. Musim keduanya kemudian tayang pada musim semi 2015. Kemudian sebuah film berdurasi 50 menit yang berformat OVA diputar di Jepang pada 12 November 2016.', '1619547083_20a0fabf24c47be4a531.jpg'),
(19, 'Laris Manis! Manga My Hero Academia Terjual 50 Juta Eksemplar di Dunia', 'laris-manis-manga-my-hero-academia-terjual-50-juta-eksemplar-di-dunia', 'Tia Agnes', 'Jakarta - My Hero Academia semakin menunjukkan taringnya di industri manga internasional. Penerbit Shueisha mengumumkan manga yang diciptakan oleh Kohei Horikoshi laku keras terjual sebanyak 50 juta eksemplar di dunia. Wah, mantap! Angka 50 juta eksemplar itu terhitung termasuk salinan cetak dan digital. Sirkulasi untuk negara Jepang melebihi angka 37 juta kopi, sisanya adalah di luar Jepang sebanyak 13 juta eksemplar.  Pada 4 Januari 2021, manga My Hero Academia masih terhitung terjual sebanyak 30 juta eksemplar saat perilisan volume ke-29. Penerbit Shueisha sebelumnya menyebutkan pada 2021 sebagai momen terpenting bagi My Hero Academia. Ada sejumlah agenda yang rencananya diterbitkan atau dirilis sepanjang tahun ini.  Misalnya saja musim anime kelima yang tayang perdana di Jepang pada 27 Maret, di bulan April ada pameran seni pertama waralaba yang digelar, serta film anime ketiga yang tayang pada 6 Agustus 2021.  \"Tahun ini akan menjadi momennya bagi My Hero Academia untuk bersinar dan penjualan manganya pun meroket tajam,\" tulis keterangan Shueisha.  Komikus Kohei Horikoshi meluncurkan serial manga shonen (untuk pembaca laki-laki) di majalah mingguan Shonen Jump Shueisha pada Juli 2014. VIZ Media pun merilis manga dalam bahasa Inggris secara digital dan cetak di Amerika Utara.  Layanan situs MangaPlus Shueisha juga menerbitkan manga dalam bahasa Inggris secara digital. My Hero Academia menceritakan tentang Izuku Midoriya, seorang anak lelaki tanpa kekuatan super atau yang disebut quirk. Ia pun bercita-cita untuk menjadi seorang pahlawan.  Kemudian, Izuku bertemu dengan pahlawan terhebat di Jepang, yang membagi quirk miliknya kepada Izuku setelah melihat potensinya. Izuku masuk ke dalam sebuah SMA prestisius yang dikhususkan untuk para pahlawan muda yang sedang dalam pelatihan.', '1619547238_7c041d73799b5c90af0d.jpeg'),
(20, 'Kaiju Nomor 8 Jadi Manga Tercepat yang Laku hingga 1 Juta Eksemplar', 'kaiju-nomor-8-jadi-manga-tercepat-yang-laku-hingga-1-juta-eksemplar', 'Tia Agnes', 'Jakarta - Industri manga Jepang mengalami perkembangan yang cepat saat pandemi COVID-19. Salah satu manga yang tengah dibicarakan kali ini adalah Kaiju Nomor 8 karya mangaka (komikus) Naoya Matsumoto. Manga Kaiju Nomor 8 sukses terjual satu juta eksemplar di versi cetak sejak rilis volume kompilasi kedua pekan lalu. Serial yang diterbitkan oleh Shonen Jump+ melampaui tonggak sejarah versi penerbit.  Dilansir dari Anime News Network, Senin (8/3/2021), ketika manga Kaiju Nomor 8 rilis langsung menjadi tren di linimasa Twitter Jepang. Padahal usia manga tersebut masih terbilang baru. \"Sejak perilisannya, Kaiju Nomor 8 menjadi manga tercepat yang pernah mencapai tonggak sejarah di layanan Shonen Jump+,\" tulis keterangan Shonen Jump.  Naoya Matsumoto meluncurkan manga pada Juli 2020 di situs Shonen Jump+ Shueisha. Buku volume cetakan pertama dicetak pada 4 Desember 2020 dan dua cetakan lainnya pun terbit. Perusahaan VIZ Media melisensikan manga tersebut secara digital dan merilisnya dalam bahasa Inggris tahun ini. Penerbit pun mendeskripsikan tentang cerita dari manganya.  \"Seorang pria melakukan pekerjaan yang jauh dari impian masa kecilnya terjebak dalam situasi yang tidak terduga. Menjadi monster,\" tulis keterangan VIZ Media. Dalam manga, latar ceritanya adalah dunia yang diserang oleh Kaiju atau monster khas dari Jepang. Dua orang anak, Kafka Hibino, dan Mina Ashiro, kehilangan kota mereka dan bersumpah untuk bergabung pada pasukan pertahanan.  Mina pun menjadi pahlawan nasional berkat jasanya melawan Kaiju. Sementara Kafka yang kini berusia 33 tahun gagal lolos seleksi dan hanya menjadi kru pembersih bangkai Kaiju.  Kisah tak berhenti sampai di situ saja. Suatu hari, Kafka yang sedang membersihkan Kaiju terinfeksi oleh salah satu sel Kaiju dan mampu mengubah dirinya menjadi monster Kaiju.  Meski ia menggunakan wujud barunya untuk melindungi warga sipil, tapi Kafka diburu oleh pasukan pertahanan. Ternyata, bukan hanya Kafka saja yang punya kekuataan Kaiju tapi banyak orang lainnya.  Serial Kaiju No 8 atau judul dalam bahasa Inggris Monster #8 juga dinominasikan untuk penghargaan Manga Taisho yang ke-14.', '1619547383_f8b5ea3d706a338e3e6b.jpg'),
(21, 'Blue Period. Tayangkan PV Perdana Animenya', 'blue-period-tayangkan-pv-perdana-animenya', 'Reza', 'Situs resmi untuk adaptasi anime televisi dari manga “Blue Period.” karya Tsubasa Yamaguchi pada hari Rabu ini telah menayangkan PV perdana dan seiyuu para karakter sentralnya. Anime akan tayang Oktober nanti. Seiyuu yang akan hadir adalah: Hiromu Mineta sebagai Yatora Yaguchi Yumiri Hanamori sebagai Ryuji Ayukawa Daiki Yamashita sebagai Yotasuke Takahashi Kengo Kawanishi sebagai Haruka Hashida Yume Miyamoto sebagai Maki Kuwana. Koji Masunari (Read or Die, Kamichu!, Magi: The Labyrinth of Magic) adalah sutradara utama, sedangkan Katsuya Asano (Yu-Gi-Oh! VRAINS) menyutradarai anime di Seven Arcs. Reiko Yoshida (K-ON!, Tamako Love Story, Liz and the Blue Bird) menulis dan mengawasi skrip anime-nya. Tomoyuki Shitaya (Bakuman., Shokugeki no Soma) mendesain karakternya. Manga “Blue Period.” diluncurkan Tsubasa Yamaguchi di majalah Monthly Afternoon pada 24 Juni 2017. Kodansha yang menggunakan label Afternoon KC mulai menerbitan volume pertamanya pada 22 Desember 2017. Per 23 September 2020, penerbitannya telah mencapai volume kedelapan. Volume kesembilannya sudah terbit pada 21 Januari 2021.  Manga ini sebelumnya memenangkan hadiah utama dalam penghargaan Tsutaya Comic Awards 2018 dalam kategori pendatang baru. Kemudian manga ini menempati posisi keempat dalam Kono Manga ga Sugoi! 2019 kategori laki-laki. Di tahun ini, karya ini mendapatkan hadiah utama dalam penghargaan Manga Award 2020, Manga Taisho 13 2020, dan Kodansha 44th Manga Award.  Seri ini menceritakan Yatora Yaguchi, siswa SMA yang “sempurna” dengan nilai bagus dan banyak teman. Suatu hari dia berkeliaran di ruang seni, dan satu-satunya lukisan di sana membangunkannya pada keindahan yang tidak pernah dikenalnya. Tanpa pengalaman dan latar belakang di seni, dia mencoba masuk ke universitas seni dan menghadapi sebuah dunia yang tidak kenal ampun.', '1619598967_19dc5880de783b69b1e1.jpg'),
(22, 'Anime dari Manga Megami-ryou no Ryoubu-kun Hadir di Musim Panas', 'anime-dari-manga-megami-ryou-no-ryoubu-kun-hadir-di-musim-panas', 'Hana', 'Situs adaptasi anime dari manga “Megami-ryou no Ryoubou-kun” karya Hino Ikumi mengumumkan musim tayangnya pada hari Rabu (28/04). Anime komedi ini dipastikan akan mengudara pada Juli 2021. Info berikutnya terkait video promosi dan visual terbarunya akan diungkap dalam waktu dekat.  Jajaran seiyuu karakter:  Misuzu Yamada sebagai Nagumo Koushi, Ayaka Nanase sebagai Saotome Atena, Chiaki Takahashi sebagai Mineru Wachi, Yuki Yomichi sebagai Serena Hozumi, Risako Murai sebagai Kiriya Senshou, Asaki Fukuyama sebagai Frey, Hikaru Nanjou sebagai Sutea Kouroya. Jajaran staf utama:  Sutradara: Shunsuke Nakajuu (Animator kunci Sword Art Online: Alicization) Komposisi Seri: Masashi Suzuki (Oda Nobuna no Yabou) Desainer Karakter: Maiko Okada (desainer properti Ga-Rei: Zero) Studio: Asread (Mirai Nikki) Lagu tema pembuka berjudul “Naughty Love” akan dibawakan oleh unit Megami Ryousei. Kemudian Megami Ryousei+α membawakan lagu tema penutup “Zettai! Kimi Sengen“. Megami Ryousei adalah unit seiyuu karakter anime ini yang diantaranya Misuzu Yamada, Chiaki Takahashi, Risako Murai, Asaki Fukuyama, dan Yuki Yomichi. Penambahan “+α” merupakan simbol penambahan seiyuu Hikaru Nanjou pada unit tersebut.', '1619599300_9ccb1f7931e6e39d34d9.jpeg'),
(23, 'Bikin Heboh, Anime Dota: Dragon\'s Blood Rupanya Melibatkan Penulis Film Thor', 'bikin-heboh-anime-dota-dragons-blood-rupanya-melibatkan-penulis-film-thor', 'Ruly', 'Liputan6.com, Jakarta - Pecinta serial animasi baru-baru ini dibuat heboh dengan kehadiran anime Dota: Dragon\'s Blood yang dirilis melalui platform Netflix. Bukan tanpa sebab, ini merupakan anime pertama yang diadaptasi dari gim DOTA (Defense of the Ancient).  Terlebih, kisah Dota: Dragon\'s Blood yang berjumlah delapan episode, diadaptasi langsung dari gim video Dota 2 yang diluncurkan pada 2013 lalu. Berkisah tentang Ksatria Naga Davion yang bisa berubah dari manusia berzirah menjadi sosok naga mematikan. Menelusuri lebih jauh, rupanya skenario dalam Dota: Dragon\'s Blood merupakan buah karya dari Ashley Edward Miller, penulis untuk dua film adaptasi komik Marvel, Thor dan X-Men: First Class. Ashley Edward Miller juga sempat terlibat dalam serial Andromeda, Terminator: The Sarah Connor Chronicles, dan Fringe yang cukup populer selama masa penayangannya.', '1619599507_cd2279f3f0a8b4433536.jpg'),
(24, 'Attack on Titan Season 4 Lanjut ke Bagian Kedua Tahun Depan', 'attack-on-titan-season-4-lanjut-ke-bagian-kedua-tahun-depan', 'Ruly', 'Liputan6.com, Jakarta - Penayangan anime Attack on Titan Season 4 (Final Season) telah berakhir di episode 16 pada Senin (29/3/2021). Namun begitu, bukan berarti anime ini sudah berakhir secara keseluruhan.  Melansir Anime News Network, baru-baru ini, diumumkan bahwa anime Attack on Titan Season 4 masih akan berlanjut ke bagian kedua yang rencananya ditayangkan pada Musim Dingin 2022. Diketahui, anime Season 4 Episode 16 baru menggambarkan manga Attack on Titan Chapter 116 dari 139 chapter yang sudah diterbitkan. Masih ada 23 chapter yang belum diadaptasi menjadi anime. Tampaknya akhir manga Attack on Titan akan terbit lebih dahulu ketimbang anime Season 4 episode pertama. Pasalnya, manga ini diumumkan bakal tamat pada satu chapter lagi.', '1619599645_06f140ecc5e884ad25bf.jpg'),
(27, 'Madoka Magica Umumkan Film Baru!', 'madoka-magica-umumkan-film-baru', 'Anya', 'Ada kabar baik nih bagi teman-teman penggemar Madoka Magica! Ya, dalam online event untuk peringatan ulang tahun ke-10 anime Puella Magi Madoka Magica pada Minggu  (25/4) lalu bahwa franchise satu ini akan mendapatkan sebuah adaptasi film baru berjudul Gekijōban Mahō Shōjo Madoka Magica: Walpurgis no Kaiten (Turning the Tide of Walpurgis). Film ini akan menjadi sekuel resmi dari film Puella Magi Madoka Magica The Movie Part 3: Rebellion yang dirilis pada Oktober 2013 silam. Film ini memiliki tagline: \"さあ、物語をつづけましょう/ Now, let\'s continue the story.\" Film anime ini akan menampilkan staf yang sama dengan seri anime orisinal dan film pendahulunya, termasuk kreator asli Magica Quartet, chief director Akiyuki Simbo, scriptwriter Gen Urobuchi dari Nitroplus, original character designer Ume Aoki, animation character designer Junichirō Taniguchi, komposer Yuki Kajiura, alternate space designer Gekidan Inu Curry, dan studio animasi SHAFT.', '1619601037_47ed428af0aca86cab05.jpg'),
(28, 'Intip Interview Tatsuki Fujimoto, Mangaka Dibalik Chainsaw Man!', 'intip-interview-tatsuki-fujimoto-mangaka-dibalik-chainsaw-man', 'Putri Alfiati', 'Tatsuki Fujimoto, mangaka Chainsaw Man, mampu membuat para pembaca terkesima dengan estetika dan penceritaannya. Chainsaw Man merupakan manga yang diserialisasikan di majalah Weekly Shounen Jump milik Shueisha dari 2018 hingga 2020. Part 1 dari serial ini memiliki total 11 volume dan akan berlanjut ke Part 2. Adaptasi anime Chainsaw Man juga telah diumumkan dan akan dianimasikan oleh studio MAPPA. Anime News Network berkesempatan mewawancarai Fujimoto tentang pembuatan manga, serta pendapatnya tentang adaptasi anime Chainsaw Man yang akan datang. Seberapa banyak cerita yang sudah direncanakan sejak awal? Penggemar menemukan banyak hint di bab awal yang berhubungan dengan cerita bab terakhir dari part 1 (Misalnya, Makima kemampuan mengenali orang dari aroma mereka)\r\n\r\nAda beberapa hal yang sudah saya pikirkan sejak awal, namun ada juga hal-hal yang saya tambahkan kemudian. Saat saya membuat Chainsaw Man, saya tidak memiliki rencana khusus untuk memberikan kata-kata yang terdengar bermakna ataupun hal-hal yang terasa \"tidak menyenangkan\". Ada lebih banyak hal yang saya biarkan tidak jelas agar bagian kedua cerita lebih mudah dikerjakan, karena itulah ada banyak hal yang tidak bisa saya tambahkan. Karena kekerasan dan dark humor-nya, Chainsaw Man sering dianggap sebagai \"manga Jump yang tidak seperti Jump\". Bagaimana awalnya Anda mengajukan serial ini ke majalah Jump?\r\n\r\nSaya selalu ingin membuat serial di Jump. Jadi saya merasa jika saya membuat serialisasi di sana, ada risiko bahwa karya saya tidak akan menonjol bila mirip dengan karya Jump yang sudah ada. Karena itu, saya mencoba mempertahankan sebagian besar ciri khas saya sebagai pencipta, lalu membuat struktur dan karakter yang mirip dengan manga Jump biasanya.\r\n\r\nStruktur perilisan serinya juga sangat berbeda dari seri Jump lain yang biasanya diterbitkan dalam kurun waktu bertahun-tahun. Walaupun part 2 Chainsaw Man telah diumumkan untuk dirilis di Jump +, tidak biasa rasanya melihat seri yang sangat sukses harus berakhir hanya dalam 2 tahun. Apa yang menyebabkan Anda mengambil keputusan itu?\r\n\r\nMungkin karena saya ingin Anda melihat Chainsaw Man Part 2 yang akan datang nanti sebagai seri yang sama sekali berbeda dengan Part 1.\r\n\r\nAnda sering menyebut judul manga lain di komentar penulis di majalah, adakah manga yang menginspirasi Anda dalam pembuatan Chainsaw Man?\r\n\r\nAda begitu banyak karya yang saya ambil inspirasinya sehingga saya tidak akan bisa menulis semuanya di sini. Ketika saya membuat serial, saya sangat sibuk, tetapi saya memastikan untuk menonton sebanyak mungkin tontonan baru. Dan saya juga mengambil cukup banyak inspirasi dari tontonan yang saya lihat.\r\n\r\nSerial yang Anda buat sebelumnya, Fire Punch, diserialisasikan melalui Jump+ selama 2 tahun. Apakah ada perbedaan besar dalam mengerjakan manga antara majalah web dan majalah kertas seperti Weekly Shonen Jump?\r\n\r\nTidak ada banyak perbedaan. Ada beberapa penggambaran yang terhenti selama tahap draf kasar, tetapi saya diizinkan melakukan apa pun yang saya inginkan ketika menyangkut cerita. Saya tidak berpikir ada banyak perbedaan antara Jump dan Jump +.\r\n\r\nBagaimana perasaan Anda tentang adaptasi anime yang baru-baru ini diumumkan? Aspek seni dan cerita apa yang ingin Anda lihat dalam versi animasi? Bagian mana yang menurut Anda akan sulit atau menantang untuk dianimasikan?\r\n\r\nSaya telah berbicara dengan orang-orang yang menangani animenya. Saya merasa bahwa mereka adalah orang-orang yang dapat diandalkan, jadi saya tidak perlu khawatir sama sekali. Saya suka anime, tapi saya tidak punya pengalaman dalam membuatnya, jadi saya serahkan semuanya kepada mereka.\r\n\r\nApakah Anda memiliki pesan untuk penggemar Anda di luar negeri?\r\n\r\nTempatkan Chainsaw Man dalam Avengers! Seperti di kategori R-18!\r\n\r\nMenarik juga ya interview Fujimoto kali ini? Jadi gak sabar nih menanti Chainsaw Man part 2 dan versi anime-nya!', '1619601162_fb1a21f35f8f86053632.jpg'),
(29, 'Anime tentang Samurai dari Afrika \'Yasuke\' Umumkan Seiyuu dan Trailer Baru', 'anime-tentang-samurai-dari-afrika-yasuke-umumkan-seiyuu-dan-trailer-baru', 'Putri', 'Anime Yasuke yang dikerjakan LeSean Thomas dan studio animasi MAPPA telah mengumumkan sejumlah nama seiyuu yang akan mengisi suara para tokoh dalam bahasa Jepang. Trailer yang dirilis pada hari Rabu menampilkan dub Jepang dan visual dari seri ini. Anime ini akan mengudara pada 29 April di seluruh dunia melalui layanan streaming  Netflix.  \r\nBerikut nama-nama seiyuu yang terlibat dalam produksi anime ini: \"Jun Soejima sebagai Yasuke\r\nTakehiro Hira sebagai Nobunaga Oda\r\nKiko Tamura sebagai Saki\r\nYoshiko Sakakibara sebagai Yami no Daimyо̄\r\nFusako Urabe sebagai Natsumaru\r\nShigeru Ushiyama sebagai Abraham\r\nYu Kamio sebagai Morisuke\r\nEri Kitamura sebagai Ishikawa\r\nKenji Kitamura sebagai Achо̄ja\r\nShunsuke Kubozuka sebagai Hart\r\nHiroki Nanami sebagai Nikiita\r\nRie Tanaka sebagai Ichika\" Berlatar pada zaman feodal Jepang yang dilanda perang dengan mesin dan sihir, ronin terhebat yang tidak pernah dikenal, Yasuke, berjuang untuk mempertahankan kehidupan yang damai. Namun ketika desa setempat berubah menjadi pusat pergolakan diantara para daimyo yang berperang, Yasuke harus bertarung dan mengantarkan seorang anak misterius yang menjadi sasaran panglima perang yang haus darah. Tokoh utama cerita ini didasarkan pada tokoh sejarah Yasuke, seorang samurai berkulit hitam asal Afrika yang bertugas di bawah Oda Nobunaga pada abad ke-16. Satoshi Iwataki (Dororo) ditunjuk sebagai chief animation director, dan Takeru Satō adalah chief technical director. Kenichi Shima (Parasyte) bertanggung jawab sebagai sub-character designer, dan Minoru Nishida (Dagashi Kashi 2) bertanggung jawab dalam world art design dan art setting. Junichi Higashi (Cowboy Bebop, Kingdom) sebagai art director, Yuki Nomoto (Dorohedoro) sebagai 3D CG director, dan Hyo Gyu Park sebagai director of photography. Azusa Sasaki (Zombie Land Saga) bekerja sebagai color key artist, dan Mutsumi Takemiya (Dororo, Azur Lane) ditunjuk sebagai editor.\r\n\r\nLeSean Thomas (Children of Ether) dikreditkan sebagai pencipta, sutradara, dan produser eksekutif untuk Yasuke, sementara Flying Lotus menggubah musik dan bertindak sebagai produser eksekutif. Takeshi Koike (Redline) ditugaskan untuk mendesain karakter. Lakeith Stanfield (Atlanta) akan mengisi suara Yasuke dalam bahasa Inggris. Sementara MAPPA (Attack on Titan: The Final Season, Jujutsu Kaisen) akan memproduksi animasinya.', '1619601307_e90e77b9ab4e6686df0f.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(10) NOT NULL,
  `nama_pesan` varchar(25) NOT NULL,
  `email_pesan` varchar(30) NOT NULL,
  `pesan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `nama_pesan`, `email_pesan`, `pesan`) VALUES
(1, 'raihan', 'raihan@gmail.com', 'tes'),
(2, 'ee', '@gmail.com', 'jwjwjw'),
(3, 'raihannn', '@gmail.com', 'hantu'),
(5, 'www', '@gmail.com', 'djdjd'),
(6, 'hantu', '@GMAIL.COM', 'hehe'),
(7, 'ss', '@gmail.com', ''),
(8, 'www', '@gmail.com', 'dd'),
(9, 'a', '@gmail.com', 'dss'),
(10, 'w', '@gmail.com', 'ed'),
(11, 'dss', '@gmail.com', 'dsfsf'),
(12, 'eee', '2ee@gmail.con', 'sdsd\r\n'),
(13, 'd', 's@gmail.com', 'ha'),
(14, 'w', 'w@gmail.com', '11'),
(15, 's', 'w@gmail.com', 'jsjs'),
(16, 'haha', '@gmail.com', 'aaj'),
(17, 'ss', 'ww@gmail.com', 'sss'),
(18, 's', 's@gmail.com', 's'),
(19, 'd', 'e@gmail.com', 'sss'),
(20, 'w', '@gmail.com', 'ha'),
(21, 'ee', '@gmail.com', 'e'),
(22, '', '', ''),
(23, 'Tes', 'Raihan', 'e'),
(24, 'Raihan Evanza', 'raihan.evanza20@gmail.com', 'Mantap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 'raihanevanza20@gmail.com', 'Raihanevanza', '$2y$10$PIUKJZQ0mcAXf7YRdfut/ultM5xhT7gztdRdVwW8hDPIGIuIc7fFK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-05-03 09:12:58', '2021-05-03 09:12:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
