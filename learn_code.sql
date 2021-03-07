-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 03:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn_code`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `lang` int(11) NOT NULL DEFAULT 0,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `track_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `slug`, `price`, `level`, `status`, `lang`, `link`, `track_id`, `created_at`, `updated_at`) VALUES
(1, 'Possimus consequatur delectus repellendus ut non aut eaque commodi.', 'Aut repudiandae eos magni quo. Nisi porro fugiat voluptatem pariatur. Velit illo magnam praesentium qui animi.', 'possimus-consequatur-delectus-repellendus-ut-non-aut-eaque-commodi.', '0.00', 'ut', 0, 1, 'https://www.wunsch.org/magni-aliquid-et-tempora-natus-ea', 5, '2021-02-15 10:20:04', '2021-02-15 10:20:04'),
(2, 'Minima accusamus doloremque suscipit necessitatibus in et.', 'Sed consectetur nesciunt est. Mollitia ipsam eos et in voluptatem. Sunt necessitatibus voluptas placeat quam et.', 'minima-accusamus-doloremque-suscipit-necessitatibus-in-et.', '0.00', 'harum', 0, 2, 'http://blanda.org/libero-qui-quo-ea-debitis-est.html', 8, '2021-02-15 10:20:04', '2021-02-15 10:20:04'),
(3, 'Cupiditate molestias porro ducimus occaecati cupiditate esse vel.', 'Ex ipsum vero quas laudantium veritatis rem. Molestiae sed consequatur harum nam quia sit dolore. Repellat nam sit consequatur.', 'cupiditate-molestias-porro-ducimus-occaecati-cupiditate-esse-vel.', '1.00', 'dolor', 1, 1, 'https://ernser.info/ut-praesentium-et-autem.html', 2, '2021-02-15 10:20:04', '2021-02-15 10:20:04'),
(4, 'Labore natus quod voluptate eius.', 'Tenetur aut itaque voluptatem rerum. Tenetur saepe et rem dolorem id. Eius et earum sunt tenetur.', 'labore-natus-quod-voluptate-eius.', '0.00', 'reprehenderit', 0, 0, 'http://www.rolfson.com/voluptatem-incidunt-mollitia-eum-minus-vel-consequatur-perferendis.html', 7, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(5, 'Est in in sed in enim non quaerat.', 'Molestias quia ab omnis saepe. Nesciunt et quia quis illum. Sit incidunt porro dolor voluptas quibusdam commodi.', 'est-in-in-sed-in-enim-non-quaerat.', '1.00', 'autem', 0, 1, 'http://www.kub.com/qui-distinctio-vel-iusto-veritatis-dolorem-nam-quibusdam-aut', 9, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(6, 'Harum dignissimos rerum corrupti et.', 'Aut sequi qui reiciendis sed. Voluptatem molestias et similique itaque blanditiis veniam. Inventore nisi eum fugiat et quas error.', 'harum-dignissimos-rerum-corrupti-et.', '1.00', 'voluptatum', 0, 2, 'http://www.kohler.com/et-ea-ut-similique-quam-non-et-voluptatum', 8, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(7, 'Ullam voluptatibus illum voluptates ut ea nisi.', 'Voluptatem aut expedita eos sit iusto. Sequi ratione nulla enim enim quia qui voluptatibus. Ab blanditiis amet aut labore. In ut molestiae eum. Similique consequatur excepturi ipsa et.', 'ullam-voluptatibus-illum-voluptates-ut-ea-nisi.', '1.00', 'expedita', 1, 1, 'http://www.haley.com/libero-veniam-earum-eveniet-ullam-necessitatibus-qui.html', 10, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(8, 'Non aliquam ea vitae vitae sit porro.', 'Ex cum amet est iure pariatur. Ex sit eos odio dolores minus. Aut qui et ratione qui eius autem esse rem.', 'non-aliquam-ea-vitae-vitae-sit-porro.', '1.00', 'cum', 1, 0, 'http://boyer.com/aut-et-laudantium-qui-quis-dolores-eligendi', 6, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(9, 'Alias dolores eum consequatur facilis fugit.', 'Sequi quia officia molestiae occaecati temporibus iure molestias nisi. Voluptas aut hic deserunt doloremque. Dolorem mollitia impedit omnis ipsam voluptas harum delectus molestiae.', 'alias-dolores-eum-consequatur-facilis-fugit.', '0.00', 'voluptatibus', 0, 1, 'http://www.mayert.com/similique-iusto-eius-facere-tempore-ex-doloremque.html', 10, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(10, 'Eos cum illo atque aliquid hic et accusantium.', 'Voluptas asperiores sed saepe modi aperiam. Et voluptatem enim deleniti nesciunt perferendis. Sed temporibus voluptatibus magni recusandae consequatur corporis voluptas. Consequuntur ad quis omnis eos quia provident nihil.', 'eos-cum-illo-atque-aliquid-hic-et-accusantium.', '1.00', 'nesciunt', 0, 2, 'http://swaniawski.com/ut-minus-soluta-necessitatibus-sint-quam-rerum.html', 4, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(11, 'Natus rem minima itaque labore et autem.', 'Accusamus eligendi eos quia dignissimos exercitationem totam. Voluptatibus iusto consequatur aut amet. Vero eveniet qui dicta id harum est. Qui atque et quae fugiat possimus.', 'natus-rem-minima-itaque-labore-et-autem.', '1.00', 'accusamus', 0, 1, 'http://kulas.com/', 6, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(12, 'A unde officia saepe perspiciatis dolor est reprehenderit.', 'Ipsam esse distinctio omnis quis repellendus. Minima dicta ullam est natus corporis nobis tempora voluptate. Illum molestiae unde voluptatum.', 'a-unde-officia-saepe-perspiciatis-dolor-est-reprehenderit.', '0.00', 'odio', 0, 2, 'http://www.pfannerstill.com/quo-itaque-blanditiis-exercitationem-ex-sed-qui', 4, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(13, 'Fugit sint necessitatibus excepturi delectus libero modi ex.', 'Odio placeat quam corrupti accusamus rem. Totam libero perspiciatis deserunt minus. Alias commodi sit illo tempore et magnam exercitationem dolorem.', 'fugit-sint-necessitatibus-excepturi-delectus-libero-modi-ex.', '1.00', 'reiciendis', 0, 2, 'http://www.considine.net/est-soluta-inventore-excepturi-ipsa-iste-dolorem.html', 8, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(14, 'At consequuntur omnis suscipit distinctio.', 'Quia in beatae voluptas expedita repellendus quo necessitatibus. Et aut neque voluptatem dolores quasi in aliquam. Occaecati voluptatibus deleniti id unde. Est necessitatibus ex provident aut quia suscipit non.', 'at-consequuntur-omnis-suscipit-distinctio.', '0.00', 'ipsum', 1, 1, 'http://tillman.com/aliquam-quis-eos-placeat-suscipit-aut-sint.html', 9, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(15, 'Veniam expedita praesentium animi tempora totam dolor voluptatem mollitia.', 'Illum maiores perferendis autem officiis voluptatem. Repellat et consequatur reprehenderit quas quis. Nobis et quasi enim iusto. Odio voluptas sed itaque labore sequi consequuntur.', 'veniam-expedita-praesentium-animi-tempora-totam-dolor-voluptatem-mollitia.', '1.00', 'ipsam', 0, 1, 'https://www.nienow.com/ratione-ut-eaque-eveniet-laudantium-recusandae-id-culpa-aut', 6, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(16, 'Molestiae est voluptatibus voluptatem.', 'Deserunt in vitae ea animi. Dolorem velit non autem omnis est repellat possimus. Eveniet sed et omnis eligendi aliquid.', 'molestiae-est-voluptatibus-voluptatem.', '1.00', 'cum', 0, 2, 'http://bartoletti.com/', 7, '2021-02-15 10:20:05', '2021-02-15 10:20:05'),
(17, 'Tenetur aspernatur ut sed enim libero tempora.', 'Doloribus aspernatur asperiores libero nihil modi tempora unde occaecati. Aut qui consequuntur fugiat tempora soluta aut dolorem. Dolorem iste eum temporibus magni ducimus est. Nam aut velit quidem architecto iure reiciendis.', 'tenetur-aspernatur-ut-sed-enim-libero-tempora.', '1.00', 'et', 1, 2, 'http://rutherford.com/', 7, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(18, 'Cum quasi aut doloribus adipisci quidem illo omnis.', 'Molestias est ipsam et aliquid rerum sunt voluptatem. Eius porro reiciendis aperiam aut. Ea consequatur eligendi consequatur deleniti molestiae iste.', 'cum-quasi-aut-doloribus-adipisci-quidem-illo-omnis.', '0.00', 'aut', 0, 2, 'http://halvorson.com/praesentium-officia-alias-consequatur-aut-dolor-voluptatem', 1, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(19, 'Rerum quo placeat magni accusamus.', 'Nihil modi id ex veritatis quas expedita officia ratione. Id sed alias omnis voluptas laborum voluptates qui non. Natus dolor et labore esse omnis sed deleniti.', 'rerum-quo-placeat-magni-accusamus.', '1.00', 'placeat', 0, 2, 'http://labadie.net/', 5, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(20, 'Libero qui quia dolorum et facere et.', 'Dolores in quibusdam necessitatibus sit. Dolores error vel voluptatem. Eveniet in tempore vel perspiciatis non est.', 'libero-qui-quia-dolorum-et-facere-et.', '0.00', 'nobis', 1, 1, 'http://www.lakin.org/', 9, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(21, 'Autem consequatur sed quo est.', 'Similique sequi temporibus eum ut architecto in id. Et omnis qui qui. Quas ut dicta quo. Fugit aperiam fugiat reprehenderit culpa ut ipsum maiores fuga.', 'autem-consequatur-sed-quo-est.', '0.00', 'cupiditate', 0, 0, 'http://nicolas.com/quas-quo-earum-omnis-molestiae-dolores-autem.html', 10, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(22, 'Exercitationem et porro tempora vero dignissimos non.', 'Magnam est nam impedit tenetur laudantium. Porro eaque expedita totam et et blanditiis occaecati recusandae.', 'exercitationem-et-porro-tempora-vero-dignissimos-non.', '0.00', 'tempore', 0, 2, 'http://www.schiller.com/sequi-nisi-vitae-incidunt', 6, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(23, 'Molestiae corporis ut magni nihil et.', 'Ipsum quidem amet debitis aliquid laborum aperiam eum quis. Voluptatum distinctio occaecati rem saepe quia voluptatem rerum ut. Et enim quidem nam iste sit quibusdam eum.', 'molestiae-corporis-ut-magni-nihil-et.', '1.00', 'quo', 0, 0, 'http://www.schuster.com/aliquam-consequatur-quod-expedita-vel', 6, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(24, 'Et consectetur et voluptatum recusandae nisi ut.', 'Dicta molestias dignissimos incidunt perspiciatis sequi consequatur accusamus necessitatibus. Ducimus aut illum nostrum possimus nobis in dolores. Totam qui expedita commodi tempora reprehenderit. Quis modi temporibus dolor aliquid modi excepturi deserunt.', 'et-consectetur-et-voluptatum-recusandae-nisi-ut.', '0.00', 'numquam', 1, 0, 'http://abshire.com/', 7, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(25, 'Eligendi voluptatem recusandae cumque occaecati voluptatem eum omnis.', 'Ea sunt animi perspiciatis optio. Aspernatur impedit et deserunt dolores dolorum. Explicabo provident aspernatur rerum expedita qui. Culpa quo assumenda sit et nihil nihil.', 'eligendi-voluptatem-recusandae-cumque-occaecati-voluptatem-eum-omnis.', '1.00', 'a', 0, 0, 'http://www.wisozk.com/neque-et-sed-perspiciatis-ducimus-voluptatem', 1, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(26, 'Nisi magnam quibusdam incidunt temporibus alias molestiae maiores.', 'Eos et quisquam necessitatibus. Et cumque quia est assumenda culpa soluta. Eum voluptates dolorem quos consequuntur et sunt quasi. Rem voluptatem labore fugit voluptatem.', 'nisi-magnam-quibusdam-incidunt-temporibus-alias-molestiae-maiores.', '0.00', 'nostrum', 1, 0, 'http://marks.com/ab-nisi-aliquid-ut-et-dolorum-pariatur', 9, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(27, 'Quaerat maiores sapiente quod suscipit ex et dolore est.', 'Nemo sint quam adipisci illo voluptatem consequatur. Libero hic ducimus dolorem voluptate consequuntur. Est autem ipsa sint libero esse. Dolores porro nemo rerum voluptate explicabo nesciunt consequatur.', 'quaerat-maiores-sapiente-quod-suscipit-ex-et-dolore-est.', '0.00', 'facere', 0, 2, 'http://www.ohara.com/molestiae-ratione-voluptatem-est-qui', 10, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(28, 'Consectetur asperiores et doloribus deserunt ea alias.', 'Rerum labore qui sed praesentium amet et. Odio praesentium eveniet occaecati illum repellat. Quia quod at ut excepturi inventore.', 'consectetur-asperiores-et-doloribus-deserunt-ea-alias.', '0.00', 'enim', 0, 1, 'https://www.larkin.com/voluptatibus-inventore-ipsam-sed-quis-qui', 5, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(29, 'Ut quia nam sit officiis et voluptas qui.', 'Modi omnis unde ut et dolores explicabo voluptate. Non omnis praesentium iste aut. Qui velit officiis doloribus non animi facere. Molestias sed ut voluptas ipsam quas aut.', 'ut-quia-nam-sit-officiis-et-voluptas-qui.', '0.00', 'ullam', 0, 0, 'http://www.konopelski.com/vel-eum-minus-aliquid-excepturi-qui.html', 5, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(30, 'Et ratione inventore et consequatur.', 'Voluptatum possimus inventore iure incidunt voluptates velit cupiditate. Occaecati rerum et explicabo quaerat dolorem accusantium harum officiis. In omnis doloribus ut non dolores quaerat.', 'et-ratione-inventore-et-consequatur.', '1.00', 'eveniet', 1, 1, 'http://kutch.info/', 10, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(31, 'Suscipit voluptas inventore eum.', 'Quos id corporis quis quis. Et et dolores ea. Enim voluptas facere architecto in. Et eum non occaecati quibusdam.', 'suscipit-voluptas-inventore-eum.', '1.00', 'velit', 1, 2, 'http://www.cummerata.com/', 3, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(32, 'Fuga est ut aut voluptate.', 'Sit iste in corporis sapiente incidunt voluptas eum. Sit et itaque sunt illum laborum. Laboriosam consectetur sed optio possimus nulla sit at ut. Eos rerum qui beatae.', 'fuga-est-ut-aut-voluptate.', '0.00', 'ea', 1, 1, 'https://www.kovacek.info/mollitia-illum-nostrum-veritatis-deserunt', 4, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(33, 'Quaerat reiciendis id qui.', 'Provident sit et consequatur et. Fuga nihil et ratione fugiat totam. Perferendis officia rerum nihil officiis non voluptate voluptas mollitia. Voluptatem et et dolorem quo ut ut natus.', 'quaerat-reiciendis-id-qui.', '0.00', 'sed', 0, 2, 'http://deckow.com/', 5, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(34, 'Eos provident voluptatibus eum ad non ratione.', 'Nobis ut deleniti cum dolores ad mollitia. Inventore natus occaecati qui dolore eveniet at quis. Veritatis eum quia numquam aut. Est quas pariatur recusandae voluptatibus qui quo laudantium.', 'eos-provident-voluptatibus-eum-ad-non-ratione.', '1.00', 'eligendi', 1, 2, 'http://www.romaguera.com/dolores-aperiam-nesciunt-voluptatem-rerum-distinctio-sint', 3, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(35, 'Fugit earum est ducimus vitae nostrum possimus ea iure.', 'Sed libero quia aspernatur facere accusantium. Quos quaerat eum qui qui. Nisi quibusdam error autem voluptate.', 'fugit-earum-est-ducimus-vitae-nostrum-possimus-ea-iure.', '0.00', 'ad', 0, 0, 'https://www.kemmer.com/dignissimos-dolor-et-et-exercitationem-aspernatur', 2, '2021-02-15 10:20:06', '2021-02-15 10:20:06'),
(36, 'Id culpa qui ratione dolorum molestiae eveniet temporibus recusandae.', 'Iste fugit eius voluptate maiores ipsam in ut sequi. Nobis ea aperiam ut est. Expedita aut minus repellendus totam ab sit in. Delectus voluptate id illum dicta magnam ut eum.', 'id-culpa-qui-ratione-dolorum-molestiae-eveniet-temporibus-recusandae.', '0.00', 'et', 1, 2, 'http://www.ohara.com/voluptas-delectus-a-voluptas-minima', 6, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(37, 'Ea suscipit eveniet pariatur amet totam voluptatem perspiciatis mollitia.', 'Nesciunt expedita tenetur non pariatur dolor placeat. Magni consequatur aut velit qui. Sunt dolorem est perspiciatis sit vel quos autem. Qui est officiis accusantium quis quod qui.', 'ea-suscipit-eveniet-pariatur-amet-totam-voluptatem-perspiciatis-mollitia.', '1.00', 'et', 1, 0, 'http://www.lehner.com/', 4, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(38, 'Quasi deleniti aspernatur a aliquid modi.', 'Sed voluptatum tempora ut vel accusantium at. Rerum similique esse sed dolor voluptates sed eos ratione. Dolor vitae labore vitae non quae. Aspernatur accusamus ut nesciunt tenetur.', 'quasi-deleniti-aspernatur-a-aliquid-modi.', '1.00', 'accusamus', 1, 1, 'http://bernhard.com/', 6, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(39, 'Deleniti ipsa aut illo et ex aliquid fuga.', 'Sint illum nemo veniam quia iusto voluptatem. Qui suscipit id dolores veritatis. Nesciunt repellendus vitae et et sunt. Debitis reiciendis sint maiores qui qui vero.', 'deleniti-ipsa-aut-illo-et-ex-aliquid-fuga.', '0.00', 'assumenda', 0, 1, 'http://crist.com/', 7, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(40, 'Commodi culpa aut voluptate autem rerum cupiditate.', 'Odio cum sit odit repellat aut saepe quia modi. Excepturi modi aut distinctio animi et. Veritatis facilis voluptas quidem cum.', 'commodi-culpa-aut-voluptate-autem-rerum-cupiditate.', '0.00', 'facilis', 0, 2, 'https://considine.net/quia-sint-rerum-adipisci-voluptate.html', 6, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(41, 'Earum quo sit dolores.', 'Cum ut aperiam sed. Corporis veritatis provident omnis laborum illum. Voluptatem consequatur at doloremque corrupti sed ea tempore. Et dignissimos natus sit voluptas amet ipsum optio.', 'earum-quo-sit-dolores.', '0.00', 'modi', 0, 2, 'http://www.veum.com/', 1, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(42, 'Velit ea ut incidunt.', 'Natus laborum nam autem provident. Quos doloremque repudiandae error beatae dolores eos. Delectus cupiditate et ea autem molestias.', 'velit-ea-ut-incidunt.', '0.00', 'excepturi', 0, 0, 'http://hermiston.info/dolorem-nisi-vero-quibusdam-temporibus-molestias-est', 10, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(43, 'Voluptatum autem doloremque tempore.', 'Eaque nihil tempora facilis. Corporis accusamus rerum vitae et sunt vitae. Maxime et ea fugit doloribus deleniti fugiat.', 'voluptatum-autem-doloremque-tempore.', '0.00', 'eius', 1, 2, 'http://www.ankunding.info/totam-vitae-est-qui', 2, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(44, 'Consequatur repellat accusantium ipsam dolor dolorum aut nam voluptas.', 'Deserunt ut et sint soluta aut tempore. Repudiandae ut dolorem dolorum sint quam. Consequatur beatae eaque dolor cumque architecto repellat labore. Quae rem aperiam enim natus illo quis nihil et.', 'consequatur-repellat-accusantium-ipsam-dolor-dolorum-aut-nam-voluptas.', '0.00', 'ab', 1, 2, 'http://zulauf.com/inventore-enim-qui-exercitationem', 8, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(45, 'Quo et accusantium autem magni similique.', 'Quia consequatur numquam magni minus ad nemo. Labore nobis deserunt dolorum vero ex in. Facere voluptates natus rerum ea numquam dolor.', 'quo-et-accusantium-autem-magni-similique.', '1.00', 'rerum', 1, 2, 'http://www.yost.org/', 7, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(46, 'Unde occaecati in et corporis quia dolores.', 'Inventore aliquam recusandae ducimus occaecati. Omnis aut ut voluptatem id velit harum. Molestiae delectus dolores sint qui ut.', 'unde-occaecati-in-et-corporis-quia-dolores.', '0.00', 'officia', 0, 1, 'http://purdy.info/ea-harum-quo-aut-est-incidunt', 3, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(47, 'Excepturi aut nostrum dignissimos reiciendis asperiores provident pariatur.', 'Atque et pariatur tempore magnam necessitatibus molestiae. Doloribus rerum eum molestiae quam. Dolorum ea incidunt eligendi. Sint quo at autem.', 'excepturi-aut-nostrum-dignissimos-reiciendis-asperiores-provident-pariatur.', '1.00', 'nihil', 0, 1, 'http://cummerata.com/voluptatum-in-nam-voluptas-accusamus-qui.html', 4, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(48, 'Voluptatem dolorem a similique vel quae error ratione.', 'Odio architecto alias ex. Provident soluta impedit minima in rerum reiciendis. Sit ea sequi consequatur aut eum. Iure inventore quis ea corrupti et eum atque.', 'voluptatem-dolorem-a-similique-vel-quae-error-ratione.', '1.00', 'aperiam', 0, 1, 'https://www.tromp.com/natus-non-aperiam-est-quod-id', 10, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(49, 'Numquam voluptas iste rerum tenetur animi eaque et.', 'Qui voluptatem debitis eligendi necessitatibus ad. Eveniet et placeat exercitationem animi enim. Voluptas et sunt in sit nostrum ea aut. Voluptatem reiciendis quis non molestiae cumque voluptatibus alias voluptas.', 'numquam-voluptas-iste-rerum-tenetur-animi-eaque-et.', '1.00', 'quia', 0, 0, 'http://larson.com/nisi-laudantium-dolores-aliquid-dolorum-tempora-et', 10, '2021-02-15 10:20:07', '2021-02-15 10:20:07'),
(50, 'Sint distinctio corrupti nostrum quisquam dolor.', 'Amet iusto omnis impedit corporis. Quos velit corrupti eum rerum magni. Voluptatem impedit saepe officia accusantium dolorum unde tenetur.', 'sint-distinctio-corrupti-nostrum-quisquam-dolor.', '0.00', 'culpa', 1, 0, 'http://schaefer.biz/ab-fuga-laboriosam-sed-est', 8, '2021-02-15 10:20:08', '2021-02-15 10:20:08'),
(52, 'HTML', 'Hypertext Markup Language is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets and scripting languages such as JavaScript.', 'html', NULL, NULL, 0, 0, 'https://www.youtube.com/playlist?list=PLDoPjvoNmBAw_t_XWUFbBX-c9MafPk9ji', 11, '2021-02-15 11:12:04', '2021-02-15 11:12:04'),
(53, 'CSS', 'Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.', 'css', '25.00', NULL, 1, 0, 'https://www.youtube.com/playlist?list=PLDoPjvoNmBAzjsz06gkzlSrlev53MGIKe', 11, '2021-02-15 12:33:56', '2021-02-15 12:33:56'),
(54, 'PHP 5', 'PHP is a general-purpose scripting language especially suited to web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1994. The PHP reference implementation is now produced by The PHP Group.', 'php-5', '99.00', NULL, 1, 0, 'https://www.youtube.com/playlist?list=PLDoPjvoNmBAzH72MTPuAAaYfReraNlQgM', 12, '2021-02-15 12:37:18', '2021-02-15 12:37:18'),
(55, 'safasfasfasfsa', 'asfasfasfasfasfsafsafasfsafasfsafsfsafsfsfsafsaf', 'safasfasfasfsa', NULL, NULL, 1, 0, 'https://bbbootstrap.com/snippets/bootstrap-edit-profile-87948053', 1, '2021-02-16 18:08:28', '2021-02-16 18:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_user`
--

INSERT INTO `course_user` (`user_id`, `course_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 55, 0, NULL, NULL),
(1, 31, 1, NULL, NULL),
(1, 48, 2, NULL, NULL),
(1, 25, 3, NULL, NULL),
(2, 37, 4, NULL, NULL),
(2, 4, 5, NULL, NULL),
(2, 29, 6, NULL, NULL),
(3, 48, 7, NULL, NULL),
(3, 2, 8, NULL, NULL),
(3, 3, 9, NULL, NULL),
(4, 38, 10, NULL, NULL),
(4, 5, 11, NULL, NULL),
(5, 30, 12, NULL, NULL),
(5, 37, 13, NULL, NULL),
(5, 4, 14, NULL, NULL),
(6, 16, 15, NULL, NULL),
(6, 23, 16, NULL, NULL),
(6, 37, 17, NULL, NULL),
(7, 30, 18, NULL, NULL),
(7, 12, 19, NULL, NULL),
(7, 33, 20, NULL, NULL),
(8, 22, 21, NULL, NULL),
(8, 46, 22, NULL, NULL),
(8, 26, 23, NULL, NULL),
(9, 8, 24, NULL, NULL),
(9, 5, 25, NULL, NULL),
(9, 19, 26, NULL, NULL),
(10, 27, 27, NULL, NULL),
(10, 41, 28, NULL, NULL),
(10, 42, 29, NULL, NULL),
(1, 53, 30, NULL, NULL),
(1, 55, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1, 52, 0, NULL, NULL),
(1, 5, 0, NULL, NULL),
(1, 54, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_25_061124_create_photos_table', 1),
(5, '2020_12_25_061223_create_tracks_table', 1),
(6, '2020_12_25_061308_create_courses_table', 1),
(7, '2020_12_25_061341_create_videos_table', 1),
(8, '2020_12_25_061414_create_quizzes_table', 1),
(9, '2020_12_25_061448_create_questions_table', 1),
(10, '2020_12_25_063353_create_users_tracks_pivot_table', 1),
(11, '2020_12_25_064129_create_users_courses_pivot_table', 1),
(12, '2020_12_25_201525_create_quizzes_users_pivot_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photoable`
--

CREATE TABLE `photoable` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photoable_id` int(11) NOT NULL,
  `photoable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photoable`
--

INSERT INTO `photoable` (`id`, `filename`, `photoable_id`, `photoable_type`, `relation`, `created_at`, `updated_at`) VALUES
(1, '4.jpg', 26, 'App\\Models\\Course', 'alias', '2021-02-15 10:20:49', '2021-02-15 10:20:49'),
(2, '6.jpg', 1, 'App\\User', 'iste', '2021-02-15 10:20:49', '2021-02-15 10:20:49'),
(3, '7.jpg', 17, 'App\\Models\\Course', 'tempora', '2021-02-15 10:20:50', '2021-02-15 10:20:50'),
(4, '7.jpg', 25, 'App\\Models\\Course', 'accusantium', '2021-02-15 10:20:50', '2021-02-15 10:20:50'),
(5, '5.jpg', 4, 'App\\User', 'eligendi', '2021-02-15 10:20:50', '2021-02-15 10:20:50'),
(6, '5.jpg', 13, 'App\\Models\\Course', 'quia', '2021-02-15 10:20:50', '2021-02-15 10:20:50'),
(7, '6.jpg', 21, 'App\\Models\\Course', 'et', '2021-02-15 10:20:50', '2021-02-15 10:20:50'),
(8, '2.jpg', 1, 'App\\User', 'fugiat', '2021-02-15 10:20:50', '2021-02-15 10:20:50'),
(9, '10.jpg', 13, 'App\\Models\\Course', 'non', '2021-02-15 10:20:50', '2021-02-15 10:20:50'),
(10, '8.jpg', 1, 'App\\User', 'veritatis', '2021-02-15 10:20:50', '2021-02-15 10:20:50'),
(11, '5.jpg', 21, 'App\\Models\\Course', 'nam', '2021-02-15 10:20:50', '2021-02-15 10:20:50'),
(12, '9.jpg', 5, 'App\\User', 'eum', '2021-02-15 10:20:50', '2021-02-15 10:20:50'),
(13, '4.jpg', 7, 'App\\User', 'reprehenderit', '2021-02-15 10:20:50', '2021-02-15 10:20:50'),
(14, '7.jpg', 3, 'App\\Models\\Course', 'quia', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(15, '2.jpg', 45, 'App\\Models\\Course', 'quo', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(16, '10.jpg', 7, 'App\\User', 'ad', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(17, '10.jpg', 6, 'App\\Models\\Course', 'numquam', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(18, '5.jpg', 38, 'App\\Models\\Course', 'placeat', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(19, '10.jpg', 33, 'App\\Models\\Course', 'harum', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(20, '10.jpg', 1, 'App\\User', 'optio', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(21, '5.jpg', 23, 'App\\Models\\Course', 'adipisci', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(22, '10.jpg', 8, 'App\\User', 'natus', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(23, '8.jpg', 15, 'App\\Models\\Course', 'totam', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(24, '3.jpg', 6, 'App\\User', 'vitae', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(25, '4.jpg', 36, 'App\\Models\\Course', 'facere', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(26, '4.jpg', 27, 'App\\Models\\Course', 'quidem', '2021-02-15 10:20:51', '2021-02-15 10:20:51'),
(27, '7.jpg', 1, 'App\\User', 'vel', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(28, '7.jpg', 10, 'App\\User', 'sunt', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(29, '3.jpg', 1, 'App\\User', 'architecto', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(30, '5.jpg', 2, 'App\\User', 'natus', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(31, '5.jpg', 36, 'App\\Models\\Course', 'ut', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(32, '3.jpg', 35, 'App\\Models\\Course', 'praesentium', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(33, '9.jpg', 1, 'App\\User', 'voluptas', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(34, '6.jpg', 9, 'App\\Models\\Course', 'vel', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(35, '5.jpg', 23, 'App\\Models\\Course', 'deserunt', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(36, '6.jpg', 9, 'App\\User', 'repellendus', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(37, '2.jpg', 4, 'App\\User', 'rerum', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(38, '1.jpg', 22, 'App\\Models\\Course', 'quisquam', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(39, '9.jpg', 1, 'App\\User', 'quidem', '2021-02-15 10:20:52', '2021-02-15 10:20:52'),
(40, '10.jpg', 46, 'App\\Models\\Course', 'ea', '2021-02-15 10:20:53', '2021-02-15 10:20:53'),
(41, '1.jpg', 1, 'App\\Models\\Course', 'quo', '2021-02-15 10:20:53', '2021-02-15 10:20:53'),
(42, '10.jpg', 6, 'App\\User', 'dolore', '2021-02-15 10:20:53', '2021-02-15 10:20:53'),
(43, '5.jpg', 9, 'App\\Models\\Course', 'doloribus', '2021-02-15 10:20:53', '2021-02-15 10:20:53'),
(44, '9.jpg', 5, 'App\\User', 'enim', '2021-02-15 10:20:53', '2021-02-15 10:20:53'),
(45, '1.jpg', 9, 'App\\User', 'ea', '2021-02-15 10:20:53', '2021-02-15 10:20:53'),
(46, '3.jpg', 47, 'App\\Models\\Course', 'aut', '2021-02-15 10:20:53', '2021-02-15 10:20:53'),
(47, '8.jpg', 6, 'App\\Models\\Course', 'sit', '2021-02-15 10:20:53', '2021-02-15 10:20:53'),
(48, '4.jpg', 37, 'App\\Models\\Course', 'distinctio', '2021-02-15 10:20:53', '2021-02-15 10:20:53'),
(49, '7.jpg', 2, 'App\\Models\\Course', 'et', '2021-02-15 10:20:53', '2021-02-15 10:20:53'),
(50, '9.jpg', 7, 'App\\User', 'eos', '2021-02-15 10:20:53', '2021-02-15 10:20:53'),
(51, '1613394724_download_.png', 52, 'App/Models/Course', NULL, '2021-02-15 11:12:04', '2021-02-15 11:12:04'),
(52, '1613399636_d5b93bad3c10cc5b92b47e4678598548_.jpg', 53, 'App/Models/Course', NULL, '2021-02-15 12:33:56', '2021-02-15 12:33:56'),
(53, '1613399838_1340336_.jpg', 54, 'App/Models/Course', NULL, '2021-02-15 12:37:18', '2021-02-15 12:37:18'),
(54, '1613506108_Behr-Paint_.jpg', 55, 'App/Models/Course', NULL, '2021-02-16 18:08:28', '2021-02-16 18:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `answer`, `right_answer`, `score`, `quiz_id`, `created_at`, `updated_at`) VALUES
(1, 'Optio dolorem quo corrupti. Et iure laboriosam nihil voluptatem ut. Pariatur commodi et sint et.', 'Ea tenetur perferendis ea. Incidunt eveniet vel et aliquam rem qui sit. Fugit vero minus aperiam sed beatae tempora sunt.', 'tenetur', 20, 45, '2021-02-15 10:20:31', '2021-02-15 10:20:31'),
(2, 'Quas provident amet inventore in ut ut. Ratione soluta iste quibusdam. Saepe vitae unde perspiciatis eos. Consequatur dolorem laborum expedita earum aut sapiente.', 'Pariatur commodi incidunt illo ullam distinctio. Error aut aut et minus sunt culpa. Esse iusto et error et et sint. Qui voluptatem quisquam libero consectetur.', 'libero', 5, 44, '2021-02-15 10:20:32', '2021-02-15 10:20:32'),
(3, 'Et non quia delectus voluptas quos. Voluptatem numquam est qui mollitia quibusdam. Modi ut similique est totam placeat. Aliquid excepturi aut accusamus quaerat tenetur.', 'Accusantium rem eum et consequatur. Voluptas eos accusamus et et necessitatibus iusto. Necessitatibus et sunt doloribus doloremque. Et corrupti maiores et corrupti totam.', 'eos', 10, 13, '2021-02-15 10:20:32', '2021-02-15 10:20:32'),
(4, 'Suscipit saepe voluptatibus eos delectus id voluptatem. Rerum reiciendis est unde reprehenderit reiciendis illo tenetur laborum. Pariatur qui et optio non soluta voluptates.', 'Quos eum quae et fugit molestias. Corrupti laborum culpa est et exercitationem. Similique ex distinctio voluptatem voluptate porro.', 'fugit', 5, 73, '2021-02-15 10:20:32', '2021-02-15 10:20:32'),
(5, 'Fugiat asperiores et ipsa nulla eos omnis asperiores. Itaque recusandae eveniet vel laborum eaque libero sed. Velit neque facilis facilis voluptate corporis quo. Voluptatibus est corrupti ut fuga iure.', 'Numquam facilis sit quisquam veniam est dolorum esse. Repudiandae laudantium a placeat praesentium. Quibusdam ut atque voluptatibus et totam aut.', 'est', 1, 74, '2021-02-15 10:20:32', '2021-02-15 10:20:32'),
(6, 'Voluptatem vel perferendis cum cupiditate ipsa. Aut et et laborum labore nisi nihil quidem. Iure aut ut et dolorem at illum sed.', 'Veniam perspiciatis ab illo incidunt molestias omnis. Non reiciendis sit voluptas quibusdam ut repellendus dolorem. Reiciendis sit optio itaque et.', 'ab', 15, 88, '2021-02-15 10:20:32', '2021-02-15 10:20:32'),
(7, 'Non qui sit fugit exercitationem. Ut voluptates quis recusandae. Sunt sapiente amet omnis ab.', 'Quod adipisci quo temporibus delectus doloribus perferendis. Eos est illum id illum aliquam dolorum. Eligendi dolor ea sint eveniet. Mollitia optio aspernatur praesentium fuga sit sint.', 'id', 5, 35, '2021-02-15 10:20:32', '2021-02-15 10:20:32'),
(8, 'Nobis minima est ab dolorem sint rerum rerum saepe. Totam voluptatum ea eos velit voluptatem totam eaque ullam. Nihil aut et autem perspiciatis. Ut repellendus dolores modi delectus.', 'Ea mollitia qui eaque nihil sed aut exercitationem culpa. Culpa voluptas voluptatem dolore voluptatem. Placeat asperiores recusandae consequatur perferendis incidunt consequatur at temporibus.', 'consequatur', 20, 10, '2021-02-15 10:20:32', '2021-02-15 10:20:32'),
(9, 'Magni cum nihil doloribus magni quis quis nesciunt ut. Nam qui in et sit. Quo corrupti corporis nemo qui. Odit illum ut reprehenderit quia et.', 'Aspernatur incidunt dolores labore hic placeat doloremque aut. Sit fugit sunt omnis et soluta.', 'et', 10, 74, '2021-02-15 10:20:32', '2021-02-15 10:20:32'),
(10, 'Assumenda esse distinctio neque aut ut quis. Consectetur aut voluptas ipsum eius voluptatem sequi nisi. Dolorem ut optio minima voluptatem eos quo voluptates.', 'Voluptatem quibusdam sapiente sed commodi voluptatem itaque asperiores. Asperiores accusantium consequatur est quo. Et debitis ad magni veniam a ut ut error. Quis at et sequi rem consectetur et.', 'et', 15, 63, '2021-02-15 10:20:32', '2021-02-15 10:20:32'),
(11, 'Rerum sint voluptas cum debitis harum sed animi. Enim repellat consequatur fugit modi exercitationem.', 'Itaque culpa id ut maxime rerum et voluptatum. Rerum ut hic aut consequuntur. Qui quia consequatur aut ea ut ut dolorum. Fuga non et libero atque.', 'Itaque', 15, 28, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(12, 'Tenetur id est aut quod voluptas praesentium laborum. Dolor quibusdam ab illum in. Accusamus doloribus quia sapiente et sit et.', 'Molestiae consequuntur ut nulla magni assumenda et. Perferendis sed asperiores omnis. Autem quo vel minima facere et voluptatum. Dolore saepe dolore consectetur suscipit et ducimus.', 'Autem', 10, 86, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(13, 'Culpa laudantium officia qui asperiores ex. Recusandae atque cupiditate illo iure fugiat eveniet tempora. Dolor et quibusdam est laboriosam.', 'Occaecati qui voluptatem corrupti. Tempore velit rem corrupti voluptates. Voluptate id magnam et dolorem quia commodi. Ut aut optio qui. Ex tempora qui numquam beatae doloribus cumque eveniet.', 'commodi.', 15, 47, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(14, 'Incidunt et aut non provident et aut. Id nostrum rerum molestiae ut illo. Iste voluptas et dolorem hic qui recusandae non.', 'Iste cumque porro et repellat rerum ad qui. Dolore tempore incidunt et dignissimos voluptatem. Soluta inventore exercitationem vitae reiciendis quod quia.', 'cumque', 15, 69, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(15, 'Qui facere sed necessitatibus. Enim similique amet omnis et voluptate est ullam. Occaecati et voluptatibus quis porro consequuntur.', 'Non earum velit ad sapiente temporibus ea veritatis animi. Corrupti ex et qui eveniet sit tempore. Consequatur molestias officia id nemo ex vitae.', 'et', 1, 45, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(16, 'Consectetur sit nam blanditiis. Nemo exercitationem tempore vel voluptatem. Ipsum sed labore tenetur consequatur consectetur ratione omnis. Nemo velit quisquam esse.', 'Inventore rerum consequuntur neque inventore. Velit commodi qui quos. Nihil consequuntur voluptates veniam qui.', 'neque', 20, 15, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(17, 'Exercitationem officiis quia similique vero delectus cupiditate aut ut. Voluptatem animi enim necessitatibus et tenetur et voluptas fuga. Aut quia sapiente repudiandae fuga perferendis ullam ducimus omnis.', 'Sit neque eum neque aliquam dolores magnam excepturi repudiandae. Totam tempore doloremque qui optio doloremque ut repellendus. Eligendi debitis doloremque non nobis laudantium. Ducimus odit quasi blanditiis nulla quaerat.', 'non', 1, 93, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(18, 'Totam itaque fugit deleniti neque fugit. Nihil assumenda omnis impedit aut sint ab. Et ut at voluptates blanditiis blanditiis. Voluptatem ipsum incidunt in culpa et at quasi.', 'Et unde minus cumque sed. Sint ipsam in ex eos omnis doloribus. Sunt excepturi sint consectetur doloribus eaque incidunt.', 'sed.', 10, 60, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(19, 'Eum consequuntur fugiat asperiores odit unde fugit labore. Deserunt natus hic hic perspiciatis qui magnam. Dolor natus dicta nemo. Et voluptatem rem totam natus provident.', 'Numquam ea consectetur perspiciatis architecto sit aliquam. Saepe et voluptatem delectus. Aut optio soluta ducimus et harum quam animi iusto.', 'delectus.', 1, 21, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(20, 'Beatae sed assumenda accusantium fuga autem ex est. Beatae suscipit odio laudantium quia non. Qui qui aliquam ex ipsa.', 'Consequatur facilis omnis velit dolore eaque ut dignissimos. Dolore et voluptas voluptatem eveniet dignissimos qui. Eveniet ipsum amet aut dignissimos doloribus. Velit eos provident non. Voluptatem ut ducimus labore qui velit aut.', 'dolore', 10, 40, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(21, 'Dolor ut qui illum quae officiis iste. Consequatur impedit enim omnis placeat tempora accusantium consequuntur. Beatae cumque est nulla provident. Nihil natus sint nulla quia aut.', 'Voluptatem tenetur id hic tempora magnam autem. Adipisci exercitationem non praesentium. Qui laboriosam similique illo fugit harum natus. Excepturi tempora nihil nobis sed tenetur omnis soluta.', 'tempora', 15, 30, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(22, 'Porro est est esse esse minima molestiae voluptates quia. Sed reiciendis eligendi harum accusantium aspernatur placeat officia. Animi dolorum ut at occaecati et in itaque. Numquam id quaerat cumque dolor occaecati assumenda.', 'Sit neque aut omnis dolores unde. Expedita perspiciatis aspernatur odit autem possimus voluptatibus sequi. Animi voluptatem quia et in aspernatur eum eos. Hic quis sunt rerum quibusdam ut.', 'aut', 15, 93, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(23, 'Omnis excepturi et placeat qui exercitationem ut et qui. Vero aut doloribus quis vero. Sint et fugit error maiores in. Vitae mollitia mollitia neque qui vel.', 'In corporis et sunt doloribus numquam incidunt ipsa dolorem. Repudiandae est accusamus consequatur temporibus cum esse voluptatum.', 'esse', 20, 10, '2021-02-15 10:20:33', '2021-02-15 10:20:33'),
(24, 'Nulla vel aspernatur pariatur pariatur dolor. Veritatis perspiciatis optio at labore quo deserunt nihil. Quia officia et ipsam error.', 'Est ex nihil fugit ut. Corporis asperiores exercitationem quia deleniti dolorem vitae. Et dolor alias non quae consequatur vel qui.', 'exercitationem', 20, 43, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(25, 'Eius corporis vel asperiores. Et voluptate dolor adipisci deleniti. Non quaerat et enim ea sunt rem. Et voluptate minima beatae.', 'Ut animi aut iste aut. Magnam veniam voluptatem architecto temporibus inventore maiores dolor. Ut consectetur est totam ad repellat nostrum est.', 'voluptatem', 5, 67, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(26, 'Nostrum modi saepe impedit nobis ad. Quas accusamus eum ea deleniti. Ut harum adipisci voluptas quaerat esse asperiores minus. Ratione illo quod iusto et impedit eius.', 'Vel praesentium vitae nihil. Non provident ex rerum et ut aspernatur quos. Et magni alias minima commodi ab natus ad.', 'natus', 1, 70, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(27, 'Voluptatibus illum occaecati perspiciatis. Dolores autem quia cumque repellat tempore consectetur fugit. Hic animi distinctio dignissimos delectus. Ipsam quia ipsam ipsam ipsam.', 'Sunt consequatur rerum autem magni deserunt voluptas. Tenetur occaecati in fuga labore ut nisi ratione. Laborum voluptatem quisquam sequi unde illo. Modi qui dolorem dolore quam ad repellat et.', 'qui', 10, 85, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(28, 'Enim et officia aut qui omnis aliquid eum molestias. Doloribus non est possimus quo et quod et vitae. Eum quo itaque rerum veniam rem.', 'Rerum dolorem velit aspernatur iure. Corporis omnis optio consequatur sit ducimus. Nam dolorem consequuntur qui et optio ut itaque saepe.', 'Nam', 20, 50, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(29, 'Placeat sit facere vero praesentium facere labore itaque. Aliquid quo omnis nihil ratione. Officia non tempora earum nulla cum ipsa.', 'Sit impedit ipsa quo fugiat unde qui voluptatem. Enim magni voluptatum quae non est pariatur. At eum iste quos doloribus accusantium. Nisi omnis minima omnis. Quo ut quasi soluta nihil dolor.', 'doloribus', 5, 30, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(30, 'Harum recusandae omnis eum et consectetur magnam dignissimos expedita. Voluptatem et ut omnis voluptatibus. Eius aperiam molestiae quis debitis quis qui.', 'Cum maiores quasi voluptatem unde quisquam. Et quis culpa et dignissimos eum repellat animi. Ut quasi quia numquam eaque repudiandae excepturi voluptas. Non rerum exercitationem eum sed optio et odio. Unde nisi laboriosam qui sapiente eos dolorem.', 'odio.', 15, 53, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(31, 'Sed omnis et dolores est quos veniam non. Dolores magnam nihil ipsum ut. Occaecati ea ut quis necessitatibus.', 'Nemo iste eum tempore omnis in. Unde aut nam accusantium laboriosam. Velit aperiam qui rerum ipsum et fugiat.', 'ipsum', 5, 4, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(32, 'Iusto quia laborum animi laboriosam. Sed odit odit maiores reprehenderit. Necessitatibus animi laboriosam ea neque mollitia. Explicabo eveniet veniam aspernatur id impedit.', 'Nisi aspernatur est veniam unde velit nemo. Voluptate quos quidem natus minus. Et aut ratione facilis autem numquam qui illum. Qui beatae est sed dolorem qui voluptatum. Officia dolores magni odit perferendis.', 'facilis', 20, 94, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(33, 'Perferendis doloribus qui quis quod voluptatum. Nobis voluptas aut provident et rerum quibusdam saepe quis. Ea ullam reiciendis aperiam et sunt.', 'Ullam vero pariatur est corporis. Consequatur praesentium eum voluptates sit. Perferendis vero amet minus qui reprehenderit assumenda minima.', 'reprehenderit', 1, 97, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(34, 'Quod consectetur aut sit. Quo ratione sint laudantium ea nihil dolorum. Sit quia eveniet et explicabo facilis.', 'Et placeat rerum alias rerum dolor quod impedit. Itaque quibusdam possimus ut pariatur. Sed harum dolor ratione similique blanditiis maiores ut. Itaque iusto quo quaerat ab incidunt ratione in.', 'quaerat', 20, 35, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(35, 'Aut rerum asperiores vitae et quos placeat. Eum laudantium est excepturi sed nostrum asperiores ducimus quo. Aliquid deleniti quis architecto quis dolores. Qui veritatis eos facere voluptatem est.', 'Consectetur deserunt omnis iusto impedit. Sit aperiam tempore nihil. Sint optio ad quod soluta non modi.', 'aperiam', 5, 62, '2021-02-15 10:20:34', '2021-02-15 10:20:34'),
(36, 'Fugit possimus voluptatibus distinctio placeat dignissimos. Placeat nihil quod ut omnis. Quia consequuntur qui ullam ipsum.', 'Quod reprehenderit ducimus velit totam consequatur. Ipsa officiis illo doloribus et. Temporibus inventore ab tenetur dolore nemo ut non.', 'ab', 1, 39, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(37, 'Aliquam optio molestias voluptates est. Totam adipisci quod sint. Animi et voluptatem aut quia est rerum. Ratione in provident quo reprehenderit enim et ullam.', 'Quisquam itaque et eos tempore tempora rem non corporis. Aut nisi velit fugit explicabo voluptatem modi. Quia voluptate est laboriosam aut. Qui ex quasi ut sit nostrum et laboriosam. Voluptatem dolores consequatur et vel.', 'Qui', 5, 37, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(38, 'Ut beatae quis exercitationem. Ad nisi impedit modi eos assumenda et sed eius. Fuga totam omnis velit et consectetur consequatur veritatis. Ut qui adipisci corporis numquam aspernatur at.', 'Eum dolorem quo aperiam in quo asperiores quidem. Aut illum saepe magnam qui corrupti hic eum. Officia natus illo eum quia ex voluptatibus. Ut tempora officia voluptatem placeat omnis aut aspernatur temporibus.', 'omnis', 15, 48, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(39, 'Tempore nisi voluptatibus libero quia aut beatae dolor. Et saepe quisquam ex rerum ut corrupti. Quam reiciendis in laborum fuga animi. Qui reiciendis aspernatur impedit doloribus.', 'Dolores enim autem repellat incidunt quas est autem asperiores. Ut eius distinctio quaerat fugit. Ea dolores velit maiores in. Sapiente asperiores sit sapiente vel sunt suscipit id.', 'fugit.', 10, 56, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(40, 'Quisquam tempora eius ut. Qui minima quo est eaque quae nesciunt voluptatem. Non est deserunt atque officiis cupiditate voluptas. Aut ut est quidem cupiditate.', 'Repellat blanditiis ut recusandae eum quia perspiciatis et. Omnis dolorem ea doloremque libero dignissimos non. Minus hic nesciunt numquam odit.', 'ea', 15, 100, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(41, 'Dolorum voluptatem qui voluptatibus quos deleniti voluptatem odit. Doloremque veritatis quidem quae molestias similique atque occaecati. Dolorum adipisci doloribus eveniet. Nostrum fuga ut et corrupti dicta. Molestiae reprehenderit corrupti sunt autem.', 'Doloremque qui occaecati est voluptates. Cumque vel et cupiditate distinctio totam dolores. Est sed est et quaerat doloribus sed recusandae. Aut repellat eveniet debitis reprehenderit.', 'qui', 15, 53, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(42, 'Qui nobis placeat ut sit nulla at aut. Veritatis libero doloremque illo omnis dolor alias corporis qui. Omnis eos et nemo sit provident eum cupiditate. Quaerat voluptatem id possimus vero vero.', 'Vero ut omnis fugiat nam quidem. Illo nostrum sed eius aut. Quia et qui vel minima excepturi deleniti ipsum. Aut similique qui fugit eaque non.', 'Quia', 20, 76, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(43, 'Quibusdam ea quos aperiam cumque necessitatibus non corporis. Harum minus officiis culpa sunt perferendis vitae. Provident et dolorem impedit distinctio laboriosam quidem sed vel. Sint voluptas dicta qui sint velit.', 'Dicta aut quae error corrupti id laborum tempore. Repudiandae sit ut est. Magni quidem error iste autem odit cum. Accusantium laboriosam officia alias.', 'laboriosam', 1, 15, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(44, 'Quo corrupti omnis est sed. Magni quia esse voluptatibus accusamus quia consectetur a expedita.', 'Fugiat at facere ducimus deleniti. Assumenda harum vel nobis sequi aut libero et. Necessitatibus delectus molestias id qui accusamus ipsam. Soluta dolor nihil quos.', 'dolor', 5, 36, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(45, 'Tempora repudiandae quo ipsum aspernatur hic quisquam. Nulla deleniti esse voluptatem eaque dolores. Quasi alias ea reprehenderit et quis. Doloremque id praesentium molestiae magni repudiandae modi optio.', 'Sint iure maiores rerum suscipit voluptatem sit. Esse vitae ipsa at inventore nemo aut. Veniam rem iure modi molestiae corrupti soluta rerum aut.', 'Sint', 5, 4, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(46, 'Consequatur consequatur in in molestiae eveniet. Laudantium ea laudantium suscipit qui. Optio et rem est delectus et nulla. Est reiciendis exercitationem voluptate placeat facilis.', 'Qui voluptas corrupti perspiciatis facere facere. Consequatur molestiae quod et repellendus ad omnis sunt. Aspernatur qui quaerat et iure voluptatum assumenda voluptatem.', 'facere.', 20, 40, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(47, 'Sit porro iste maxime voluptas dicta hic. Ut temporibus omnis exercitationem harum corrupti dolorum.', 'Ipsa et eum qui quia officia et. Vel aut sed perferendis non tenetur sed dolorem. Qui eaque qui molestias saepe delectus maiores excepturi blanditiis. Rem excepturi qui est accusamus earum.', 'molestias', 20, 44, '2021-02-15 10:20:35', '2021-02-15 10:20:35'),
(48, 'Id omnis sequi distinctio id labore eaque iste nostrum. Laudantium labore quibusdam officia et harum ratione ut voluptas. Ducimus ad soluta deserunt ut et. Et aspernatur laborum dolorum qui totam sapiente.', 'Doloremque et et praesentium dignissimos impedit numquam est. Illo error eligendi eum a ducimus. Earum ut voluptates et aut. Occaecati minima molestiae vitae corrupti.', 'Doloremque', 20, 97, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(49, 'Et ducimus ducimus ut deserunt. Consequuntur et consequatur et quia ratione similique nam. Quia atque eum est culpa quis consequatur sequi. Ratione dolor consequatur vel et non nostrum.', 'Impedit eligendi deleniti nihil non. Accusamus eveniet rem nesciunt est nihil eum consequatur. Voluptatem aut mollitia dolores et repudiandae soluta et.', 'Voluptatem', 10, 56, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(50, 'Iure sunt perferendis at et aut. Eum soluta qui quia nostrum assumenda cupiditate ex odio. Dolorum labore ut quo et voluptatibus.', 'Animi doloremque eum debitis voluptas ea dolorem. Dolores repellendus voluptas quam quo pariatur sint laborum. Incidunt veniam expedita laboriosam voluptatem harum aut corrupti.', 'quam', 1, 9, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(51, 'Quaerat molestias nesciunt voluptatem deserunt eum sed sunt similique. Voluptas officia praesentium quasi asperiores voluptates qui. Quasi esse assumenda aperiam voluptatem nisi consequuntur voluptatum.', 'Rerum qui qui dolore id ipsam incidunt. Excepturi debitis enim in dolores suscipit omnis. Quod debitis et quis ea optio quam unde ipsum.', 'qui', 20, 17, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(52, 'Numquam assumenda minus nisi. Atque mollitia dolore deleniti quo. Et voluptas ea dolore maiores maxime praesentium voluptate eos. Ea eaque sed dolore sint odit adipisci.', 'Tenetur velit quia cupiditate possimus. Autem perspiciatis quo in ut. Iusto dicta voluptates repellendus sunt.', 'Autem', 20, 13, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(53, 'Veritatis modi quo corporis officiis officia voluptatem saepe. Tenetur qui velit reprehenderit provident et incidunt.', 'Possimus blanditiis blanditiis quo qui et. Aliquid ut inventore sed quidem voluptatum earum et. Accusamus repellat cumque quis consequatur sunt ipsam.', 'inventore', 5, 95, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(54, 'Molestiae eaque sint nemo saepe quia non eum enim. Aut provident qui quia. Voluptate omnis aut inventore omnis debitis.', 'Voluptatem accusantium atque a enim. Rerum labore alias officiis exercitationem. Et saepe est laboriosam consequatur ad iure. Necessitatibus porro quo rerum aspernatur quis ducimus.', 'Et', 20, 26, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(55, 'Voluptas et alias adipisci fugit blanditiis et dolores. Necessitatibus est itaque adipisci minus consequatur. Aut soluta facilis aut mollitia sint. Porro quidem voluptates voluptatibus amet adipisci rerum qui. Distinctio eos aliquam qui quo et doloribus.', 'Incidunt deleniti et impedit. Facere deleniti et magnam alias molestiae. Saepe qui velit ut quia dolores repellat laborum rerum.', 'quia', 10, 52, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(56, 'Dolorem rerum omnis ut odio dolor. Porro tempore eos nihil. Rerum aut dolorum iure omnis illo illo porro quia.', 'Eos ut est esse numquam quas explicabo. Magnam nostrum minus dolorem quos voluptas. Iste doloremque alias autem qui doloremque dicta.', 'nostrum', 20, 82, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(57, 'Libero nihil non reprehenderit non. Dicta delectus enim reprehenderit dolor deserunt. Aut modi et architecto eius eveniet consequuntur similique assumenda. Totam cum dignissimos cumque sed quam voluptatem. Sunt numquam odit occaecati sint quo soluta.', 'Neque nam nostrum dolores harum quos minima. Quas quia debitis et sit commodi. Temporibus nihil vel vitae adipisci ea soluta repudiandae. Natus quidem ipsa minus sit doloribus distinctio id. Eos eveniet dolores ut repellat dolores deserunt earum.', 'ipsa', 15, 11, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(58, 'Consequatur sed aut aliquam architecto soluta. Nobis sunt voluptatem enim quis. Dolorum itaque aspernatur ut harum vitae.', 'A voluptas rerum dolorem quasi. Laudantium accusamus quos rerum sed dolorem quam laborum. Maxime amet similique deserunt. Ducimus et ut vel totam ea et. Est vel consequatur ut ipsam omnis non est.', 'rerum', 10, 86, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(59, 'Tenetur omnis quo illo quia fugiat autem voluptatum. Quasi quis atque ut. Nesciunt est modi non. Eum et harum in veritatis odit voluptas.', 'Quia quam deserunt ex autem ipsam. Rerum velit quis veniam. Totam tenetur dolorem qui iure est sunt illo nostrum. Enim nihil animi aut cumque ex temporibus.', 'velit', 1, 40, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(60, 'Cupiditate commodi incidunt optio est quia. Quo soluta molestiae reiciendis consectetur. Exercitationem vitae odit consectetur quasi.', 'Non aut amet quia iste nihil sunt mollitia voluptate. Quo et laboriosam sed aliquid molestiae vel aspernatur qui. Sint autem facere voluptatem. Quia aut rerum qui quo reprehenderit consequatur.', 'et', 1, 6, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(61, 'Assumenda numquam et expedita quae omnis. Quos molestias eveniet aperiam doloribus itaque quasi. Explicabo ut quam possimus ratione totam harum amet. Ipsum exercitationem recusandae a rem sed explicabo dignissimos.', 'Minima veritatis numquam eum corrupti et. Repellat et et aut natus. Deserunt sed quaerat nostrum tempora optio. Sed minus et similique quod rerum veniam.', 'Deserunt', 5, 100, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(62, 'Qui et eius voluptatem voluptatem doloribus tenetur. Fuga blanditiis cupiditate at libero illo ut esse nam. Sed quia unde nulla eius fuga sequi.', 'Consectetur voluptatem exercitationem et commodi atque quis ut. Porro quidem vitae fugiat. Placeat nobis deserunt in illum doloremque. Aut adipisci aliquam vel aut tempore.', 'voluptatem', 20, 2, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(63, 'Sint sit mollitia sed voluptates impedit est animi. Ipsum illum voluptatem incidunt quae et adipisci. Sunt impedit cumque fugiat quia ducimus qui odio. Maiores tenetur laudantium deserunt nihil.', 'Earum ut ratione ut doloribus est doloremque. Saepe velit et porro et. Molestiae et voluptatem officia in. Soluta dolores ipsam quia rerum qui accusamus.', 'officia', 10, 9, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(64, 'Quia delectus porro voluptas quia voluptatem earum quas. Voluptates optio ut dolores nobis culpa.', 'Est in quod pariatur exercitationem a et veritatis. Rerum impedit ut rerum aliquam nihil. Exercitationem odit sint ut eos voluptas odio.', 'Est', 10, 30, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(65, 'Maiores id quia eius ut et. Eum quae sed sed. Numquam autem soluta consequatur. Aliquid vitae sit ut.', 'Esse dignissimos numquam repellendus nihil dolorem eius. Iusto libero ipsa molestiae vero sed. Cumque quia commodi cupiditate voluptas nihil. Tempora asperiores et nemo perferendis est accusantium.', 'est', 1, 25, '2021-02-15 10:20:36', '2021-02-15 10:20:36'),
(66, 'Quisquam temporibus qui omnis ut vitae. Non omnis ducimus eveniet velit quia voluptatem vel. Minus error dolor est provident molestiae.', 'Vel praesentium maiores ut qui enim dolor maxime. Omnis minus libero et corrupti. Vel minus et facere autem et ipsam. Quis tempore et vel modi nihil.', 'corrupti.', 15, 69, '2021-02-15 10:20:37', '2021-02-15 10:20:37'),
(67, 'Quia eligendi voluptate dicta aliquid ipsa. Alias asperiores sint nesciunt rerum et vel beatae molestias. Possimus sequi nostrum cum. Cumque aut libero eos sed consequatur quia nemo.', 'Neque consectetur soluta id omnis. Et quod sunt sit qui. Et temporibus sed omnis.', 'id', 5, 14, '2021-02-15 10:20:37', '2021-02-15 10:20:37'),
(68, 'Maxime id aut aut voluptates. Quis veniam harum qui et. At pariatur nemo dolor debitis ut quia at. Veniam voluptatem autem vero autem.', 'Ipsa officia nisi amet assumenda. Repellat quis adipisci voluptatem vel neque omnis sit. Atque non minima velit quod.', 'amet', 10, 61, '2021-02-15 10:20:37', '2021-02-15 10:20:37'),
(69, 'Molestias corporis deleniti voluptas voluptatem neque aut. Laudantium nemo quo voluptatum consequatur facere voluptatum. Dolor dolores et est quia sed. Optio veritatis placeat inventore est.', 'Enim nobis consequuntur commodi quibusdam. Temporibus architecto sequi fuga fugiat molestiae. Ut aut eius reprehenderit et consequatur quia. Recusandae est voluptas quos.', 'reprehenderit', 15, 67, '2021-02-15 10:20:37', '2021-02-15 10:20:37'),
(70, 'Voluptas tenetur deleniti consectetur ratione est voluptate vero. Expedita aperiam itaque qui doloremque. Non ipsam hic aliquid sint temporibus doloribus laudantium. Incidunt libero ut et tenetur sapiente nam ut est. Reprehenderit facilis id et sed distinctio quia quia.', 'Nihil omnis sit facilis tenetur qui laboriosam ea. Eum ratione mollitia molestiae consequatur animi voluptatem. Quibusdam saepe reiciendis vel vel laboriosam repudiandae sunt. In neque harum fuga consequatur et. Nam eligendi nulla consequatur est voluptate.', 'mollitia', 5, 16, '2021-02-15 10:20:37', '2021-02-15 10:20:37'),
(71, 'Odio cumque natus natus. Unde fugit hic impedit vel. Aut alias ab neque dolore.', 'Perspiciatis quia et in non. Beatae est hic quibusdam molestiae quo. Illum amet ex minima eum tempore est maxime saepe. Ut vero aut quia ut unde aut voluptas cumque.', 'in', 10, 76, '2021-02-15 10:20:37', '2021-02-15 10:20:37'),
(72, 'Eius magni consequuntur voluptate earum distinctio. Omnis perferendis non quia. Consequatur quia aliquam dolorem occaecati quod neque.', 'Velit est qui labore commodi accusantium aperiam accusamus. Ut minima aut occaecati quis debitis. Doloremque hic saepe consectetur voluptas qui. Id aliquid molestiae excepturi dolor.', 'dolor.', 1, 5, '2021-02-15 10:20:37', '2021-02-15 10:20:37'),
(73, 'Tempore sequi incidunt ullam inventore repellendus vel ut. Expedita provident fugiat id iure ipsam doloremque voluptatem. Consequuntur ut totam ratione est veritatis quis.', 'Ducimus facere soluta ut. Dicta consequatur eius omnis assumenda quia. Ad sed totam eum et possimus. Unde itaque exercitationem ipsam sed.', 'omnis', 15, 27, '2021-02-15 10:20:37', '2021-02-15 10:20:37'),
(74, 'Quaerat aut eum ad eligendi. Nesciunt dolor commodi reprehenderit et sapiente voluptas. Quia labore ex alias dolores. Consequatur sunt ut et ratione ab quisquam quia consequatur. Provident ad consequatur non assumenda incidunt.', 'Quia sunt porro blanditiis animi et quidem et. Repellat id quidem iusto sapiente amet fuga eveniet. Autem error et ad pariatur consectetur.', 'porro', 1, 19, '2021-02-15 10:20:37', '2021-02-15 10:20:37'),
(75, 'Repellat id eos aspernatur. Id aliquam vel non consequatur assumenda tempora ut. Aut est enim id quia voluptas at fuga laborum.', 'Possimus ut similique beatae illo. Minus suscipit quis nemo aut sint nihil. Aut recusandae voluptas ut commodi.', 'recusandae', 15, 92, '2021-02-15 10:20:37', '2021-02-15 10:20:37'),
(76, 'Officia autem voluptates et tempore quibusdam sunt officia. Ut quibusdam ea qui. Aspernatur molestias ut quo quam incidunt. Quo necessitatibus est ipsum aut et id.', 'Sed quo ut magni. Laudantium nesciunt repellat earum nostrum doloribus rerum. Facere soluta veniam harum maxime fugiat.', 'rerum.', 15, 29, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(77, 'Distinctio suscipit vel repellendus voluptates. Dolor quis ad eveniet architecto a dolor. Esse non odit sint eius eum ratione aliquid ipsa.', 'Ab temporibus recusandae ab rem nihil velit dolores cum. Dignissimos nihil modi eaque officia. Cum accusantium amet doloremque vero laudantium aut. Sed aut nostrum veniam modi voluptas natus sunt.', 'recusandae', 5, 63, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(78, 'Et vero voluptatem sit quisquam. Quisquam aut quae incidunt iusto veritatis qui. Et nobis quod ex a dicta explicabo et. Animi distinctio non quo tempora suscipit.', 'Eum architecto ea aut accusamus est quia. Et sint facere ut perferendis temporibus doloremque iusto. Numquam dolore et ut exercitationem vero. Velit dicta aut repellat quia.', 'exercitationem', 5, 91, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(79, 'Minima non ratione sunt vel. Et et debitis incidunt nobis.', 'Inventore hic id at nemo ut eos perferendis. Sequi quia molestias quam non neque autem quis praesentium. Officia fugit itaque esse et omnis.', 'at', 5, 7, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(80, 'Architecto vero qui fuga quas voluptatem. Enim qui dolorum expedita. Ratione quos voluptatum est sunt magni itaque doloremque.', 'Qui sed ducimus consequatur et quos fugiat minus. Laudantium ducimus dolorem vero et voluptates asperiores. Natus eum reprehenderit error est dolorem. Beatae eaque dolorum magnam.', 'consequatur', 5, 67, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(81, 'In placeat dolores vero quae rem accusantium. Ut error veniam exercitationem aliquam similique cum modi. Odio dolores mollitia ipsa nobis expedita praesentium. Non placeat possimus autem possimus voluptates maxime ut. Est dolorum commodi non et occaecati possimus saepe.', 'Impedit voluptatem qui unde eos placeat. Harum repellat officia ut impedit. Atque dolore non eius sit voluptatem cupiditate. Quidem rerum perferendis quas doloremque amet.', 'eos', 1, 77, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(82, 'Qui quod animi est. Aut natus voluptatem tempora odit sed. Voluptatem et dolore ut qui minus repellendus. Accusamus consequatur est repellat quis molestiae nam.', 'Illo optio ut sit facilis quasi animi ut. Qui cumque molestiae velit rerum rem voluptatem aliquam. Nulla repellendus dolor corporis sint est doloremque.', 'sint', 1, 24, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(83, 'Non et autem excepturi qui ipsa dolor laborum. Ducimus eius autem blanditiis dolores nam quia aut. Vitae nesciunt natus eaque sit. Sunt repellendus possimus ut assumenda odit. Minus porro debitis veritatis vel perspiciatis facere.', 'Sequi velit quasi rem. Illum iusto quibusdam voluptates saepe eos. Et doloribus et odio qui quod vitae.', 'doloribus', 1, 67, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(84, 'Est fuga nihil eum molestiae iure sunt. Quaerat voluptatibus quod numquam voluptatem ea voluptatibus perferendis. Iure et et et neque et non ut.', 'Consectetur eligendi ut consectetur expedita provident. Dignissimos aut est explicabo omnis quam rem.', 'rem.', 5, 45, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(85, 'Ut ipsum repellat quam aut quis modi. Sed neque voluptatem quisquam aliquam quas optio. Omnis qui sunt aut veritatis. Sunt nostrum quia nihil quod.', 'Soluta doloremque doloribus ut sit laudantium. Debitis dolores excepturi non ut quisquam necessitatibus. Vitae placeat quidem similique voluptatum aperiam aut. Enim explicabo praesentium vitae dolorum. Unde accusamus qui repellat animi nesciunt occaecati.', 'explicabo', 5, 22, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(86, 'Quaerat explicabo suscipit dicta blanditiis molestias et. Perferendis perferendis laudantium qui culpa quae hic corporis.', 'Itaque quia labore molestiae esse voluptatum. Voluptas nobis voluptas rerum.', 'molestiae', 10, 64, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(87, 'Tempore aut sit dolorem. Possimus fugit ut est quis voluptatem eaque neque possimus. Iste quo voluptatem quaerat quia aperiam.', 'Exercitationem aut sint a impedit amet in. Impedit dolor repellendus quod et. Porro aliquam molestiae rem. Non fugiat doloremque odit.', 'amet', 5, 93, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(88, 'Omnis quo rem non vel voluptatum aut. Voluptas fuga quia quia dolore. Autem dolorum omnis consectetur minima minus. Incidunt aut odio vero blanditiis.', 'Asperiores sit dolorum temporibus tempore culpa. Ipsam iusto sit cum et et dolores. Culpa rerum harum corrupti et eum consequatur qui.', 'consequatur', 20, 58, '2021-02-15 10:20:38', '2021-02-15 10:20:38'),
(89, 'Ducimus nulla maxime esse ea quia non recusandae incidunt. Molestias dolorem enim minima dolores. Sed delectus nulla nulla esse et ut. Dolore et hic excepturi harum et. Ducimus quos aut consequatur aut.', 'Perferendis et sint consectetur expedita voluptatum doloremque. Unde sed vero aperiam dolorem soluta numquam perspiciatis dolorem. Quis perferendis harum porro quo aut. Voluptatibus libero corporis voluptatem labore eum sunt accusamus.', 'numquam', 20, 21, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(90, 'Omnis labore reprehenderit ipsam illum voluptatem aperiam rem. Dolorum dolor ratione qui. Perferendis aliquam velit corporis magni.', 'Error eum facere quia tenetur velit labore. Officia et error placeat in. Quo molestiae cupiditate dolor consequatur officiis et cumque.', 'Officia', 5, 5, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(91, 'Ea fugit eius atque autem dolores voluptas aut. Sapiente est delectus ut laboriosam voluptatem. Sunt velit laudantium sit optio rerum et. Velit enim tempore minima culpa consequatur quia aut.', 'Tempore aliquam sunt ipsum rerum modi iusto. Sed nostrum sint libero voluptas. Sed et et laudantium quia nam praesentium ad in.', 'quia', 20, 55, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(92, 'Consequatur assumenda in id nam iste quia corrupti. Expedita eaque voluptas nihil velit explicabo optio et. Rem et recusandae provident tempora qui. Et aliquam ducimus consequatur saepe dolores repudiandae odio est.', 'Tempore repellat aspernatur distinctio minus ex. Reprehenderit commodi vel voluptas nemo.', 'minus', 15, 55, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(93, 'Ducimus nesciunt repellendus corporis perferendis. Corrupti beatae animi dolor dignissimos sit veniam. Ut voluptas qui voluptatem quis esse velit et. Voluptatem accusantium voluptatem in esse est molestias perspiciatis.', 'Dolorem autem velit molestiae quos. Ipsum rerum sed quo iure et sint tempora temporibus. Pariatur perspiciatis aliquam officiis quod esse aliquid. Aut repellendus deleniti nisi omnis reprehenderit harum.', 'nisi', 10, 12, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(94, 'Laboriosam et in sint. Nulla odit qui tenetur tenetur cum rerum quaerat. Quaerat dolore porro ipsa sequi ut quia sed. Dolor iste unde aut dolorum et eius aut.', 'Voluptas molestiae suscipit enim dolorem ad nesciunt. Aut ea praesentium esse earum harum natus ut. Blanditiis provident quia quae aut et culpa nisi. Nulla magnam odio quis maxime.', 'ad', 10, 5, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(95, 'Dicta iusto sed non qui laborum facilis labore. Et nemo qui distinctio eos ducimus. Rerum nihil deserunt laborum.', 'Saepe praesentium atque non provident voluptas labore. Et hic molestiae et praesentium consectetur omnis incidunt. Maiores repellendus maiores excepturi aut. Blanditiis et dolores aut non amet molestiae laboriosam sed.', 'et', 10, 3, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(96, 'Occaecati neque id voluptatem eius. Et ea voluptatem ut pariatur.', 'Possimus nisi autem et nisi alias voluptatem iste. Nesciunt laborum aut ea eaque vel magnam dolores. Eum doloremque laboriosam praesentium saepe nihil.', 'magnam', 15, 54, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(97, 'Iste voluptatem ut animi placeat. Aut quas optio doloremque voluptatem voluptates aperiam ea. Non aperiam impedit quo aperiam sit officiis ipsum qui. Quos quia velit autem cum doloribus pariatur sed.', 'Beatae esse voluptatem tenetur dolorum totam architecto ea. Repellendus eius est quis quaerat iste autem soluta. Aliquid sapiente qui dolores odio amet saepe consequatur. Suscipit rerum ut maxime fugit.', 'qui', 15, 54, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(98, 'Nihil voluptatibus neque non soluta. Magni aut neque nemo sapiente expedita neque at qui. Aut ab est odit fugit distinctio qui vel. Vel similique omnis ullam dolores.', 'Quasi vel iusto officiis ipsam voluptatem nihil sit. Iste qui enim porro enim modi recusandae inventore. Atque nostrum quasi aperiam omnis. Maxime a qui sit similique non ea dolorem earum.', 'nihil', 10, 91, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(99, 'Consequuntur aspernatur facere et porro. Cupiditate et aperiam omnis dolorum omnis aliquid ipsam reprehenderit. Et deserunt quia aut inventore. Animi qui a qui.', 'Fugiat voluptate nulla dicta voluptatem minima sed. Ad vero animi amet eius aliquam ducimus. Optio perferendis ea quibusdam quisquam sit provident.', 'sed.', 1, 9, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(100, 'Deleniti debitis laboriosam eos impedit dolorum neque. Eveniet tenetur voluptas iure doloremque error voluptatibus et nihil. Nisi voluptas nihil amet aut.', 'Voluptas nemo consequatur aperiam omnis autem quas. Ad officia neque ex in quas aut. Nesciunt quae fuga quis sit et.', 'in', 15, 9, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(101, 'Aut quia nisi ipsa architecto et occaecati. Eos quia enim voluptatem non dicta. Dignissimos debitis debitis in incidunt. Dolores perspiciatis velit quas voluptatibus ut eos libero ex.', 'Saepe sunt perspiciatis amet qui. Quisquam ab voluptate molestias ut voluptas quia excepturi. Reiciendis accusamus sunt minus et et. Sunt et fugit iste quasi perspiciatis eos commodi.', 'Reiciendis', 20, 54, '2021-02-15 10:20:39', '2021-02-15 10:20:39'),
(102, 'Quod mollitia occaecati soluta consequatur tenetur. Voluptatem qui molestiae sed esse in cumque. Ipsa aut omnis deserunt tenetur aliquid occaecati corrupti.', 'Non blanditiis voluptate ipsa ad quisquam quam. Corrupti odio perferendis consequatur fugit. Voluptatem autem illo facere nihil. Qui consequatur dolores voluptatem reiciendis. Sit quo vel ipsa enim asperiores.', 'Non', 15, 88, '2021-02-15 10:20:40', '2021-02-15 10:20:40'),
(103, 'Dicta placeat et facere quibusdam iusto. Ipsam maiores beatae ad officia minus a quos. Provident delectus sed velit voluptatum iure sequi iste id.', 'Praesentium quasi sit voluptas. Molestias commodi porro animi ipsam. Itaque est quia veniam et.', 'quasi', 15, 12, '2021-02-15 10:20:40', '2021-02-15 10:20:40'),
(104, 'Est perspiciatis facilis et eligendi dolores est. Et fugiat eum est aut. Illum architecto error rerum dignissimos quidem.', 'Corporis eligendi sit aut cum neque. Delectus minima velit eos dolore qui voluptas. Maxime error explicabo aut veniam pariatur rerum.', 'eos', 5, 86, '2021-02-15 10:20:40', '2021-02-15 10:20:40'),
(105, 'Qui alias officia est explicabo. Iusto alias voluptas soluta aut autem. Fugit architecto vel veniam deserunt neque. Aliquam voluptatem earum cupiditate corporis laudantium necessitatibus. Sapiente quia qui tenetur aut earum.', 'Id suscipit eos laudantium consequatur alias. Facilis est magni incidunt id. Sed est vel reprehenderit.', 'magni', 20, 84, '2021-02-15 10:20:40', '2021-02-15 10:20:40'),
(106, 'Laborum omnis qui iste quo et. Placeat illo temporibus optio eveniet itaque maxime. Eum iure ad voluptatem aut deleniti itaque ut consequatur.', 'Non sit culpa illum autem. Nihil et qui dolore sint. Earum incidunt voluptatem nihil fugiat. Error sed optio cum numquam ut.', 'cum', 10, 48, '2021-02-15 10:20:40', '2021-02-15 10:20:40'),
(107, 'Perferendis autem optio quis atque eligendi quae. Vero quis similique accusamus porro voluptas asperiores quia. Est non dolorum eos rerum recusandae aliquam dolore.', 'Velit voluptas ullam aliquid amet voluptatem. Eos facere error aut eum ea hic. Enim blanditiis aut unde repellendus.', 'Eos', 20, 90, '2021-02-15 10:20:40', '2021-02-15 10:20:40'),
(108, 'Culpa vero velit rerum optio. Id est odit nam sit consequatur dolores consequatur harum. Quibusdam enim qui molestiae et.', 'Quidem rerum est magni ipsa voluptates nihil corrupti eum. Nihil rerum hic quibusdam minima. Officiis est nam aut dolor consequatur soluta.', 'Nihil', 10, 79, '2021-02-15 10:20:40', '2021-02-15 10:20:40'),
(109, 'Id odio voluptas dolore occaecati. Sint corrupti possimus doloribus sequi tempore consequuntur temporibus. Eligendi ratione soluta eos totam consequuntur nihil repellendus.', 'Tempora nulla sunt autem voluptates eum unde explicabo. Non eligendi alias rerum vel rem dolor aut. Labore aut aliquam ut magnam.', 'nulla', 10, 75, '2021-02-15 10:20:40', '2021-02-15 10:20:40'),
(110, 'Ut et veniam exercitationem et. Nam quam qui quia nemo sit hic. Exercitationem laudantium libero pariatur repellendus velit enim voluptatem.', 'Ab voluptatem alias dolores. Aperiam odio vero illum voluptates optio quaerat consequatur minima. Nihil eos unde cumque necessitatibus ut similique.', 'quaerat', 15, 15, '2021-02-15 10:20:40', '2021-02-15 10:20:40'),
(111, 'Aut dolor dolores delectus cumque laborum enim. Nulla assumenda aut iusto labore. Explicabo non natus consectetur doloremque quisquam mollitia ut.', 'Quo quam molestiae sed maiores. Id enim in fugit commodi sed fuga eos occaecati. Voluptatum ad quam suscipit illo ut.', 'commodi', 1, 49, '2021-02-15 10:20:41', '2021-02-15 10:20:41'),
(112, 'Est laborum ea et quia veritatis. Sed eligendi sed dolorum sed ex culpa iure. Architecto facere placeat odio voluptas dignissimos nobis.', 'Ipsa tenetur debitis sit sit. Nulla a quas et tenetur. Cum nihil corporis modi quo accusantium voluptates commodi voluptatem.', 'debitis', 5, 37, '2021-02-15 10:20:41', '2021-02-15 10:20:41'),
(113, 'Omnis a veniam error quae. Aut sint quaerat deleniti veritatis qui. Eveniet natus consequatur consequuntur ipsam.', 'Amet velit error in quia dolorem laudantium. Fuga magnam qui in ea debitis. Voluptas placeat adipisci eligendi at.', 'dolorem', 10, 84, '2021-02-15 10:20:41', '2021-02-15 10:20:41'),
(114, 'Provident distinctio tempora est voluptas delectus praesentium tempora. Est sit maxime ipsum quia magnam aperiam dicta. Ut explicabo corporis molestiae totam ex sunt voluptatem.', 'Sequi dignissimos ratione aut ea officiis. Voluptas quis illum aut qui. Doloremque qui modi molestias consectetur dolor sint dolore. Molestias et facere qui nihil.', 'Sequi', 10, 76, '2021-02-15 10:20:41', '2021-02-15 10:20:41'),
(115, 'Impedit deserunt dolore nulla exercitationem unde. Reprehenderit delectus et molestiae rerum eligendi ut. Fugiat consequatur fuga pariatur laborum ut officiis quibusdam. Enim odit qui maiores sed velit. Vitae et sunt et nesciunt.', 'Numquam sit eos beatae adipisci labore ut. Ut impedit ab numquam molestiae minima illum. Aut earum sit iusto assumenda. Ea quae eveniet qui odio eius. Earum voluptatem aut iusto atque voluptatem placeat.', 'quae', 10, 6, '2021-02-15 10:20:41', '2021-02-15 10:20:41'),
(116, 'Voluptatem iure sunt et impedit sunt quasi. Sint voluptas deserunt vel debitis. Ratione minus at cumque aliquam corporis. Ut explicabo qui possimus et.', 'Aliquam facilis et aut. Qui quibusdam nemo eum odio exercitationem et. Quis non consequatur porro voluptatem pariatur delectus autem.', 'Quis', 10, 86, '2021-02-15 10:20:41', '2021-02-15 10:20:41'),
(117, 'Quis sapiente iusto autem sint ipsum. Numquam dolorem quia ut nisi quia maxime sed harum. Nihil possimus omnis dolorem nisi quos officia. Recusandae aut ab esse tempora sit veritatis.', 'Maxime nostrum voluptatum doloribus quis fugiat. Iste aut accusantium et alias aliquid sunt dolorem eius. Voluptas rerum neque eius eum. Facilis sit eius minima quaerat quis eos.', 'Facilis', 5, 3, '2021-02-15 10:20:42', '2021-02-15 10:20:42'),
(118, 'Et iusto officiis iure in impedit. Quibusdam doloribus provident quis ipsum deserunt nemo. Est consectetur dolor ullam.', 'Est corrupti neque dignissimos est veniam est. Et aspernatur est cupiditate debitis. Ea cumque cumque quia dolorum qui sunt.', 'veniam', 20, 78, '2021-02-15 10:20:42', '2021-02-15 10:20:42'),
(119, 'Qui dolores quia veniam corporis necessitatibus sunt ut et. Laboriosam eligendi consequuntur doloremque nobis. Labore esse sint et maxime. Consequuntur non cupiditate temporibus delectus debitis sed.', 'Beatae rerum excepturi ad exercitationem est pariatur. Dolor earum qui expedita quaerat fugit eos. Iure quia rerum autem omnis quasi aspernatur dolorem.', 'quaerat', 1, 48, '2021-02-15 10:20:42', '2021-02-15 10:20:42'),
(120, 'Perferendis magnam voluptatum rerum eveniet. Sed explicabo eius et eius nemo adipisci voluptas. Ea doloremque doloremque in quidem architecto numquam.', 'Impedit omnis ut corrupti doloribus. Cupiditate ex repellendus explicabo quia modi. Sunt impedit qui ullam atque aut.', 'atque', 5, 13, '2021-02-15 10:20:42', '2021-02-15 10:20:42'),
(121, 'Ut dolores totam necessitatibus ab tempora. Nostrum enim accusamus quod quia qui dolores sunt a. Reiciendis ut deserunt voluptates error. Error sit aperiam nihil iure alias ut aspernatur.', 'Quos est et inventore saepe consectetur. Aut harum eum ab dolores magnam sapiente. Eligendi rerum quasi velit molestiae.', 'consectetur.', 5, 39, '2021-02-15 10:20:42', '2021-02-15 10:20:42'),
(122, 'Non odit minima sed dolor laudantium eligendi modi. Ratione quod libero ea ut. Animi optio neque illo alias cum nesciunt.', 'Vel doloribus ad aut. Esse dolore quo molestiae voluptas. Quia eos a nam ut delectus. Odit non dolor est tempora quos laboriosam.', 'doloribus', 15, 19, '2021-02-15 10:20:42', '2021-02-15 10:20:42'),
(123, 'Ut voluptatibus distinctio voluptas ullam. Voluptatem maiores vel autem ullam facere qui dolorum. Excepturi sunt illo iste.', 'Enim omnis adipisci perspiciatis molestiae quia molestiae est. Accusantium et sunt quam tenetur eos. Ut quaerat temporibus voluptatibus officia dolores.', 'molestiae', 1, 4, '2021-02-15 10:20:42', '2021-02-15 10:20:42'),
(124, 'Dolores esse dolor fuga a iste totam et. Nobis voluptatibus impedit rem maxime voluptas qui. Nemo illo enim saepe magni est. Quae sequi repudiandae doloremque id sunt ad.', 'Facilis ut qui a delectus adipisci. Quae sit corporis cumque veritatis.', 'adipisci.', 15, 78, '2021-02-15 10:20:42', '2021-02-15 10:20:42'),
(125, 'Aperiam nihil voluptatibus repudiandae velit eveniet adipisci voluptatibus. Tempora debitis eos tempore omnis. Voluptatem omnis temporibus voluptatibus. Enim saepe laboriosam velit rerum quo.', 'Nihil dolores rem nesciunt est impedit unde ratione. Recusandae deserunt omnis consectetur. Eligendi amet dolorum quo nisi veniam non in adipisci.', 'quo', 15, 93, '2021-02-15 10:20:42', '2021-02-15 10:20:42'),
(126, 'Et molestiae perspiciatis dolor. Quis qui voluptate quasi temporibus dolores veritatis. Delectus non repudiandae dolorem sit tenetur. Aut debitis cum eum odit. Quod doloremque voluptas consequuntur.', 'Nulla sit odio sint. Eum tempora molestias tempora est. Voluptas et ut voluptas non eaque.', 'et', 15, 29, '2021-02-15 10:20:42', '2021-02-15 10:20:42'),
(127, 'Maxime et sed distinctio perferendis. Impedit velit rem consequatur totam incidunt laudantium dolorem. Odio quia et qui tenetur. Rerum quis beatae a soluta ipsam debitis sed ullam.', 'Nihil harum omnis optio sint. Laboriosam omnis vel a voluptatem suscipit inventore sunt. Amet eum voluptatem reprehenderit consectetur aliquam et. Sint officiis temporibus nam debitis a et.', 'consectetur', 15, 79, '2021-02-15 10:20:43', '2021-02-15 10:20:43'),
(128, 'Reprehenderit aliquam a assumenda aut. Ratione debitis in voluptatem pariatur quidem. Earum sit dolore et amet esse. Rem exercitationem odit earum ex adipisci.', 'Earum optio ut qui corporis. Maiores ut inventore quia reiciendis. Et vitae sunt odio odit vel placeat. Velit odio occaecati deserunt laborum voluptas.', 'deserunt', 1, 57, '2021-02-15 10:20:43', '2021-02-15 10:20:43');
INSERT INTO `questions` (`id`, `title`, `answer`, `right_answer`, `score`, `quiz_id`, `created_at`, `updated_at`) VALUES
(129, 'Ut quo vel est optio officiis quo voluptas. Perspiciatis ut voluptatem nihil. Sapiente nisi nobis ea minima in omnis magnam quasi. Maiores sunt dolor eos tempora consectetur dolores eos. Dolorem ipsam accusantium et voluptates.', 'Itaque ab aut perspiciatis est cum impedit voluptas laborum. Voluptatem repudiandae ipsum et. Sit id ut dolores alias dignissimos nobis ipsam. Distinctio quos aspernatur autem et eius vel sint.', 'Distinctio', 10, 5, '2021-02-15 10:20:43', '2021-02-15 10:20:43'),
(130, 'Hic accusantium error voluptate nam. Atque similique autem quia saepe. Dignissimos adipisci error veritatis beatae ut beatae porro. Et minima nesciunt dolor omnis et. Est eos asperiores veritatis cum.', 'Est tempora aliquid voluptatibus ex molestias. Et dolor a aliquam exercitationem. Ut alias sint harum.', 'tempora', 15, 53, '2021-02-15 10:20:43', '2021-02-15 10:20:43'),
(131, 'Repudiandae ut vel laborum hic modi repudiandae. Et et aspernatur quia non voluptatum. Ea possimus qui placeat nulla. Veniam odio magni tempore nemo rerum quos aliquam.', 'Aliquid magni expedita exercitationem cumque eum blanditiis. Nobis enim molestiae provident velit nam. Facere qui repellat in possimus. Aspernatur facilis odio cumque et non distinctio.', 'non', 5, 29, '2021-02-15 10:20:43', '2021-02-15 10:20:43'),
(132, 'Qui delectus et provident distinctio voluptate et ratione. Consequatur in et ad. Dignissimos est asperiores voluptatem enim. Quaerat quae autem consectetur ex voluptatibus. Omnis repudiandae et ut et qui et.', 'Quia magnam quasi velit ut sapiente dolores eos. Atque eveniet dignissimos iure tempora occaecati voluptas debitis. Explicabo debitis et necessitatibus delectus soluta id sed maiores.', 'quasi', 5, 70, '2021-02-15 10:20:43', '2021-02-15 10:20:43'),
(133, 'Repudiandae nobis voluptas consectetur fugiat. Ut autem praesentium excepturi quaerat magni quia. Sed et aut provident. Qui sunt quasi molestias.', 'Repellendus tenetur perspiciatis id omnis dolores maiores natus. Perspiciatis eos vel placeat dolorum. Eos quae autem esse qui praesentium soluta eaque. Possimus blanditiis numquam odio saepe minus.', 'qui', 1, 89, '2021-02-15 10:20:43', '2021-02-15 10:20:43'),
(134, 'Eaque repudiandae totam dolor eos at et dolores. Voluptatibus magni voluptatem dolorem incidunt delectus. Dolorem ea sit et consequuntur. Earum placeat vel fugiat fugit et voluptatum.', 'Consectetur nesciunt assumenda ipsa quasi rerum voluptas. Consequatur cumque voluptate qui nostrum odio. Deleniti corrupti in perspiciatis nihil quod quibusdam magnam omnis. Et fugit voluptates ipsum quasi.', 'Et', 1, 38, '2021-02-15 10:20:43', '2021-02-15 10:20:43'),
(135, 'Debitis impedit similique similique voluptatem error cumque. Molestiae sed temporibus recusandae voluptatem est ullam error. Dolores et distinctio provident ullam excepturi est dolor libero. Doloribus eaque nisi quam magni vitae aut animi.', 'Corporis in laborum perspiciatis aut et voluptas ut. Ipsum voluptatibus qui vitae id et occaecati. Et dicta debitis nobis ut inventore et. Et est quia veniam ut natus voluptatem a.', 'Corporis', 10, 76, '2021-02-15 10:20:43', '2021-02-15 10:20:43'),
(136, 'Itaque ratione enim est tempore praesentium distinctio qui. Voluptas iste aut quis aperiam eligendi.', 'Sint quibusdam culpa sit. Quisquam libero voluptates impedit inventore autem. Voluptates rerum voluptas itaque voluptatem maxime corporis sequi suscipit.', 'autem.', 5, 2, '2021-02-15 10:20:43', '2021-02-15 10:20:43'),
(137, 'Aut aut dolor et commodi expedita optio velit et. Voluptate porro corporis rerum rerum. Qui libero voluptatibus harum illum est.', 'Odit laboriosam et laborum eligendi ad aut illum. Minima dolores similique ad alias explicabo in distinctio. Maiores aut iusto delectus deleniti perferendis.', 'distinctio.', 1, 81, '2021-02-15 10:20:43', '2021-02-15 10:20:43'),
(138, 'Illum eius sapiente libero illum sed molestiae. Saepe reprehenderit omnis fuga qui odio. Voluptates veritatis aliquid eligendi sed facere. Consequatur et cum deleniti expedita eius unde.', 'Quos dignissimos minus culpa beatae. Alias rerum impedit necessitatibus et sed consequatur. Beatae unde explicabo quibusdam sapiente pariatur aut nihil.', 'beatae.', 1, 36, '2021-02-15 10:20:44', '2021-02-15 10:20:44'),
(139, 'Dolorem officiis ab optio sit. Placeat itaque qui sed sunt totam possimus. Exercitationem velit eligendi soluta tempore.', 'Tempore eum quia consequuntur velit rerum. Blanditiis placeat vel voluptas et facere. Voluptas asperiores cumque ut quo pariatur omnis voluptatem. Est quibusdam est fuga mollitia.', 'voluptatem.', 20, 73, '2021-02-15 10:20:44', '2021-02-15 10:20:44'),
(140, 'Voluptate quisquam minus quidem enim est rem alias saepe. Blanditiis corrupti odit aut quis qui et enim molestias.', 'Quis qui qui porro commodi dolor eaque debitis dolore. Quia et voluptas dolorem quam ut in placeat. Rerum consectetur qui eveniet aut dolores cum unde. Dolor voluptas numquam reprehenderit tempora.', 'Quis', 20, 95, '2021-02-15 10:20:44', '2021-02-15 10:20:44'),
(141, 'Dolores molestias exercitationem dolor sit. Accusantium cupiditate tempore facilis nobis. Sunt laborum placeat dolorem esse.', 'Ab culpa dolor omnis a dignissimos voluptas libero. Doloribus quibusdam consequuntur nemo mollitia quo cum. Tenetur qui quisquam omnis tempora rerum in consequuntur. Aut tempora pariatur culpa pariatur tenetur est magni.', 'tempora', 10, 88, '2021-02-15 10:20:44', '2021-02-15 10:20:44'),
(142, 'Dolorem voluptas sint recusandae earum pariatur voluptas. Dolor eos ad repellendus suscipit rerum. Dolorem incidunt qui reiciendis asperiores sed voluptatem harum aspernatur.', 'Similique sed sit blanditiis. Explicabo quia asperiores ut voluptate ipsum itaque. Dignissimos non aut in. Molestias quis soluta est omnis repellendus id.', 'Molestias', 15, 30, '2021-02-15 10:20:44', '2021-02-15 10:20:44'),
(143, 'Repudiandae mollitia incidunt quia fugiat est. Beatae aut aut harum. Accusamus asperiores ea nihil debitis quo qui. Odit animi tempore eos cupiditate est repellat hic.', 'Quas et hic et nihil dicta mollitia. Aliquam consequatur dolorum omnis repudiandae explicabo nihil. Error consequatur accusantium et est aut voluptatem. Nisi accusamus et nisi cumque eum et tempore. Dolorum praesentium sapiente sint dolorum.', 'omnis', 5, 36, '2021-02-15 10:20:44', '2021-02-15 10:20:44'),
(144, 'Ea et inventore enim ut dolores libero. Laborum velit dicta nemo nesciunt. Ipsum et non ullam similique veritatis dolorem amet sed. Reiciendis ipsa animi laborum quidem.', 'Voluptatem minima earum mollitia ea architecto eveniet. Fugit aut rem impedit. Omnis laborum consectetur vitae ea dolore sed. Soluta impedit sint rerum tenetur non odit.', 'laborum', 10, 30, '2021-02-15 10:20:44', '2021-02-15 10:20:44'),
(145, 'Suscipit a dolor quaerat aliquam assumenda corrupti. Debitis cum sunt et impedit. Sint neque sed possimus explicabo aut. Temporibus rerum saepe facilis qui. Sint aut in qui saepe omnis illum.', 'Veritatis sunt voluptas dolorem voluptates sed dolores consectetur. Consequatur aut cum voluptatem sapiente aperiam. Rem hic voluptatem consequuntur eos maiores assumenda quisquam fugit.', 'aperiam.', 15, 59, '2021-02-15 10:20:44', '2021-02-15 10:20:44'),
(146, 'Suscipit expedita dolores quia natus sit in mollitia. Et tenetur impedit pariatur excepturi ad ut architecto. Delectus dignissimos minima possimus. Dolorem illum reprehenderit et.', 'Tempore sunt sit recusandae amet et. Error voluptatibus ipsum provident quidem sed. Est dicta qui eos molestias possimus quia quasi natus.', 'sit', 5, 24, '2021-02-15 10:20:44', '2021-02-15 10:20:44'),
(147, 'Vero repellendus voluptas dolores animi aliquam aut. Sint ipsa debitis nisi voluptas velit et suscipit. Accusamus et voluptas fuga.', 'Sunt quis consequatur cum non. Provident ut aut placeat. Voluptatem porro officia molestiae vel iusto rerum. Quasi sed voluptatem aperiam repellat tenetur cupiditate.', 'Quasi', 15, 62, '2021-02-15 10:20:44', '2021-02-15 10:20:44'),
(148, 'Architecto ut et aut consectetur voluptatem doloribus ut. Repellendus enim laborum sapiente modi quam est id. Velit laborum autem in nulla.', 'At voluptas debitis molestias doloremque. Provident est est velit. Et autem in dolorem possimus id. Sapiente quia voluptate unde commodi nisi sunt ea. Qui fugiat non quis fuga qui dolore.', 'dolorem', 15, 44, '2021-02-15 10:20:44', '2021-02-15 10:20:44'),
(149, 'Ipsam earum neque ducimus blanditiis. Veniam mollitia sapiente quis expedita. Et facilis sint sequi maxime. Minus voluptatem ut inventore corporis asperiores minus.', 'Et esse voluptates perspiciatis nisi officiis numquam qui. Incidunt quia optio voluptatibus et et esse. Et velit ut et ea voluptas.', 'esse.', 10, 33, '2021-02-15 10:20:45', '2021-02-15 10:20:45'),
(150, 'Deleniti iste necessitatibus quam itaque maxime magnam quia. Modi atque dolore impedit dicta. Qui velit consequatur ipsam esse. Corporis aliquam ut ad sit autem. Velit qui quo iusto amet et occaecati.', 'Sapiente quod cupiditate odio. Culpa perspiciatis quo repellat enim qui inventore voluptates. Aut ullam voluptatem autem id. Eos voluptatibus quia pariatur aut et.', 'aut', 10, 96, '2021-02-15 10:20:45', '2021-02-15 10:20:45'),
(151, 'Eveniet eaque rerum quis modi dicta cupiditate. Ullam cumque quas vel. Voluptatem earum temporibus natus voluptatem est fugiat. Et nulla accusantium vero tenetur sit.', 'Qui incidunt qui quidem sint perferendis. Voluptas delectus tenetur accusantium quos laudantium. Ea voluptas quaerat nihil quo corrupti. Eos qui minima sequi facilis nesciunt.', 'quos', 5, 7, '2021-02-15 10:20:45', '2021-02-15 10:20:45'),
(152, 'Placeat consequatur aspernatur ut et aut. Quaerat id voluptatibus occaecati incidunt aliquid distinctio. In asperiores minima non. Omnis eum voluptatem voluptatibus laborum velit tempore est.', 'Quia aut itaque ex reiciendis ex ea. Sunt rem deserunt quasi itaque neque minima. Temporibus aperiam dolor ullam laboriosam consequatur laboriosam.', 'neque', 15, 56, '2021-02-15 10:20:45', '2021-02-15 10:20:45'),
(153, 'Et veniam iure fugiat est qui esse. Mollitia alias alias corporis numquam porro vitae sit. Consectetur consectetur velit animi. Error esse quia ipsa sit odio rem.', 'Aut et molestias eveniet temporibus. Porro est odio dolores velit dolores unde. Aut ratione dicta voluptatem debitis aspernatur est voluptatem. Laudantium cum sed qui excepturi optio id.', 'voluptatem', 1, 6, '2021-02-15 10:20:45', '2021-02-15 10:20:45'),
(154, 'Dolores exercitationem libero optio qui non. Repellat officia iste labore consequatur quis delectus dolorem. Et dolorem hic cum nemo ea velit. Iure deleniti reiciendis amet asperiores in harum.', 'Temporibus molestiae nostrum quia aut. Consequatur veniam tenetur sit consequatur et nulla tempore. Sed tenetur omnis quia nesciunt et ex.', 'nostrum', 1, 36, '2021-02-15 10:20:45', '2021-02-15 10:20:45'),
(155, 'Rerum numquam eum et fugiat. Alias exercitationem ea molestiae suscipit aspernatur. Soluta iste odit facere dolorem voluptatem.', 'Distinctio earum labore laudantium dolorem eum libero. Qui et quas et inventore quod dolore perspiciatis necessitatibus. Iusto debitis id iusto odit magnam inventore.', 'debitis', 20, 85, '2021-02-15 10:20:45', '2021-02-15 10:20:45'),
(156, 'Earum id culpa voluptatem nesciunt voluptatum non veritatis. Doloribus eligendi ex sit facilis quis animi. Odit sed molestias corporis voluptatem. Omnis voluptatem qui tenetur animi natus tempore et.', 'Numquam cum architecto animi rerum nihil odio ut. Molestias nesciunt iure inventore sunt. Nihil quam dolorum dolor officiis molestiae maiores. Atque quo numquam sed ad. Incidunt magnam et itaque non pariatur.', 'quam', 20, 72, '2021-02-15 10:20:45', '2021-02-15 10:20:45'),
(157, 'Omnis ullam magni qui tempore. Atque quis voluptatum ut omnis suscipit neque vitae rem. Est minus eum perferendis iure officiis aliquid et.', 'Commodi voluptas sequi odit saepe. A nobis sunt autem facere. Vitae ut magni enim reiciendis tempore rerum.', 'tempore', 5, 98, '2021-02-15 10:20:45', '2021-02-15 10:20:45'),
(158, 'Libero dicta fugit assumenda in sapiente. Quia aut autem provident tempore. Repellendus mollitia tempora esse.', 'Perspiciatis assumenda non consequatur porro. Adipisci earum totam libero qui ut est. Quas eligendi ipsam quidem. Nobis architecto facilis suscipit consequuntur laborum.', 'ipsam', 5, 61, '2021-02-15 10:20:45', '2021-02-15 10:20:45'),
(159, 'Odit nesciunt voluptate maiores facere nesciunt accusamus nihil. Reprehenderit est iure voluptas et quos porro. Dolorem optio ipsam ut non omnis. Ducimus eius pariatur reiciendis assumenda atque ex.', 'Fuga molestiae voluptatem maiores beatae nesciunt occaecati possimus. Numquam ducimus est soluta. Perspiciatis commodi esse id dignissimos.', 'molestiae', 15, 20, '2021-02-15 10:20:46', '2021-02-15 10:20:46'),
(160, 'Eos a voluptas dignissimos laudantium. Iusto eveniet ratione tenetur maiores est. Ea ratione voluptas id.', 'Et voluptatem amet dolores. Labore architecto qui hic quibusdam exercitationem. Voluptas eum explicabo quos vel dolorem.', 'Labore', 5, 52, '2021-02-15 10:20:46', '2021-02-15 10:20:46'),
(161, 'Et atque provident aliquam distinctio. Rerum eum tempore nam officia sed ullam tenetur. Totam dolorum dolor illum similique incidunt eveniet voluptas sit.', 'Qui quo corrupti cum ipsa reprehenderit pariatur quidem debitis. Reiciendis quisquam velit provident a. Dolores velit dignissimos aliquid et quaerat.', 'aliquid', 20, 2, '2021-02-15 10:20:46', '2021-02-15 10:20:46'),
(162, 'Excepturi molestiae voluptatem quisquam deserunt dolores sint nemo alias. Modi non ad aut fuga illo et. Mollitia ut explicabo quidem consequatur est. Mollitia aut hic molestiae omnis accusantium est.', 'Quaerat rerum sapiente voluptas et et. Quibusdam tempore repudiandae temporibus laudantium ea. Omnis vitae sed modi iure. Quibusdam ex impedit rerum voluptatem doloremque recusandae.', 'impedit', 1, 49, '2021-02-15 10:20:46', '2021-02-15 10:20:46'),
(163, 'Qui minus omnis sint natus totam ea. Molestiae iusto esse omnis fuga. Nulla nisi veritatis qui qui.', 'Quam excepturi perspiciatis voluptatum impedit cum quo ut. Velit animi eveniet aut molestiae blanditiis consectetur. Magnam amet illum corporis molestiae quaerat aliquid quo.', 'illum', 15, 1, '2021-02-15 10:20:46', '2021-02-15 10:20:46'),
(164, 'Ducimus possimus est ut aut sed molestiae mollitia. Ut eligendi aut dolorem explicabo. Est eum velit et quidem et ipsam sunt. Ducimus sunt voluptas placeat eveniet.', 'Amet iste labore accusantium vero ad. Commodi a corrupti fugiat. Molestias ad iste soluta quaerat ratione repellat suscipit.', 'ratione', 20, 11, '2021-02-15 10:20:46', '2021-02-15 10:20:46'),
(165, 'Reprehenderit aut harum ut accusamus ut commodi dolor autem. Inventore quam ut et et dolores. Aut alias quo praesentium doloremque vero nulla laboriosam.', 'Architecto dignissimos id quia est ut omnis quae. Quo libero eius quae dicta nostrum modi. Quis fugit est explicabo sed earum dolorem voluptas.', 'est', 15, 43, '2021-02-15 10:20:46', '2021-02-15 10:20:46'),
(166, 'Quod est quam in sint provident vel consequatur. Voluptatem sed repellendus illo dolor debitis molestiae. Vel alias suscipit repellat voluptatem velit consequatur.', 'Asperiores quidem natus sint quasi. Explicabo nobis dicta itaque dolore qui. Sit distinctio libero modi. Aut veniam ullam vel sint deleniti omnis.', 'quasi.', 20, 78, '2021-02-15 10:20:46', '2021-02-15 10:20:46'),
(167, 'Rem autem aut laborum quasi quaerat dolorum. Sequi non incidunt molestias excepturi. Nesciunt eum dolorum molestiae hic voluptatem autem.', 'Iure magnam quas voluptas illum id sunt sit. Mollitia itaque tempora ullam necessitatibus sunt. Consectetur nihil eius eligendi in incidunt qui dignissimos.', 'incidunt', 5, 37, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(168, 'Ab eaque accusamus occaecati aut non. Quia ut quas est quos. Rerum libero quos aperiam optio et. Quod assumenda quo vitae optio.', 'Sint iure facere aut est. Delectus labore quasi ut voluptatem accusantium labore consequatur enim. Vel facilis perferendis qui culpa. Placeat ipsam at voluptatem sunt.', 'labore', 5, 22, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(169, 'Non rem consectetur velit sint. Cum quia perferendis vel qui quo consequatur. Impedit recusandae quo asperiores quis. Ea illum et mollitia et.', 'Laboriosam mollitia facere molestiae sed in. Quo et fugit quis error totam similique. Adipisci saepe cumque at cumque mollitia.', 'fugit', 20, 81, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(170, 'Quia fugiat tempora quibusdam molestias sunt quasi. Cumque ea voluptatum dolores quos quam iste. Illum aut adipisci molestiae est expedita quia ut. Et quae quis sint earum.', 'Placeat esse excepturi nam aliquid commodi. Et autem possimus et nostrum. Dicta excepturi amet repellendus sed perferendis quaerat. Nulla nemo ipsa quo accusamus officia dolorem.', 'nemo', 5, 39, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(171, 'Similique aut repudiandae quos sint et sint eveniet. Recusandae sed rerum et architecto amet.', 'Est aut aut rerum veritatis enim ad. Eos dolore ducimus ut dolores quos.', 'Eos', 20, 24, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(172, 'Temporibus earum temporibus debitis natus omnis asperiores. Quia consequatur sed tenetur exercitationem molestiae. Magni vero possimus quia temporibus sint est eos et. Tempore voluptatem aut ex iure minus.', 'Nihil tempore et rem labore quia id. Ex accusantium neque maiores quod provident tempore. Perspiciatis sed dolor inventore suscipit consectetur inventore id omnis. Aut in tempora cumque labore.', 'sed', 1, 16, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(173, 'Facere tempora et expedita quidem molestiae qui inventore. Quod enim dolores ducimus aspernatur ipsum sed. Ut corrupti est eaque accusantium blanditiis et. Id et et cumque vel dolores fuga occaecati.', 'Maxime id at eveniet consequatur officia. Neque quas minus cupiditate natus voluptatem illum. Molestiae suscipit ea non culpa recusandae. Saepe ipsa ut consequatur quaerat.', 'Saepe', 10, 88, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(174, 'Voluptatem quas ratione id quibusdam. Autem eos facilis enim eaque suscipit quaerat. Officia vero ut repellat rerum molestiae eaque.', 'Quia aliquid ipsum voluptatibus dolorem quos asperiores. Ea expedita sunt quo odio. Illo et ipsum illum facere totam. Et voluptatum dolorem nisi accusamus.', 'nisi', 1, 98, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(175, 'Est nihil quidem temporibus dolor veritatis neque. Quam fugit quae non nostrum itaque ratione.', 'Possimus reiciendis natus sequi voluptatem qui ut vitae. Voluptatum architecto velit et facilis. Dignissimos saepe et quae in.', 'Dignissimos', 10, 67, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(176, 'Reiciendis doloremque sed numquam molestias ut. Nobis animi quos molestiae aut dicta magni voluptatem. Labore omnis cupiditate est. Sit eos consequatur at non adipisci rem.', 'Vel sed fugiat optio commodi est adipisci. Quas sed amet commodi voluptates nemo qui. Et sunt aut sunt qui aspernatur.', 'sed', 5, 3, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(177, 'Facere quam cumque libero excepturi sint sed doloribus. Eos optio dolor autem suscipit. Earum harum delectus sit sed neque.', 'Voluptatem id quibusdam eligendi perspiciatis eveniet. Quo eligendi excepturi necessitatibus blanditiis sint. Soluta animi consequuntur eos et mollitia autem.', 'necessitatibus', 15, 52, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(178, 'Tenetur quis totam ut est. Rerum dolorum quis facilis accusantium incidunt. Iusto perspiciatis ab delectus nam. Asperiores odio id labore laboriosam veniam. Expedita iusto reprehenderit accusantium.', 'Tenetur atque non architecto architecto tempora. Dolores non rem voluptatem distinctio omnis. Voluptatum harum animi voluptatum molestias nihil sapiente qui.', 'tempora.', 10, 71, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(179, 'Aut repellat aut quia repellat pariatur qui reprehenderit. Cupiditate voluptatem laudantium voluptatem rem nobis. Vero molestiae sunt excepturi. Ut ipsa et modi iusto ea.', 'Nostrum nemo consequatur sunt laborum molestias et quasi. Delectus a quia consequatur. Nisi fugiat illum ab consequatur laborum hic vero.', 'laborum', 15, 16, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(180, 'Autem repudiandae sed laboriosam molestias consequatur sed. Deserunt numquam quia eum non. Perspiciatis est omnis repellat. Qui et provident voluptate quasi velit eveniet voluptas.', 'Qui illum nostrum eligendi consectetur. Consequatur aspernatur assumenda molestiae veritatis ad ratione. Consequatur sint sit fuga aliquid harum. Doloremque non nemo quo deleniti nulla.', 'illum', 15, 13, '2021-02-15 10:20:47', '2021-02-15 10:20:47'),
(181, 'Molestiae dolorum accusantium tenetur consectetur molestiae odio. Officia quo sint consequuntur harum. Officia et fugit doloribus aliquam asperiores ea. Ullam sit rerum ipsum libero est nemo eligendi.', 'Cum et in et reiciendis possimus et tenetur. A autem necessitatibus velit voluptatem doloribus cupiditate soluta. Sint aut fuga enim non libero et.', 'possimus', 10, 55, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(182, 'Et voluptates quia autem dolorum ipsam ipsa voluptas. Repellat mollitia adipisci quas voluptatem non minima. Maiores ut sunt sequi ut adipisci omnis minus dolores.', 'Et ea incidunt nihil molestias hic nam autem. Labore repellendus qui qui. Ratione quod quia eos voluptas sunt ex eveniet. Eum ut quia et et vitae nobis.', 'ut', 1, 15, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(183, 'Consequatur explicabo tenetur voluptates nam illo. Maxime molestiae consequatur adipisci quaerat. Voluptatem maiores porro ipsam quis quas. Necessitatibus dolor ut voluptatibus iste omnis porro dignissimos.', 'Enim quasi voluptatem architecto autem pariatur repudiandae consequatur. Et voluptatibus deserunt blanditiis dolorem ipsa nobis dolor. Quae laboriosam officiis voluptatem omnis qui et reprehenderit nam. Porro sequi deserunt molestias illo perspiciatis.', 'dolorem', 15, 35, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(184, 'Totam velit labore placeat. Qui officia qui modi cupiditate blanditiis. Expedita cum quidem eos inventore eum. Eos sapiente sit rerum incidunt et iusto veritatis.', 'Quod aliquam aut sit voluptas cupiditate aut voluptatem. Maiores deserunt voluptate sit laboriosam. Repellat nostrum non tenetur hic commodi. Culpa doloremque fugit tenetur vel porro.', 'Repellat', 15, 86, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(185, 'Optio saepe minus quis pariatur porro. Labore eaque soluta reprehenderit soluta aut ut. Non hic sed facere omnis maxime ea.', 'Omnis quisquam accusantium ullam minus vitae perspiciatis. Error ex nobis velit beatae qui natus voluptatum sint. Tempora voluptate ducimus nesciunt rerum.', 'natus', 20, 74, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(186, 'Labore quia deleniti numquam dolorem. Quasi reiciendis id voluptas debitis. Soluta fugiat sapiente praesentium cumque. Quasi neque corporis distinctio deleniti dolores eum delectus.', 'Sint exercitationem doloribus alias nisi autem accusantium. Cum et ut hic.', 'doloribus', 1, 79, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(187, 'Voluptatibus adipisci aliquam sunt nihil in et aliquid. Occaecati nihil rerum magni iste voluptatum odio dicta. Possimus quia nihil molestiae explicabo. Eaque sint aliquam aut facere.', 'Voluptate est necessitatibus similique nostrum placeat voluptate sint. Provident recusandae iusto voluptatem. Molestiae possimus nihil et laborum itaque sed vel veniam. Id dolore dolores autem qui.', 'itaque', 1, 54, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(188, 'Excepturi natus quis odio dolorem porro aut. Nemo aut aliquam non temporibus. Eligendi ut libero adipisci qui maxime sed. Aut voluptas libero qui minus architecto aut.', 'Qui nemo non sit ut. Veritatis quas quis assumenda rem temporibus architecto.', 'quis', 1, 23, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(189, 'Recusandae impedit quisquam possimus rerum quisquam sunt in dolorem. Deserunt neque saepe beatae. Eum repellendus aliquam optio reprehenderit sint.', 'Et consequuntur voluptas molestiae placeat sint eius. Cumque commodi nihil sed magnam. At et eos nihil itaque reiciendis ducimus quia.', 'magnam.', 20, 38, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(190, 'Et quia magni hic voluptatem iusto. Ut doloribus placeat autem placeat quidem.', 'Deserunt ratione nam unde aperiam in quia. Quo harum architecto et occaecati. Occaecati nemo eligendi tenetur rem perspiciatis.', 'rem', 20, 50, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(191, 'Odio aut est aut non ea itaque. Eaque est labore repellat et velit velit. Qui atque corporis optio id sunt voluptas ut. Cupiditate facilis inventore velit fugit sunt quo.', 'Sunt sapiente labore deserunt quibusdam earum dolor dolor. Eveniet ea consequuntur deserunt voluptas aut. Omnis magnam magni magni ipsam nisi.', 'ipsam', 20, 5, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(192, 'Aperiam atque fuga nulla voluptas voluptatem rem suscipit. Distinctio deserunt blanditiis quod vitae dolores est. Ea iste quis et voluptate enim quis eligendi.', 'Quia quas vel voluptatem exercitationem tempore odio. Impedit autem molestias maxime voluptatum explicabo eos. Labore eos inventore voluptatem omnis itaque. Consequuntur quas perspiciatis ipsa autem at soluta doloribus ab.', 'autem', 5, 67, '2021-02-15 10:20:48', '2021-02-15 10:20:48'),
(193, 'Ut aut omnis id necessitatibus qui. Qui ullam dolor temporibus id rerum. Qui deleniti sit est ea numquam unde.', 'Architecto quo placeat quibusdam repudiandae repudiandae sunt sint. Modi consequatur cumque doloribus enim cum eveniet. Iure repellendus sunt omnis et.', 'repudiandae', 1, 48, '2021-02-15 10:20:49', '2021-02-15 10:20:49'),
(194, 'Nam molestiae sed vitae natus aut ullam sunt. Quia reprehenderit nobis ut nesciunt neque. Corporis suscipit reprehenderit autem neque. Aliquam in enim nemo dolor corrupti reprehenderit.', 'Adipisci ut pariatur nulla. Quisquam culpa a qui ex reprehenderit assumenda veniam. Excepturi inventore asperiores omnis qui.', 'ut', 10, 24, '2021-02-15 10:20:49', '2021-02-15 10:20:49'),
(195, 'Sint molestiae dolores ullam nostrum qui enim. Eum nesciunt iusto accusamus nostrum. Earum ipsa minima omnis sint amet voluptate. Molestias totam voluptatibus aliquid.', 'Libero pariatur vel perferendis recusandae. Commodi alias facilis est provident odio recusandae. Non tempora dicta maxime assumenda.', 'facilis', 1, 3, '2021-02-15 10:20:49', '2021-02-15 10:20:49'),
(196, 'Quidem quo laboriosam quo doloremque. Doloribus et doloribus fugiat consequatur culpa odit. Magni odio ut ut iusto eos.', 'Rerum aut architecto suscipit consectetur in velit earum. Minima libero modi voluptas quia est. Sit est possimus reiciendis nemo.', 'reiciendis', 5, 7, '2021-02-15 10:20:49', '2021-02-15 10:20:49'),
(197, 'Odio adipisci non suscipit nemo possimus repudiandae. Nemo voluptas veritatis pariatur soluta aut nostrum nesciunt. Omnis facilis sit nostrum neque ducimus iusto.', 'Unde reprehenderit sed impedit quia ea facere corporis. Dolores aliquam sint cumque qui vero. Quia repellendus alias quia voluptates ut. Sed et est ut quod id.', 'Sed', 20, 3, '2021-02-15 10:20:49', '2021-02-15 10:20:49'),
(198, 'Nobis nihil deserunt asperiores. Quibusdam corrupti consequatur eos et ut. Id sit ipsam qui dolorum mollitia et quo.', 'Ea in sit natus et quia. Autem sit repudiandae praesentium possimus.', 'Ea', 1, 20, '2021-02-15 10:20:49', '2021-02-15 10:20:49'),
(199, 'Autem atque assumenda eaque eos alias suscipit est. Et officia sed aut nam facere. Velit odio vitae magnam cumque.', 'Vel dolor laboriosam id voluptatem amet asperiores. Recusandae unde aspernatur ad eligendi sed atque harum. Et dicta repellendus eos sit omnis saepe earum. Illum deleniti qui dolor voluptatum.', 'id', 5, 85, '2021-02-15 10:20:49', '2021-02-15 10:20:49'),
(200, 'Aut veritatis ullam at rerum doloremque eveniet officia. Officia reiciendis deleniti cupiditate. Autem dolores omnis hic consectetur eum non quidem.', 'At dolor et accusamus veniam ullam ipsum. Sed laudantium maxime enim quibusdam.', 'laudantium', 20, 36, '2021-02-15 10:20:49', '2021-02-15 10:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'nesciunt', 21, '2021-02-15 10:20:22', '2021-02-15 10:20:22'),
(2, 'in', 23, '2021-02-15 10:20:22', '2021-02-15 10:20:22'),
(3, 'mollitia', 9, '2021-02-15 10:20:22', '2021-02-15 10:20:22'),
(4, 'rerum', 49, '2021-02-15 10:20:22', '2021-02-15 10:20:22'),
(5, 'quia', 17, '2021-02-15 10:20:22', '2021-02-15 10:20:22'),
(6, 'rerum', 49, '2021-02-15 10:20:22', '2021-02-15 10:20:22'),
(7, 'laudantium', 24, '2021-02-15 10:20:22', '2021-02-15 10:20:22'),
(8, 'possimus', 50, '2021-02-15 10:20:22', '2021-02-15 10:20:22'),
(9, 'voluptatem', 8, '2021-02-15 10:20:22', '2021-02-15 10:20:22'),
(10, 'qui', 28, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(11, 'esse', 15, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(12, 'id', 36, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(13, 'tempore', 49, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(14, 'quia', 9, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(15, 'qui', 35, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(16, 'qui', 24, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(17, 'esse', 32, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(18, 'necessitatibus', 43, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(19, 'illo', 37, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(20, 'quasi', 38, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(21, 'est', 43, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(22, 'ipsum', 32, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(23, 'quia', 8, '2021-02-15 10:20:23', '2021-02-15 10:20:23'),
(24, 'quis', 49, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(25, 'quis', 42, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(26, 'et', 48, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(27, 'ea', 50, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(28, 'ut', 30, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(29, 'fugiat', 36, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(30, 'veritatis', 18, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(31, 'sapiente', 6, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(32, 'dicta', 39, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(33, 'et', 34, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(34, 'odit', 14, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(35, 'minima', 28, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(36, 'modi', 44, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(37, 'sint', 28, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(38, 'sit', 40, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(39, 'reprehenderit', 8, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(40, 'nam', 16, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(41, 'et', 6, '2021-02-15 10:20:24', '2021-02-15 10:20:24'),
(42, 'consequatur', 42, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(43, 'et', 37, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(44, 'assumenda', 7, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(45, 'non', 2, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(46, 'non', 35, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(47, 'tenetur', 33, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(48, 'tempora', 27, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(49, 'vero', 26, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(50, 'odio', 8, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(51, 'architecto', 24, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(52, 'tenetur', 27, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(53, 'nihil', 24, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(54, 'ut', 46, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(55, 'consectetur', 13, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(56, 'modi', 48, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(57, 'molestias', 42, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(58, 'vel', 35, '2021-02-15 10:20:25', '2021-02-15 10:20:25'),
(59, 'eos', 17, '2021-02-15 10:20:26', '2021-02-15 10:20:26'),
(60, 'aut', 38, '2021-02-15 10:20:26', '2021-02-15 10:20:26'),
(61, 'sint', 22, '2021-02-15 10:20:26', '2021-02-15 10:20:26'),
(62, 'officia', 20, '2021-02-15 10:20:26', '2021-02-15 10:20:26'),
(63, 'nulla', 5, '2021-02-15 10:20:26', '2021-02-15 10:20:26'),
(64, 'aperiam', 37, '2021-02-15 10:20:26', '2021-02-15 10:20:26'),
(65, 'enim', 24, '2021-02-15 10:20:26', '2021-02-15 10:20:26'),
(66, 'est', 7, '2021-02-15 10:20:26', '2021-02-15 10:20:26'),
(67, 'delectus', 32, '2021-02-15 10:20:26', '2021-02-15 10:20:26'),
(68, 'dolor', 43, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(69, 'non', 37, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(70, 'iure', 48, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(71, 'itaque', 11, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(72, 'voluptatem', 2, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(73, 'nulla', 10, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(74, 'alias', 4, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(75, 'vel', 31, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(76, 'quia', 4, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(77, 'voluptatem', 22, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(78, 'quos', 19, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(79, 'eligendi', 30, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(80, 'saepe', 40, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(81, 'velit', 22, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(82, 'tenetur', 45, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(83, 'ad', 8, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(84, 'libero', 31, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(85, 'labore', 1, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(86, 'maiores', 20, '2021-02-15 10:20:27', '2021-02-15 10:20:27'),
(87, 'harum', 34, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(88, 'qui', 18, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(89, 'suscipit', 47, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(90, 'rerum', 42, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(91, 'doloremque', 9, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(92, 'nam', 23, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(93, 'distinctio', 7, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(94, 'quis', 27, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(95, 'alias', 4, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(96, 'aut', 37, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(97, 'vero', 37, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(98, 'dolor', 24, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(99, 'sed', 7, '2021-02-15 10:20:28', '2021-02-15 10:20:28'),
(100, 'aut', 15, '2021-02-15 10:20:28', '2021-02-15 10:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_user`
--

CREATE TABLE `quiz_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_user`
--

INSERT INTO `quiz_user` (`user_id`, `quiz_id`, `created_at`, `updated_at`) VALUES
(1, 14, NULL, NULL),
(1, 76, NULL, NULL),
(1, 33, NULL, NULL),
(2, 75, NULL, NULL),
(2, 87, NULL, NULL),
(2, 54, NULL, NULL),
(3, 30, NULL, NULL),
(3, 84, NULL, NULL),
(3, 78, NULL, NULL),
(4, 60, NULL, NULL),
(4, 31, NULL, NULL),
(4, 75, NULL, NULL),
(5, 7, NULL, NULL),
(5, 90, NULL, NULL),
(5, 100, NULL, NULL),
(6, 80, NULL, NULL),
(6, 38, NULL, NULL),
(6, 84, NULL, NULL),
(7, 32, NULL, NULL),
(7, 65, NULL, NULL),
(7, 92, NULL, NULL),
(8, 80, NULL, NULL),
(8, 97, NULL, NULL),
(8, 10, NULL, NULL),
(9, 6, NULL, NULL),
(9, 11, NULL, NULL),
(9, 91, NULL, NULL),
(10, 61, NULL, NULL),
(10, 87, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'doloremque', '2021-02-15 10:20:01', '2021-02-15 10:20:01'),
(2, 'maxime', '2021-02-15 10:20:01', '2021-02-15 10:20:01'),
(3, 'impedit', '2021-02-15 10:20:01', '2021-02-15 10:20:01'),
(4, 'adipisci', '2021-02-15 10:20:01', '2021-02-15 10:20:01'),
(5, 'beatae', '2021-02-15 10:20:01', '2021-02-15 10:20:01'),
(6, 'dolorem', '2021-02-15 10:20:01', '2021-02-15 10:20:01'),
(7, 'aut', '2021-02-15 10:20:01', '2021-02-15 10:20:01'),
(8, 'sed', '2021-02-15 10:20:01', '2021-02-15 10:20:01'),
(9, 'mollitia', '2021-02-15 10:20:01', '2021-02-15 10:20:01'),
(10, 'qui', '2021-02-15 10:20:01', '2021-02-15 10:20:01'),
(11, 'Front_End', '2021-02-15 10:46:03', '2021-02-15 10:46:03'),
(12, 'Back_End', '2021-02-15 10:46:21', '2021-02-15 10:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `track_user`
--

CREATE TABLE `track_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `track_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_user`
--

INSERT INTO `track_user` (`user_id`, `track_id`, `created_at`, `updated_at`) VALUES
(1, 10, NULL, NULL),
(1, 6, NULL, NULL),
(2, 7, NULL, NULL),
(2, 6, NULL, NULL),
(3, 9, NULL, NULL),
(3, 6, NULL, NULL),
(4, 5, NULL, NULL),
(4, 1, NULL, NULL),
(5, 1, NULL, NULL),
(5, 3, NULL, NULL),
(6, 1, NULL, NULL),
(6, 9, NULL, NULL),
(7, 5, NULL, NULL),
(7, 4, NULL, NULL),
(8, 7, NULL, NULL),
(8, 10, NULL, NULL),
(9, 5, NULL, NULL),
(10, 7, NULL, NULL),
(10, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `score`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed Farh', 'Mohamed@Yahoo.Com', '2021-02-15 10:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 155, 'btk22P6ofiCz2CD9RiZ3ycgEj0H4afkS1iMuPSkj9pEACyC8dqtrFDT52RQj', '2021-02-15 10:20:00', '2021-02-16 16:07:50'),
(2, 'Gerardo Rutherford', 'jasen24@example.com', '2021-02-15 10:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 100, '8zZPkz1UcT', '2021-02-15 10:20:00', '2021-02-15 10:20:00'),
(3, 'Kristy Connelly', 'chadd.miller@example.net', '2021-02-15 10:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 100, 'HMKVG6uYrf', '2021-02-15 10:20:00', '2021-02-15 10:20:00'),
(4, 'Jettie Leffler', 'aidan.durgan@example.net', '2021-02-15 10:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 190, 'IcXYLFglYq7HrIdNsk6gucwFbdc3APQHlQxKSrJ0TPnUJOLwR7BmKHgKRjOZ', '2021-02-15 10:20:00', '2021-02-15 10:20:00'),
(5, 'Emelie Rowe V', 'leta.kuhlman@example.net', '2021-02-15 10:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 150, 'at79Kf90ZS', '2021-02-15 10:20:00', '2021-02-15 10:20:00'),
(6, 'Casper Fay', 'collins.ashtyn@example.org', '2021-02-15 10:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 100, '4vsor78uON', '2021-02-15 10:20:00', '2021-02-15 10:20:00'),
(7, 'Dr. Maximilian Williamson MD', 'beer.liliane@example.net', '2021-02-15 10:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 200, 'B5Aw1LPzmM', '2021-02-15 10:20:00', '2021-02-15 10:20:00'),
(8, 'Zechariah Simonis', 'alexandrea44@example.org', '2021-02-15 10:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 150, 'AOo8MnwxuM', '2021-02-15 10:20:00', '2021-02-15 10:20:00'),
(9, 'Ansley Quitzon Sr.', 'haag.dion@example.com', '2021-02-15 10:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 100, 'AklRRHRqUT', '2021-02-15 10:20:00', '2021-02-15 10:20:00'),
(10, 'Cassandra Abernathy IV', 'retta.ferry@example.com', '2021-02-15 10:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 190, '5GVtwxxw6T', '2021-02-15 10:20:00', '2021-02-15 10:20:00'),
(11, 'Mohamed ', 'Mohamed1@Yahoo.Com', NULL, '$2y$10$zzbfPxHulediq1B3Ltxo9u1lC.yDLxE8URCgRCeiWuoglIm1k9PxC', 0, 0, '3AGoZaXHRgxo3Lx9Pno5uauC7SopAWnybzYxw1azVqmJfddwyElUqbrzkq5G', '2021-02-15 10:22:18', '2021-02-15 10:22:18'),
(12, 'Ahmed', 'Ahmed@Yahoo.Com', NULL, '$2y$10$o/xFrLLxYIF2OOiDOeg1u.BWnXy4.YlEtjR8aJNoT2Fwj9YjanYdi', 1, 0, NULL, '2021-02-16 23:28:19', '2021-02-16 23:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `link`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'Maiores et quibusdam neque fuga et. Dolores quasi nostrum quos expedita. Sunt suscipit modi possimus cumque.', 'http://www.simonis.biz/necessitatibus-nihil-ullam-at-ut-suscipit-vero-numquam-optio.html', 19, '2021-02-15 10:20:11', '2021-02-15 10:20:11'),
(2, 'Sit consequatur omnis occaecati voluptates. Distinctio aut voluptate praesentium totam. Odio est laboriosam quam. Sint inventore debitis amet ullam ut.', 'http://www.farrell.info/', 48, '2021-02-15 10:20:11', '2021-02-15 10:20:11'),
(3, 'Laudantium sed quo provident voluptatem autem officia. Sit excepturi architecto recusandae doloribus numquam et quaerat. Ea voluptatem voluptatem magnam tenetur rerum ea facere.', 'http://zboncak.info/accusantium-laboriosam-nihil-rerum-eos-explicabo-asperiores-repudiandae', 12, '2021-02-15 10:20:11', '2021-02-15 10:20:11'),
(4, 'Porro in explicabo et et quisquam a blanditiis quibusdam. Dignissimos pariatur delectus doloribus nam. Itaque ut eum et praesentium ullam. Sunt qui aut voluptas est omnis.', 'https://barton.info/nisi-itaque-sint-distinctio-porro.html', 7, '2021-02-15 10:20:11', '2021-02-15 10:20:11'),
(5, 'Quam illum rerum rerum deserunt corrupti distinctio veritatis est. Libero enim sed cumque libero sit. Dicta autem et atque doloremque non est dolore.', 'http://www.stroman.net/quaerat-ipsum-in-aliquam-id-qui-minima-et', 32, '2021-02-15 10:20:11', '2021-02-15 10:20:11'),
(6, 'Suscipit et velit nesciunt ipsa praesentium ut quod autem. Amet odio voluptatem ut voluptatem veritatis consequatur.', 'http://www.runolfsdottir.info/ut-hic-atque-qui-consectetur-omnis-earum', 13, '2021-02-15 10:20:12', '2021-02-15 10:20:12'),
(7, 'Exercitationem non rem qui hic. Ea assumenda et deserunt est similique qui officiis. Non molestias voluptas architecto inventore voluptatem odit. Aut debitis molestiae perspiciatis laboriosam ut doloremque voluptatem.', 'http://www.mueller.com/cumque-cum-ut-aliquid-eum-aut-architecto-ut-placeat', 10, '2021-02-15 10:20:12', '2021-02-15 10:20:12'),
(8, 'Labore nulla voluptatem tempora sed. Quasi explicabo ex sit aliquam ut quis sit. Nihil porro ducimus fugit illum.', 'http://www.powlowski.org/ipsam-ut-magni-quae-nostrum', 30, '2021-02-15 10:20:12', '2021-02-15 10:20:12'),
(9, 'Doloribus consequatur vel quos impedit ab delectus adipisci. Quae culpa architecto ipsa laborum quia omnis. Architecto ab beatae tenetur eveniet. Sed tempore qui molestias minus et eum aliquam et.', 'https://zboncak.info/ea-nostrum-iure-possimus.html', 19, '2021-02-15 10:20:12', '2021-02-15 10:20:12'),
(10, 'Provident reiciendis accusamus enim exercitationem aut veniam in. Et facilis magnam sit dicta architecto modi. Fuga recusandae quos error ut dolorem voluptas ab.', 'http://grimes.org/vel-voluptatem-culpa-rem-est-quia.html', 35, '2021-02-15 10:20:12', '2021-02-15 10:20:12'),
(11, 'Unde quis commodi sequi facilis quod. Impedit aut quisquam voluptatum consequatur rerum necessitatibus eveniet. Ipsa quo nobis tempore quo. Vero accusantium earum eius sed maiores.', 'http://kuhn.info/', 48, '2021-02-15 10:20:12', '2021-02-15 10:20:12'),
(12, 'Numquam saepe perspiciatis soluta omnis. At voluptatum assumenda veritatis fugit. Minima vel voluptatum expedita voluptatibus quas et aut sed. Culpa fugit cumque aut corrupti.', 'http://www.nolan.com/', 50, '2021-02-15 10:20:12', '2021-02-15 10:20:12'),
(13, 'Voluptatibus inventore earum quisquam nam. Odio nemo esse rem ut molestiae voluptatem. Consequatur enim non inventore a nisi odit qui. Velit quia magni sit deleniti quas quis vel.', 'http://www.huels.com/voluptas-laboriosam-maiores-facilis-officiis', 12, '2021-02-15 10:20:13', '2021-02-15 10:20:13'),
(14, 'Harum exercitationem et explicabo quia numquam omnis nemo quo. Alias aut aliquid corporis sunt. Et quis id consequuntur voluptatibus eaque.', 'http://www.vandervort.info/mollitia-voluptas-tempore-soluta-facere-aut-doloribus-sint-aut', 44, '2021-02-15 10:20:13', '2021-02-15 10:20:13'),
(15, 'Et et atque maiores quisquam error quia. Sunt distinctio et ad eligendi sit et. Voluptas cum necessitatibus totam sint qui.', 'http://mills.com/totam-qui-qui-soluta-dolore-excepturi-est-et', 41, '2021-02-15 10:20:13', '2021-02-15 10:20:13'),
(16, 'Sit harum voluptatem nam quis ut et. Laboriosam quod repudiandae sint unde quia cum recusandae ut. Expedita et voluptatem illo. Optio quasi quia officiis doloremque explicabo omnis eos.', 'http://volkman.com/', 5, '2021-02-15 10:20:13', '2021-02-15 10:20:13'),
(17, 'Molestiae voluptas exercitationem vel. Laudantium est consequuntur unde illo voluptatum aspernatur. Eveniet molestias accusamus provident eveniet. Dolor adipisci vel exercitationem consequatur.', 'http://frami.info/quisquam-et-quo-quia-ut', 21, '2021-02-15 10:20:14', '2021-02-15 10:20:14'),
(18, 'Saepe quisquam architecto nam vitae. Et similique dolores quas quas. Et et consequatur eligendi odio nulla laboriosam cupiditate.', 'https://koepp.com/rerum-optio-qui-excepturi-quisquam-qui.html', 3, '2021-02-15 10:20:14', '2021-02-15 10:20:14'),
(19, 'Et inventore placeat ut laboriosam voluptates illo numquam sed. Ea pariatur id omnis aliquid consequuntur laudantium vitae. Consectetur sint quaerat voluptate. Voluptatem aut qui ad in. Aut nesciunt beatae non et nulla dicta quo.', 'https://schmitt.info/ducimus-animi-fugiat-iusto-fugit.html', 48, '2021-02-15 10:20:14', '2021-02-15 10:20:14'),
(20, 'Dolore qui tempora dolorem sed. Illum facere beatae tempora fuga error quia. Dolor sit et aut deserunt. Est nihil architecto ut quibusdam.', 'http://www.cummerata.info/est-pariatur-ut-aut-dolorem-quam', 38, '2021-02-15 10:20:14', '2021-02-15 10:20:14'),
(21, 'Nihil accusamus quis a voluptatem et reiciendis est. Laudantium et delectus suscipit ipsum aut est magnam repudiandae.', 'http://ziemann.net/doloribus-nostrum-saepe-laborum-sed-dolorem-animi-ut', 2, '2021-02-15 10:20:14', '2021-02-15 10:20:14'),
(22, 'Reiciendis eveniet consectetur facere totam. Harum sequi sed enim dolor fugiat quia suscipit. Tempora natus soluta deleniti non labore architecto non. Non iusto labore minus sint.', 'http://www.cremin.net/dolor-voluptates-est-voluptates-voluptatem-blanditiis-in', 33, '2021-02-15 10:20:14', '2021-02-15 10:20:14'),
(23, 'Voluptas animi eligendi odio culpa sit excepturi iure. Facilis magnam minus sequi numquam nam ut. Magni dolor adipisci quam magni fugit ullam consequuntur. Praesentium eos dolorem sit enim possimus.', 'https://bailey.net/odio-voluptas-placeat-maxime.html', 27, '2021-02-15 10:20:14', '2021-02-15 10:20:14'),
(24, 'Doloremque quis delectus repellat non sit quae. Consequatur recusandae et provident et earum. Quasi expedita voluptatibus omnis ipsum. Rerum ut et maxime impedit cupiditate voluptas.', 'http://www.lowe.com/saepe-corrupti-placeat-qui-amet-repudiandae-sint-culpa-et.html', 47, '2021-02-15 10:20:15', '2021-02-15 10:20:15'),
(25, 'Facere recusandae voluptas ut. Sed voluptatum dolore et dolore voluptas. Et ut pariatur est ea impedit.', 'http://www.kuhlman.com/totam-neque-officia-enim-ut', 11, '2021-02-15 10:20:15', '2021-02-15 10:20:15'),
(26, 'Et qui cupiditate fugiat enim. Delectus voluptas quia dolores aut et ullam suscipit. Sit ut quia quo et praesentium omnis. Cum autem explicabo sit.', 'http://www.jast.com/', 9, '2021-02-15 10:20:15', '2021-02-15 10:20:15'),
(27, 'Et vel in quo ut voluptatem aspernatur veniam. Non iusto velit odit fugit. Autem itaque sit amet nihil. Cumque explicabo praesentium eos vel numquam.', 'https://www.becker.biz/vel-temporibus-ducimus-est-numquam-earum-eum', 38, '2021-02-15 10:20:15', '2021-02-15 10:20:15'),
(28, 'Ut voluptas similique molestiae distinctio ullam adipisci aliquam corporis. Nulla nihil possimus aut enim eaque et eos ullam. Sed iste et nesciunt quis eum. Quis labore quam aperiam voluptas.', 'http://www.rosenbaum.com/', 37, '2021-02-15 10:20:15', '2021-02-15 10:20:15'),
(29, 'Eius dolores neque architecto adipisci. Vitae vel quaerat officiis est consequuntur. Pariatur magni magni aliquam totam quibusdam unde aperiam dolore. Quis quia ab sequi iste.', 'https://www.gaylord.com/est-expedita-omnis-a-voluptas-vitae', 2, '2021-02-15 10:20:15', '2021-02-15 10:20:15'),
(30, 'Numquam et ea architecto voluptas. Distinctio nam eaque quas sint. Et cupiditate nisi qui recusandae minus dignissimos dignissimos.', 'http://rohan.org/sequi-vitae-facere-qui-doloremque-recusandae-et-aperiam', 3, '2021-02-15 10:20:15', '2021-02-15 10:20:15'),
(31, 'Soluta cumque ut iusto voluptate consequatur omnis. Eos eos est debitis eaque doloribus. Rerum atque dolorum amet sed alias voluptatibus autem necessitatibus.', 'http://schmeler.net/in-beatae-minima-aliquid-facere-qui-totam-voluptatibus-sint', 20, '2021-02-15 10:20:15', '2021-02-15 10:20:15'),
(32, 'Nihil officiis voluptate ullam voluptates maiores tempore. Dolore repellendus voluptatem reiciendis laborum sunt. Et non alias est rerum nobis temporibus quo. Ducimus totam ut et sunt soluta.', 'http://www.stanton.com/et-voluptas-consequuntur-iure-assumenda', 37, '2021-02-15 10:20:15', '2021-02-15 10:20:15'),
(33, 'Sint aliquid quo est assumenda. Occaecati repellat voluptate vero sed natus. Quis nemo aut odit quod facere necessitatibus ab. Tempora iusto distinctio et ut.', 'http://bode.com/', 7, '2021-02-15 10:20:15', '2021-02-15 10:20:15'),
(34, 'Repellat dolore voluptate recusandae ut omnis adipisci. Quis nihil sit nobis quo. Corporis velit alias voluptatibus totam aperiam. Accusantium quia et porro perspiciatis.', 'http://www.cole.net/sit-ipsum-molestias-exercitationem-magnam-qui-voluptatem', 12, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(35, 'Numquam ut blanditiis minus ut necessitatibus sit facere. Aut voluptas quo est qui ratione itaque. Tempore perferendis nulla impedit dolorem eius autem.', 'http://www.ankunding.com/architecto-omnis-ex-sequi', 33, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(36, 'Sint sint tenetur et perspiciatis beatae laboriosam aut consectetur. Occaecati vel beatae consequatur sit. Corrupti beatae nam dolorem voluptatibus non voluptatum. Repellat aliquam ipsa et qui pariatur. Nihil est rerum molestiae doloribus.', 'https://reynolds.org/sit-dolores-ab-rerum-maxime.html', 38, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(37, 'Ad aperiam quae similique dolore aliquam est. Quae repellendus hic voluptate aspernatur. Officiis nulla doloribus cumque dolorem itaque.', 'http://www.klein.biz/totam-numquam-tenetur-consequatur-est-beatae-alias', 30, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(38, 'Rerum aspernatur voluptates animi magni. Qui mollitia id molestiae et qui voluptatem modi. Quia voluptatem corporis ducimus maxime rerum inventore ex.', 'http://cassin.com/', 18, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(39, 'Molestiae ipsam sunt voluptatem est soluta quisquam quia labore. Iure et error quod nemo doloremque optio. Quidem quia magnam ab quo perspiciatis.', 'http://www.marquardt.net/et-corrupti-atque-soluta-nulla-accusamus-perspiciatis-distinctio-reiciendis.html', 22, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(40, 'Quas ut quidem sint qui. Amet vero in voluptates necessitatibus est facere omnis aspernatur. Eligendi quidem sit enim. Delectus voluptas provident ea magni magni praesentium. Vitae incidunt rerum veniam molestias velit sit.', 'https://runolfsson.com/velit-et-itaque-magnam.html', 8, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(41, 'Velit veniam doloribus qui ea ad. In sint sapiente quae quia. Ad dolor veniam aliquid doloribus quasi.', 'http://www.johnston.biz/', 2, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(42, 'Officia ut consequuntur qui vero reiciendis itaque. Laboriosam ducimus est eveniet dolorem ut. Delectus autem a delectus nihil. Ipsum inventore aperiam occaecati consequatur sit ducimus.', 'http://www.lubowitz.biz/tempora-dolorum-repellat-et-hic-sequi', 32, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(43, 'Nostrum tenetur quo incidunt delectus. Harum veritatis consequatur corrupti adipisci. Quae commodi aspernatur dicta sunt quis. Ipsa sunt sed rerum fugit nihil velit asperiores. Vero molestiae quod in et eum.', 'http://www.pfannerstill.com/delectus-et-officia-unde-ut-laudantium-perferendis', 3, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(44, 'Consectetur nihil culpa exercitationem quis sed est. Error eos rerum corrupti odio ducimus aut quis. Debitis suscipit cupiditate sit eligendi voluptatem id.', 'http://www.schumm.biz/dicta-eum-ut-sit-quo-cupiditate', 33, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(45, 'Esse iure maxime eum quae veritatis autem. Deleniti neque et excepturi voluptatem. Repellendus sed ducimus corrupti occaecati eos commodi. Numquam error voluptate velit rerum natus atque reprehenderit accusamus.', 'http://hills.com/at-quo-est-neque-hic-non-eaque-qui', 23, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(46, 'Odit occaecati quo consequatur modi rerum. Quod qui esse autem odio nostrum velit. Et et tempore ea. Minus sit quia et tempore minima saepe.', 'http://www.baumbach.net/error-sapiente-sed-deserunt-dolorem.html', 29, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(47, 'Quia ab ut non quas in. Et soluta hic reiciendis mollitia quidem dolores. Magni soluta quia porro sint incidunt officiis voluptate.', 'https://www.abernathy.com/ut-ea-repellendus-vel-molestiae-corporis-assumenda', 50, '2021-02-15 10:20:16', '2021-02-15 10:20:16'),
(48, 'Et maxime maiores quod ipsa totam sit. Dolorum rerum eveniet laborum et corrupti dicta officiis omnis. Sint aut suscipit culpa omnis autem atque.', 'http://www.labadie.net/et-dolore-aspernatur-quae-totam-aspernatur-sed-non', 47, '2021-02-15 10:20:17', '2021-02-15 10:20:17'),
(49, 'Minus dolorem nostrum cumque maxime cumque saepe dolores. Ea quam fugiat tempore officiis eum recusandae. Maiores rerum enim quia reiciendis dolor sint.', 'http://kihn.info/voluptas-quo-eum-enim-officia', 24, '2021-02-15 10:20:17', '2021-02-15 10:20:17'),
(50, 'Modi incidunt molestiae id numquam. Blanditiis qui unde ut fugiat voluptatem soluta et maiores.', 'http://wintheiser.biz/sint-et-minima-corporis-sint-dolor-vero.html', 40, '2021-02-15 10:20:17', '2021-02-15 10:20:17'),
(51, 'Sint dolores nulla consequatur maxime et et. Nostrum expedita nam aspernatur ad aut non. Quibusdam odit eaque voluptate at est. Delectus doloremque cum deleniti harum similique.', 'http://www.bergnaum.com/', 5, '2021-02-15 10:20:17', '2021-02-15 10:20:17'),
(52, 'Quia occaecati consequuntur corrupti qui numquam quaerat distinctio. Aut veniam aliquid porro alias aut. Porro et amet animi ducimus aut quae voluptas facere. Harum id id excepturi ut.', 'http://swaniawski.com/culpa-et-id-vitae-soluta-ut', 15, '2021-02-15 10:20:17', '2021-02-15 10:20:17'),
(53, 'Consequatur similique blanditiis odit temporibus facilis aut. Quae asperiores incidunt dolor voluptatem voluptas.', 'http://www.stiedemann.org/qui-et-ut-natus-animi-nesciunt-deserunt.html', 38, '2021-02-15 10:20:17', '2021-02-15 10:20:17'),
(54, 'Et vel occaecati qui omnis tenetur. Quibusdam laudantium ut natus necessitatibus.', 'http://www.hahn.net/', 32, '2021-02-15 10:20:17', '2021-02-15 10:20:17'),
(55, 'Voluptatem vel et nam asperiores natus maiores minima. Sit excepturi architecto est officiis et quisquam. Omnis et eum nisi eum et iusto.', 'http://franecki.info/', 49, '2021-02-15 10:20:17', '2021-02-15 10:20:17'),
(56, 'Eum facere id facere voluptatum veniam vero quisquam. Debitis cum excepturi quia repudiandae libero. Recusandae iste sapiente quia voluptatem magnam voluptas. Voluptatem dolor cupiditate amet nesciunt vel.', 'http://leannon.net/eos-quia-earum-et-inventore-placeat.html', 2, '2021-02-15 10:20:18', '2021-02-15 10:20:18'),
(57, 'Et laborum nam totam repellat molestiae. Quos sed vitae ad quod similique. Ut maxime magni est sapiente. Quidem nobis adipisci esse aut sed nesciunt.', 'http://bergnaum.net/molestias-corrupti-quisquam-asperiores-et-quidem-non-non', 37, '2021-02-15 10:20:18', '2021-02-15 10:20:18'),
(58, 'Saepe pariatur in maiores libero maiores accusantium ipsam. Sit sunt maxime aliquam optio numquam maxime.', 'http://jenkins.biz/ratione-et-ut-odio-corrupti.html', 32, '2021-02-15 10:20:18', '2021-02-15 10:20:18'),
(59, 'Officiis quo ut quia nihil magni veniam est. Laborum consequatur nihil eos aperiam vitae exercitationem expedita. Ratione reiciendis et vel dolor.', 'http://braun.com/blanditiis-et-saepe-voluptate-rerum', 47, '2021-02-15 10:20:18', '2021-02-15 10:20:18'),
(60, 'Optio fuga perspiciatis sed est placeat. Eaque quia illo nesciunt velit beatae iste cum. Voluptates sed iusto labore veniam quidem et excepturi.', 'https://jacobi.com/repellat-sunt-quia-voluptas.html', 43, '2021-02-15 10:20:18', '2021-02-15 10:20:18'),
(61, 'Reiciendis maxime amet et possimus. Nam omnis suscipit laudantium dolores dolor repellat. Labore beatae porro quae quis ut cum aliquam.', 'http://www.rippin.com/est-facere-vitae-dolorem-pariatur-rerum-officiis-repellat-enim', 37, '2021-02-15 10:20:18', '2021-02-15 10:20:18'),
(62, 'Aut laudantium placeat optio minima dicta voluptatem quod odit. Itaque deserunt rem quaerat nam iusto accusamus. Excepturi accusantium sit doloribus quis dolor eligendi et. Voluptates nemo quo adipisci et aut.', 'http://haag.com/', 11, '2021-02-15 10:20:18', '2021-02-15 10:20:18'),
(63, 'Culpa officiis rerum explicabo qui ab assumenda temporibus eligendi. Asperiores enim officiis atque aliquid quia delectus aspernatur dolor. Nesciunt cum nemo unde et labore perferendis qui.', 'http://legros.net/omnis-hic-at-aut-qui-aut-et-modi', 2, '2021-02-15 10:20:19', '2021-02-15 10:20:19'),
(64, 'Modi natus adipisci adipisci repellat qui tempore. Sed non voluptatem tenetur cum dolores. Qui sequi est voluptatum deserunt in consequatur voluptatem. Autem in maxime tenetur quod debitis necessitatibus.', 'https://www.jacobs.com/enim-non-sit-eum-unde-accusamus-optio-id', 3, '2021-02-15 10:20:19', '2021-02-15 10:20:19'),
(65, 'Ab fuga atque nesciunt debitis. Est dolor quaerat delectus fugit. Rerum ut aut consequatur officiis consequatur quasi.', 'http://www.wehner.net/', 38, '2021-02-15 10:20:19', '2021-02-15 10:20:19'),
(66, 'Facere saepe eveniet ab similique nihil assumenda doloribus. Sint cupiditate occaecati est numquam. Iure alias fugiat et animi ullam voluptas enim velit. Error accusantium vitae iste assumenda.', 'http://witting.net/illum-voluptate-earum-nulla-velit-in-et-et.html', 41, '2021-02-15 10:20:19', '2021-02-15 10:20:19'),
(67, 'Sint dolores illo dolor quae qui aut aliquam. Nisi fugit voluptas harum occaecati. Veritatis qui est ut sed et pariatur. Velit harum et cupiditate numquam omnis voluptates quis rem.', 'http://www.lemke.info/voluptas-natus-id-corrupti-voluptatem', 29, '2021-02-15 10:20:19', '2021-02-15 10:20:19'),
(68, 'Iure qui necessitatibus cupiditate molestiae occaecati nemo reiciendis. Quasi iure dolor neque culpa aut vitae odit. Ducimus sint qui consequatur veritatis perferendis quis veniam aut. Impedit dolorum unde qui mollitia quis reiciendis eum.', 'http://bednar.com/dignissimos-aliquid-totam-qui-aspernatur-provident-ipsa', 6, '2021-02-15 10:20:19', '2021-02-15 10:20:19'),
(69, 'Sed alias enim perspiciatis. Recusandae cumque itaque minus suscipit labore aut incidunt. Corporis quia excepturi quibusdam totam mollitia dicta et minus.', 'http://www.roob.net/aut-inventore-est-et-minima-aliquam-explicabo', 38, '2021-02-15 10:20:19', '2021-02-15 10:20:19'),
(70, 'Natus maxime velit quia. Magnam est et consequatur aut. Quas officia voluptatem tempore eius. Ab aspernatur eum nemo reprehenderit.', 'http://www.okeefe.biz/laboriosam-quaerat-molestias-omnis-maxime-autem', 39, '2021-02-15 10:20:19', '2021-02-15 10:20:19'),
(71, 'Nulla magnam rerum molestias autem voluptas exercitationem architecto. Magni voluptas et ea sint ut et. Dolores nemo ut et ut doloribus quam excepturi.', 'http://www.graham.com/dolores-unde-velit-sed-laboriosam-tempore', 28, '2021-02-15 10:20:19', '2021-02-15 10:20:19'),
(72, 'Sed voluptas est totam voluptatem. Et est ut vitae dolorem. Illo iste dolorem impedit voluptatem expedita.', 'http://www.homenick.com/culpa-impedit-eum-et-impedit-consequatur-repellat-quasi.html', 30, '2021-02-15 10:20:19', '2021-02-15 10:20:19'),
(73, 'Facilis animi omnis nihil. Est culpa eius eos ea blanditiis sed rerum. Nisi impedit et illo molestiae.', 'http://parker.info/', 13, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(74, 'Excepturi ut magni sapiente omnis ad et nemo. Accusamus sit vitae voluptatibus eaque nihil ut dicta. Quasi odit assumenda perspiciatis quia est sint.', 'http://eichmann.org/est-nihil-ut-aperiam-fugiat-nesciunt-inventore-aspernatur', 24, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(75, 'Exercitationem ab quia quia neque temporibus cumque cumque. Quia ea cupiditate ut ut nihil incidunt. Voluptatem qui eveniet inventore ratione enim aut. Ut eos assumenda numquam numquam repellat illo consequatur.', 'https://moen.com/libero-voluptatem-nam-autem-saepe-animi-dolore-iure.html', 38, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(76, 'Qui occaecati doloribus consequatur ex eos. Aut sit dicta cumque dolores. Omnis veritatis minima atque repellendus sunt. Cumque et velit soluta provident quis.', 'http://bahringer.com/et-error-consectetur-voluptatem-quidem-quos-maxime', 12, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(77, 'Sequi voluptates molestias veniam qui. Et pariatur doloribus eaque. Fuga quos quaerat quas rem cumque numquam quia. Culpa et dolorem eos iure.', 'https://www.paucek.com/ut-porro-ducimus-voluptatem-id-quidem', 41, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(78, 'Et porro aut quasi ut tempore a. Qui eos officia unde dignissimos. Dolor corporis cum perspiciatis deleniti. Commodi suscipit non qui porro ut.', 'http://hyatt.com/', 41, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(79, 'Temporibus qui impedit reprehenderit quo corporis. Rerum ut fugiat facere ipsa aperiam unde excepturi expedita. Eligendi ducimus autem ea est.', 'http://www.padberg.org/', 11, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(80, 'Molestiae eveniet quis accusantium sed. In et ducimus ducimus cumque. Earum suscipit assumenda ut excepturi repellat harum. Consequatur et sed autem possimus.', 'https://www.upton.com/ea-dolores-rem-distinctio-ab-est-ab-quia', 25, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(81, 'Ipsum aut unde doloribus ratione et fugiat soluta. Nesciunt voluptatem consequatur perspiciatis eos aspernatur atque. Ut quod vero magnam hic necessitatibus aut sint. Dolor aperiam commodi ut in.', 'http://www.schinner.biz/', 25, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(82, 'Laboriosam nostrum omnis voluptas laborum. Dolorum ea velit quam aperiam in aperiam pariatur. Ea culpa culpa esse consectetur.', 'https://kub.com/dolore-omnis-quos-ea.html', 10, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(83, 'Cupiditate facilis velit quos sit id maiores. Molestiae quam excepturi perferendis non quia. A impedit quasi maiores illo numquam rerum.', 'http://mayert.com/dolores-exercitationem-et-aspernatur-odio', 9, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(84, 'Velit aut hic dicta in laborum magnam. Qui ut pariatur perspiciatis architecto. Molestiae commodi laborum corporis. Et similique est dolorem quis sunt molestias qui.', 'http://kerluke.info/', 31, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(85, 'Modi omnis voluptatem sed. Dolore aut sit debitis sit a unde. Nobis rerum nulla dignissimos molestias. Eos temporibus odio qui suscipit unde sint assumenda.', 'http://www.king.net/neque-alias-voluptas-quas-ut-vitae-repudiandae.html', 27, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(86, 'Rem iure minima aut repellendus. Magnam reiciendis quasi accusamus.', 'https://welch.com/reiciendis-perferendis-reprehenderit-beatae-debitis-quam.html', 19, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(87, 'Porro debitis totam doloribus nulla est. Perspiciatis amet ea et magni omnis mollitia. Quo magni molestiae molestias vel eum laborum saepe.', 'http://www.collins.biz/', 7, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(88, 'Omnis tempore voluptate et et dolorem. Eum ut blanditiis labore facilis placeat. Blanditiis ullam tempora suscipit qui perspiciatis quisquam. Doloribus voluptate deserunt quasi sed excepturi minus.', 'http://www.runolfsson.com/error-aliquam-officiis-id.html', 26, '2021-02-15 10:20:20', '2021-02-15 10:20:20'),
(89, 'Placeat molestias tempore qui minima saepe. Est occaecati consequatur aliquam velit recusandae eveniet. Qui ut amet nemo et.', 'http://www.bernier.com/accusantium-est-quaerat-rerum-vero-dolorem-suscipit-amet.html', 30, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(90, 'Cumque fuga consequatur et dolorem aut. Omnis eveniet ea voluptatibus necessitatibus odio voluptatem et. Ut et consectetur unde.', 'http://www.hansen.info/', 46, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(91, 'Laboriosam ut aliquam quam nisi sunt voluptatem vel doloremque. Assumenda ipsum aliquid culpa rerum maiores. Magni nam veritatis dolor rerum ratione.', 'http://www.kunde.com/tempore-iste-rerum-dignissimos-ducimus.html', 25, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(92, 'Aut veniam praesentium consequatur. Dolorum voluptas et neque iste eligendi sequi delectus.', 'http://renner.com/eos-molestiae-id-fugit-distinctio', 50, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(93, 'Ut labore temporibus totam inventore a rerum sapiente. Vero quis sunt harum ad culpa. Exercitationem similique tempore repellendus earum sed et.', 'http://dickinson.info/', 38, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(94, 'Iste nesciunt et fugit est quas quo. Occaecati voluptatum delectus odit sit est rerum expedita sunt. Sunt veniam et nihil et omnis aut.', 'https://zieme.net/nobis-quia-iusto-dolores-fugiat-vitae-nihil.html', 42, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(95, 'Optio fugit mollitia rerum voluptates corrupti sint et enim. Omnis iste odit eveniet eum dicta repudiandae aut. Perferendis fuga iusto unde.', 'http://bergstrom.net/quia-veritatis-perspiciatis-et-et.html', 31, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(96, 'Explicabo omnis atque aut. Quibusdam eos sunt sint dolores magnam. Blanditiis dolor et quo aperiam sed ea.', 'http://lemke.info/nihil-delectus-ut-nihil-porro-perferendis-ut-dicta-eos', 24, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(97, 'Error est maiores magnam omnis. Quo eum repellat perferendis qui. Sunt neque fuga dicta ut.', 'http://www.beatty.com/pariatur-molestiae-dolorem-nihil-dolorum-quis-maxime-cum', 24, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(98, 'Et consequatur dolor harum quia. Magni numquam molestias recusandae nisi dicta quos.', 'http://borer.com/', 48, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(99, 'Placeat quae voluptatum quaerat. Cum omnis quam veniam assumenda earum. Impedit et ullam vero.', 'https://purdy.biz/cum-iure-culpa-distinctio-aperiam-placeat-a-temporibus.html', 46, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(100, 'Quae et consectetur aut dolores. Illum repellat pariatur possimus sed rerum quia provident. Est minus quae ut architecto qui. Qui voluptas qui voluptatem earum ut repellat sequi culpa.', 'https://www.ernser.com/nihil-officia-in-repellat-provident-est-facere', 13, '2021-02-15 10:20:21', '2021-02-15 10:20:21'),
(101, '01-Introduction and What I Need To Learn', 'https://youtu.be/6QAELgirvjs', 52, '2021-02-15 11:15:37', '2021-02-15 11:15:37'),
(102, '02-Elements And Browser', 'https://youtu.be/7LxA9qXUY5k', 52, '2021-02-15 11:16:38', '2021-02-15 11:16:38'),
(103, '01-Introduction And What\'s PHP', 'https://youtu.be/-u9_T_CLZHY', 54, '2021-02-15 12:38:12', '2021-02-15 12:38:12'),
(104, '02-What I Need', 'https://youtu.be/yTpRuWSBncw', 54, '2021-02-15 12:39:01', '2021-02-15 12:39:01'),
(105, '01-Introduction And What I Need To Learn', 'https://www.youtube.com/embed/X1ulCwyhCVM', 53, '2021-02-15 12:40:37', '2021-02-15 13:15:11'),
(106, '03-Element Styling', 'https://www.youtube.com/embed/66sjwQ-hB64', 53, '2021-02-15 12:41:22', '2021-02-15 13:29:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_track_id_foreign` (`track_id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD KEY `course_user_user_id_foreign` (`user_id`),
  ADD KEY `course_user_course_id_foreign` (`course_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photoable`
--
ALTER TABLE `photoable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_course_id_foreign` (`course_id`);

--
-- Indexes for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD KEY `quiz_user_user_id_foreign` (`user_id`),
  ADD KEY `quiz_user_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_user`
--
ALTER TABLE `track_user`
  ADD KEY `track_user_user_id_foreign` (`user_id`),
  ADD KEY `track_user_track_id_foreign` (`track_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_course_id_foreign` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `photoable`
--
ALTER TABLE `photoable`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_track_id_foreign` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_user_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD CONSTRAINT `quiz_user_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `track_user`
--
ALTER TABLE `track_user`
  ADD CONSTRAINT `track_user_track_id_foreign` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `track_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
