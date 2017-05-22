-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Maio-2017 às 22:45
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcommentmeta`
--

CREATE TABLE `wpcommentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpcommentmeta`
--

INSERT INTO `wpcommentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '3'),
(2, 2, 'verified', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpcomments`
--

CREATE TABLE `wpcomments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpcomments`
--

INSERT INTO `wpcomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-05-11 20:44:43', '2017-05-11 23:44:43', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 11, 'andre', 'andrekrt1922@gmail.com', '', '::1', '2017-05-11 21:24:36', '2017-05-12 00:24:36', 'ruim', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '', 0, 1),
(3, 14, 'WooCommerce', '', '', '', '2017-05-11 21:27:07', '2017-05-12 00:27:07', 'Pedido cancelado pelo cliente. Status do pedido alterado de Pagamento pendente para Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 15, 'WooCommerce', '', '', '', '2017-05-11 21:28:02', '2017-05-12 00:28:02', 'Pedido cancelado pelo cliente. Status do pedido alterado de Pagamento pendente para Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wplinks`
--

CREATE TABLE `wplinks` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpoptions`
--

CREATE TABLE `wpoptions` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpoptions`
--

INSERT INTO `wpoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'ouro18kbacabal', 'yes'),
(4, 'blogdescription', 'Uma loja especializada em joias de ouro 18k', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'andrekrt1922@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"loja/?$";s:27:"index.php?post_type=product";s:37:"loja/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"loja/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"loja/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:56:"categoria-produto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:51:"categoria-produto/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:32:"categoria-produto/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:44:"categoria-produto/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:26:"categoria-produto/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"produto-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"produto-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"produto-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"produto-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"produto-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"produto/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"produto/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"produto/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"produto/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"produto/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"produto/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"produto/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"produto/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"produto/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"produto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"produto/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"produto/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"produto/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"produto/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:19:"akismet/akismet.php";i:1;s:23:"loco-translate/loco.php";i:2;s:45:"woocommerce-correios/woocommerce-correios.php";i:3;s:45:"woocommerce-multilingual/wpml-woocommerce.php";i:4;s:47:"woocommerce-pagseguro/woocommerce-pagseguro.php";i:5;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'artificer', 'yes'),
(41, 'stylesheet', 'artificer', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wpuser_roles', 'a:8:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:134:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:36:"wpml_manage_woocommerce_multilingual";b:1;s:37:"wpml_operate_woocommerce_multilingual";b:1;s:10:"loco_admin";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:7:"Cliente";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:15:"Gerente de loja";s:12:"capabilities";a:111:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:37:"wpml_operate_woocommerce_multilingual";b:1;}}s:10:"translator";a:2:{s:4:"name";s:10:"Translator";s:12:"capabilities";a:2:{s:4:"read";b:1;s:10:"loco_admin";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:7:"primary";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";N;s:8:"footer-4";N;s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:8:{i:1495495328;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1495496684;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1495496784;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1495496980;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1495497447;a:2:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1495573200;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1496707200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1494546730;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(315, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-4.7.5.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-4.7.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.7.5-partial-4.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.7.4";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-4.7.5.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-4.7.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1495491732;s:15:"version_checked";s:5:"4.7.4";s:12:"translations";a:0:{}}', 'no'),
(314, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(443, '_site_transient_timeout_theme_roots', '1495493541', 'no'),
(444, '_site_transient_theme_roots', 'a:6:{s:9:"artificer";s:7:"/themes";s:5:"omega";s:7:"/themes";s:8:"shopping";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(380, '_transient_timeout_wc_report_sales_by_date', '1494974232', 'no'),
(381, '_transient_wc_report_sales_by_date', 'a:8:{s:32:"8ba81c63f011be433402bd4c4d901a43";a:0:{}s:32:"cb8068db4074084ae5d7be727dafbc0f";a:0:{}s:32:"a9f45d398e847a641e0489662564b8f4";a:0:{}s:32:"f1b2cdfe0f83420e598bdf4072e44b99";N;s:32:"d71cf46e7c5d47bfedb9fe35a69f8d6c";a:0:{}s:32:"baee2d29ce109ffb82c21aa1c0b9db3f";a:0:{}s:32:"cd2b7e2254b28624ca100ceff70ebeed";a:0:{}s:32:"e8a76e640b8370a4f796f5a8f6aff3a5";a:0:{}}', 'no'),
(442, 'auto_updater.lock', '1495491738', 'no'),
(382, '_transient_timeout_wc_admin_report', '1494974232', 'no'),
(317, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1495491929;s:7:"checked";a:6:{s:9:"artificer";s:6:"1.3.17";s:5:"omega";s:5:"1.3.0";s:8:"shopping";s:5:"0.4.3";s:13:"twentyfifteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"1.2";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(363, 'woo_button_color', '', 'yes'),
(122, 'can_compress_scripts', '1', 'no'),
(117, '_site_transient_timeout_browser_879d478c3faf161a652d4329309fc3d3', '1495151159', 'no'),
(118, '_site_transient_browser_879d478c3faf161a652d4329309fc3d3', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"58.0.3029.96";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(423, 'woo_contact_panel', 'true', 'yes'),
(424, 'woo_contact_title', '', 'yes'),
(425, 'woo_contact_address', '', 'yes'),
(426, 'woo_contact_number', '', 'yes'),
(427, 'woo_contact_fax', '', 'yes'),
(428, 'woo_contactform_email-1', '', 'yes'),
(429, 'woo_contact_twitter', '', 'yes'),
(430, 'woo_contactform_map_coords', '', 'yes'),
(431, 'woo_maps_single_height', '250', 'yes'),
(432, 'woo_maps_default_mapzoom', '9', 'yes'),
(433, 'woo_maps_default_maptype', 'G_NORMAL_MAP', 'yes'),
(434, 'woo_maps_callout_text', '', 'yes'),
(435, 'woo_contact_subscribe_and_connect', 'false', 'yes'),
(436, 'woo_maps_scroll', 'false', 'yes'),
(445, 'core_updater.lock', '1495491742', 'no'),
(446, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1495491926;s:8:"response";a:3:{s:23:"loco-translate/loco.php";O:8:"stdClass":9:{s:2:"id";s:5:"42611";s:4:"slug";s:14:"loco-translate";s:6:"plugin";s:23:"loco-translate/loco.php";s:11:"new_version";s:6:"2.0.14";s:3:"url";s:45:"https://wordpress.org/plugins/loco-translate/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/loco-translate.2.0.14.zip";s:14:"upgrade_notice";s:34:"Various bug fixes and improvements";s:6:"tested";s:5:"4.7.5";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.0.7";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.0.7.zip";s:14:"upgrade_notice";s:132:"3.0 is a major update. Make a full site backup, update your theme and extensions, and review update best practices before upgrading.";s:6:"tested";s:5:"4.7.5";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:45:"woocommerce-correios/woocommerce-correios.php";O:8:"stdClass":9:{s:2:"id";s:5:"35132";s:4:"slug";s:20:"woocommerce-correios";s:6:"plugin";s:45:"woocommerce-correios/woocommerce-correios.php";s:11:"new_version";s:5:"3.4.1";s:3:"url";s:51:"https://wordpress.org/plugins/woocommerce-correios/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/woocommerce-correios.3.4.1.zip";s:14:"upgrade_notice";s:300:"Adicionado novamente links para os códigos de rastreamento na detalhes do pedido no admin.\nAdicionado novos links com código de rastreamneto na lista de pedidos no admin.\nCorrigido códigos de rastreamento que ainda não foram atualizados na página de detalhes do pedido em &quot;Minha conta&quot;";s:6:"tested";s:5:"4.7.5";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:2:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"loco-translate";s:8:"language";s:5:"pt_BR";s:7:"version";s:6:"2.0.13";s:7:"updated";s:19:"2017-04-11 02:42:22";s:7:"package";s:82:"https://downloads.wordpress.org/translation/plugin/loco-translate/2.0.13/pt_BR.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"woocommerce";s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"3.0.6";s:7:"updated";s:19:"2017-05-10 15:27:11";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/woocommerce/3.0.6/pt_BR.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:5:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:45:"woocommerce-multilingual/wpml-woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"29052";s:4:"slug";s:24:"woocommerce-multilingual";s:6:"plugin";s:45:"woocommerce-multilingual/wpml-woocommerce.php";s:11:"new_version";s:5:"4.1.4";s:3:"url";s:55:"https://wordpress.org/plugins/woocommerce-multilingual/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/woocommerce-multilingual.4.1.4.zip";}s:47:"woocommerce-pagseguro/woocommerce-pagseguro.php";O:8:"stdClass":7:{s:2:"id";s:5:"35013";s:4:"slug";s:21:"woocommerce-pagseguro";s:6:"plugin";s:47:"woocommerce-pagseguro/woocommerce-pagseguro.php";s:11:"new_version";s:6:"2.12.5";s:3:"url";s:52:"https://wordpress.org/plugins/woocommerce-pagseguro/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/woocommerce-pagseguro.2.12.5.zip";s:14:"upgrade_notice";s:142:"Corrigido valor total das parcelas do cartão de crédito no checkout transparente, o valor tinha parado de ser atualizado no WooCommerce 3.0.";}s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";O:8:"stdClass":6:{s:2:"id";s:5:"70549";s:4:"slug";s:43:"woocommerce-gateway-paypal-express-checkout";s:6:"plugin";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:11:"new_version";s:5:"1.2.1";s:3:"url";s:74:"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/";s:7:"package";s:92:"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.2.1.zip";}}}', 'no'),
(388, '_transient_timeout_plugin_slugs', '1494974262', 'no'),
(389, '_transient_plugin_slugs', 'a:8:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:23:"loco-translate/loco.php";i:3;s:27:"woocommerce/woocommerce.php";i:4;s:45:"woocommerce-correios/woocommerce-correios.php";i:5;s:45:"woocommerce-multilingual/wpml-woocommerce.php";i:6;s:47:"woocommerce-pagseguro/woocommerce-pagseguro.php";i:7;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";}', 'no'),
(390, '_transient_timeout_dash_01e18dead815ce736e3b9cccfbd773a5', '1494931062', 'no'),
(391, '_transient_dash_01e18dead815ce736e3b9cccfbd773a5', '<div class="rss-widget"><p><strong>Erro de RSS:</strong> WP HTTP Error: cURL error 28: Resolving timed out after 10515 milliseconds</p></div><div class="rss-widget"><p><strong>Erro de RSS:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(405, 'woo_tagline', 'true', 'yes'),
(406, 'woo_custom_favicon', 'http://localhost/wordpress/wp-content/uploads/2017/05/kkiioi.png', 'yes'),
(407, 'woo_custom_favicon-id', '13', 'yes'),
(408, 'woo_google_analytics', '', 'yes'),
(409, 'woo_feed_url', '', 'yes'),
(410, 'woo_subscribe_email', '', 'yes'),
(411, 'woo_contactform_email', 'andrekrt1922@gmail.com', 'yes'),
(412, 'woo_connect_newsletter_id', '', 'yes'),
(413, 'woo_connect_mailchimp_list_url', '', 'yes'),
(414, 'woo_custom_css', '', 'yes'),
(415, 'woo_comments', 'both', 'yes'),
(416, 'woo_post_content', 'excerpt', 'yes'),
(417, 'woo_post_author', 'true', 'yes'),
(418, 'woo_pagenav_show', 'true', 'yes'),
(419, 'woo_pagination_type', 'paginated_links', 'yes'),
(420, 'woo_breadcrumbs_show', 'false', 'yes'),
(309, 'installer_repositories_with_theme', 'a:1:{i:0;s:7:"toolset";}', 'yes'),
(374, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(394, 'category_children', 'a:0:{}', 'yes'),
(367, 'woo_stand_first', '', 'yes'),
(140, 'recently_activated', 'a:1:{s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:1494546665;}', 'yes'),
(141, 'woocommerce_default_country', 'BR:MA', 'yes'),
(142, 'woocommerce_allowed_countries', 'specific', 'yes'),
(143, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(144, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"BR";}', 'yes'),
(145, 'woocommerce_ship_to_countries', '', 'yes'),
(146, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(147, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(148, 'woocommerce_calc_taxes', 'no', 'yes'),
(149, 'woocommerce_demo_store', 'no', 'yes'),
(150, 'woocommerce_demo_store_notice', 'Esta é uma loja de demonstração para fins de teste - As compras realizadas não são válidas.', 'no'),
(151, 'woocommerce_currency', 'BRL', 'yes'),
(152, 'woocommerce_currency_pos', 'left', 'yes'),
(153, 'woocommerce_price_thousand_sep', '.', 'yes'),
(154, 'woocommerce_price_decimal_sep', ',', 'yes'),
(155, 'woocommerce_price_num_decimals', '2', 'yes'),
(156, 'woocommerce_weight_unit', 'g', 'yes'),
(157, 'woocommerce_dimension_unit', 'mm', 'yes'),
(158, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(159, 'woocommerce_review_rating_required', 'yes', 'no'),
(160, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(161, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(162, 'woocommerce_shop_page_id', '4', 'yes'),
(163, 'woocommerce_shop_page_display', '', 'yes'),
(164, 'woocommerce_category_archive_display', '', 'yes'),
(165, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(166, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(167, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(168, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(169, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(170, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(171, 'woocommerce_manage_stock', 'yes', 'yes'),
(172, 'woocommerce_hold_stock_minutes', '60', 'no'),
(173, 'woocommerce_notify_low_stock', 'yes', 'no'),
(174, 'woocommerce_notify_no_stock', 'yes', 'no'),
(175, 'woocommerce_stock_email_recipient', 'andrekrt1922@gmail.com', 'no'),
(176, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(177, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(178, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(179, 'woocommerce_stock_format', '', 'yes'),
(180, 'woocommerce_file_download_method', 'force', 'no'),
(181, 'woocommerce_downloads_require_login', 'no', 'no'),
(182, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(183, 'woocommerce_prices_include_tax', 'no', 'yes'),
(184, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(185, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(186, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(187, 'woocommerce_tax_classes', 'Taxa reduzida\r\nTaxa zero', 'yes'),
(188, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(189, 'woocommerce_tax_display_cart', 'excl', 'no'),
(190, 'woocommerce_price_display_suffix', '', 'yes'),
(191, 'woocommerce_tax_total_display', 'itemized', 'no'),
(192, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(193, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(194, 'woocommerce_ship_to_destination', 'billing', 'no'),
(195, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(196, 'woocommerce_enable_coupons', 'yes', 'yes'),
(197, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(198, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(199, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(200, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(201, 'woocommerce_cart_page_id', '5', 'yes'),
(202, 'woocommerce_checkout_page_id', '6', 'yes'),
(203, 'woocommerce_terms_page_id', '', 'no'),
(204, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(205, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(206, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(207, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(208, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(209, 'woocommerce_myaccount_page_id', '7', 'yes'),
(210, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(211, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(212, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(213, 'woocommerce_registration_generate_username', 'yes', 'no'),
(214, 'woocommerce_registration_generate_password', 'no', 'no'),
(215, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(216, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(217, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(218, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(219, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(220, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(221, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(222, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(223, 'woocommerce_email_from_name', 'ouro18bacabal', 'no'),
(224, 'woocommerce_email_from_address', 'andrekrt1922@gmail.com', 'no'),
(225, 'woocommerce_email_header_image', '', 'no'),
(226, 'woocommerce_email_footer_text', 'ouro18bacabal - Desenvolvido com WooCommerce', 'no'),
(227, 'woocommerce_email_base_color', '#96588a', 'no'),
(228, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(229, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(230, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(231, 'woocommerce_api_enabled', 'yes', 'yes'),
(255, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes');
INSERT INTO `wpoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(311, 'woocommerce_db_version', '3.0.6', 'yes'),
(312, 'woocommerce_version', '3.0.6', 'yes'),
(237, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(364, '_transient_timeout_wooupdate_tracker', '1494889148', 'no'),
(239, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(240, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(241, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(242, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(243, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(244, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(245, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(246, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(247, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(248, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(347, '_transient_wc_cbp_5b839b2e372702133d039987c21d8649', 'a:0:{}', 'no'),
(345, '_transient_orders-transient-version', '1494548880', 'yes'),
(346, '_transient_timeout_wc_cbp_5b839b2e372702133d039987c21d8649', '1497140676', 'no'),
(365, '_transient_wooupdate_tracker', 'a:14:{s:17:"woo_contact_panel";b:1;s:17:"woo_contact_title";b:1;s:19:"woo_contact_address";b:1;s:18:"woo_contact_number";b:1;s:15:"woo_contact_fax";b:1;s:23:"woo_contactform_email-1";b:1;s:19:"woo_contact_twitter";b:1;s:26:"woo_contactform_map_coords";b:1;s:22:"woo_maps_single_height";b:1;s:24:"woo_maps_default_mapzoom";b:1;s:24:"woo_maps_default_maptype";b:1;s:21:"woo_maps_callout_text";b:1;s:33:"woo_contact_subscribe_and_connect";b:1;s:15:"woo_maps_scroll";b:1;}', 'no'),
(257, '_transient_timeout_geoip_::1', '1495151297', 'no'),
(258, '_transient_geoip_::1', '', 'no'),
(439, '_transient_timeout_external_ip_address_::1', '1496096523', 'no'),
(440, '_transient_external_ip_address_::1', '179.199.154.97', 'no');
INSERT INTO `wpoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(274, 'wp_installer_settings', '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', 'yes');
INSERT INTO `wpoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(261, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(262, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(263, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";s:22:"andrekrt1922@gmail.com";}', 'yes'),
(264, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(265, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(266, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(267, 'woocommerce_allow_tracking', 'no', 'yes'),
(268, '_transient_shipping-transient-version', '1494547425', 'yes'),
(272, '_transient_timeout_wc_upgrade_notice_3.0.5', '1494632996', 'no'),
(273, '_transient_wc_upgrade_notice_3.0.5', '', 'no'),
(275, '_wcml_version', '4.1.2', 'yes'),
(276, 'wc_ppec_version', '1.2.1', 'yes'),
(277, 'wp_installer_clientside_active_tab', 'featured', 'no'),
(278, 'current_theme', 'Artificer', 'yes'),
(279, 'theme_mods_artificer', 'a:2:{i:0;b:0;s:18:"custom_css_post_id";i:-1;}', 'yes'),
(280, 'theme_switched', '', 'yes'),
(303, '_transient_timeout_wooframework_version_data', '1494633153', 'no'),
(281, 'widget_woo_adwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(282, 'widget_woo_blogauthorinfo', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(283, 'widget_woo_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(284, 'widget_woo_subscribe', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(285, 'widget_woo_embed', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'widget_woo_flickr', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(287, 'woocommerce_thumbnail_image_width', '100', 'yes'),
(288, 'woocommerce_thumbnail_image_height', '100', 'yes'),
(289, 'woocommerce_single_image_width', '600', 'yes'),
(290, 'woocommerce_single_image_height', '600', 'yes'),
(291, 'woocommerce_catalog_image_width', '300', 'yes'),
(292, 'woocommerce_catalog_image_height', '300', 'yes'),
(293, 'woocommerce_thumbnail_image_crop', '1', 'yes'),
(294, 'woocommerce_single_image_crop', '1', 'yes'),
(295, 'woocommerce_catalog_image_crop', '1', 'yes'),
(296, 'woo_framework_version', '6.2.8', 'yes'),
(297, 'woo_options', 'a:47:{s:14:"woo_body_color";s:7:"#d3d3d3";s:12:"woo_body_img";s:0:"";s:15:"woo_body_img-id";i:0;s:15:"woo_body_repeat";s:9:"no-repeat";s:12:"woo_body_pos";s:8:"top left";s:19:"woo_body_attachment";s:6:"scroll";s:14:"woo_link_color";s:0:"";s:20:"woo_link_hover_color";s:0:"";s:16:"woo_button_color";s:0:"";s:15:"woo_stand_first";s:0:"";s:22:"woo_display_store_info";s:5:"false";s:22:"woo_store_phone_number";s:12:"01234 567890";s:23:"woo_store_email_address";s:18:"info@yourstore.com";s:18:"woo_alt_stylesheet";s:11:"default.css";s:8:"woo_logo";s:0:"";s:11:"woo_logo-id";i:0;s:13:"woo_texttitle";s:4:"true";s:11:"woo_tagline";s:4:"true";s:18:"woo_custom_favicon";s:64:"http://localhost/wordpress/wp-content/uploads/2017/05/kkiioi.png";s:21:"woo_custom_favicon-id";i:13;s:20:"woo_google_analytics";s:0:"";s:12:"woo_feed_url";s:0:"";s:19:"woo_subscribe_email";s:0:"";s:21:"woo_contactform_email";s:22:"andrekrt1922@gmail.com";s:25:"woo_connect_newsletter_id";s:0:"";s:30:"woo_connect_mailchimp_list_url";s:0:"";s:14:"woo_custom_css";s:0:"";s:12:"woo_comments";s:4:"both";s:16:"woo_post_content";s:7:"excerpt";s:15:"woo_post_author";s:4:"true";s:16:"woo_pagenav_show";s:4:"true";s:19:"woo_pagination_type";s:15:"paginated_links";s:20:"woo_breadcrumbs_show";s:5:"false";s:17:"woo_contact_panel";s:4:"true";s:17:"woo_contact_title";s:0:"";s:19:"woo_contact_address";s:0:"";s:18:"woo_contact_number";s:0:"";s:15:"woo_contact_fax";s:0:"";s:23:"woo_contactform_email-1";s:0:"";s:19:"woo_contact_twitter";s:0:"";s:26:"woo_contactform_map_coords";s:0:"";s:22:"woo_maps_single_height";s:3:"250";s:24:"woo_maps_default_mapzoom";s:1:"9";s:24:"woo_maps_default_maptype";s:12:"G_NORMAL_MAP";s:21:"woo_maps_callout_text";s:0:"";s:33:"woo_contact_subscribe_and_connect";s:5:"false";s:15:"woo_maps_scroll";s:5:"false";}', 'yes'),
(298, 'woo_template', 'a:119:{i:0;a:3:{s:4:"name";s:22:"Configurações Gerais";s:4:"type";s:7:"heading";s:4:"icon";s:7:"general";}i:1;a:2:{s:4:"name";s:15:"Começo rápido";s:4:"type";s:10:"subheading";}i:2;a:6:{s:4:"name";s:23:"Folha de estilo do tema";s:4:"desc";s:53:"Selecione seu esquema de cores de temas alternativos.";s:2:"id";s:18:"woo_alt_stylesheet";s:3:"std";s:11:"default.css";s:4:"type";s:6:"select";s:7:"options";a:13:{i:0;s:8:"blue.css";i:1;s:9:"brown.css";i:2;s:11:"default.css";i:3;s:10:"floral.css";i:4;s:9:"green.css";i:5;s:9:"honey.css";i:6;s:10:"indigo.css";i:7;s:14:"industrial.css";i:8;s:11:"minimal.css";i:9;s:10:"orange.css";i:10;s:7:"red.css";i:11;s:10:"violet.css";i:12;s:10:"yellow.css";}}i:3;a:5:{s:4:"name";s:22:"Logotipo personalizado";s:4:"desc";s:88:"Faça o upload de um logotipo para seu tema ou especifique um URL de imagem diretamente.";s:2:"id";s:8:"woo_logo";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:4;a:5:{s:4:"name";s:16:"Título do texto";s:4:"desc";s:187:"Habilite o título do site baseado em texto e o Tagline. Título da instalação e tagline em <a href="http://localhost/wordpress/wp-admin/options-general.php">Configurações Gerais</a>.";s:2:"id";s:13:"woo_texttitle";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:5;a:5:{s:4:"name";s:19:"Descrição do Site";s:4:"desc";s:60:"Ativar a descrição do site / slogan sob o título do site.";s:2:"id";s:11:"woo_tagline";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:6;a:5:{s:4:"name";s:21:"Favicon personalizado";s:4:"desc";s:117:"Carregue uma 16px x 16px <a href="http://www.faviconr.com/"> imagem ico </a> que representará o favicon do seu site.";s:2:"id";s:18:"woo_custom_favicon";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:7;a:5:{s:4:"name";s:25:"Código de acompanhamento";s:4:"desc";s:123:"Cole seu código de acompanhamento do Google Analytics (ou outro) aqui. Isso será adicionado ao modelo de rodapé do tema.";s:2:"id";s:20:"woo_google_analytics";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:8;a:2:{s:4:"name";s:29:"Configurações de Assinatura";s:4:"type";s:10:"subheading";}i:9;a:5:{s:4:"name";s:7:"URL RSS";s:4:"desc";s:51:"Insira seu URL RSS preferido. (Feedburner ou outro)";s:2:"id";s:12:"woo_feed_url";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:10;a:5:{s:4:"name";s:29:"URL de Subscrição de E-mail";s:4:"desc";s:71:"Insira seu URL de assinatura de e-mail preferido. (Feedburner ou outro)";s:2:"id";s:19:"woo_subscribe_email";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:11;a:5:{s:4:"name";s:29:"Formulário de Contato E-Mail";s:4:"desc";s:215:"Digite seu endereço de e-mail para usar no modelo de página do formulário de contato. Adicione o formulário de contato adicionando uma nova página e selecionando "Formulário de contato" como modelo de página.";s:2:"id";s:21:"woo_contactform_email";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:12;a:2:{s:4:"name";s:22:"Opções de exibição";s:4:"type";s:10:"subheading";}i:13;a:5:{s:4:"name";s:15:"CSS customizado";s:4:"desc";s:71:"Adicione rapidamente alguns CSS ao seu tema adicionando-o a este bloco.";s:2:"id";s:14:"woo_custom_css";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:14;a:6:{s:4:"name";s:27:"Post / Página Comentários";s:4:"desc";s:87:"Selecione se você deseja ativar / desativar comentários em postagens e / ou páginas.";s:2:"id";s:12:"woo_comments";s:3:"std";s:4:"both";s:4:"type";s:7:"select2";s:7:"options";a:4:{s:4:"post";s:16:"Apenas postagens";s:4:"page";s:16:"Páginas somente";s:4:"both";s:20:"Páginas / Mensagens";s:4:"none";s:6:"Nenhum";}}i:15;a:5:{s:4:"name";s:16:"Postar Conteúdo";s:4:"desc";s:80:"Selecione se você deseja mostrar o conteúdo completo ou o trecho em postagens.";s:2:"id";s:16:"woo_post_content";s:4:"type";s:7:"select2";s:7:"options";a:2:{s:7:"excerpt";s:9:"O Excerto";s:7:"content";s:18:"Conteúdo completo";}}i:16;a:5:{s:4:"name";s:23:"Caixa do autor do borne";s:4:"desc";s:177:"Isso habilitará a caixa de autor de postagem na página de postagens individuais. Editar a descrição em <a href="http://localhost/wordpress/wp-admin/profile.php">Profile</a>.";s:2:"id";s:15:"woo_post_author";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:17;a:5:{s:4:"name";s:18:"Exibir Breadcrumbs";s:4:"desc";s:55:"Exibir rótulos dinâmicos em cada página do seu site.";s:2:"id";s:20:"woo_breadcrumbs_show";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:18;a:5:{s:4:"name";s:25:"Paginação de exibição";s:4:"desc";s:27:"Exibir paginação no blog.";s:2:"id";s:16:"woo_pagenav_show";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:19;a:5:{s:4:"name";s:21:"Estilo de Paginação";s:4:"desc";s:69:"Selecione o estilo de paginação que você gostaria de usar no blog.";s:2:"id";s:19:"woo_pagination_type";s:4:"type";s:7:"select2";s:7:"options";a:2:{s:15:"paginated_links";s:8:"Números";s:6:"simple";s:19:"Próximo / Anterior";}}i:20;a:3:{s:4:"name";s:18:"Opções de estilo";s:4:"type";s:7:"heading";s:4:"icon";s:7:"styling";}i:21;a:2:{s:4:"name";s:5:"fundo";s:4:"type";s:10:"subheading";}i:22;a:5:{s:4:"name";s:21:"Cor do fundo do corpo";s:4:"desc";s:70:"Escolha uma cor personalizada para a cor de fundo do tema, p. # 697e09";s:2:"id";s:14:"woo_body_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:23;a:5:{s:4:"name";s:24:"Imagem de fundo do corpo";s:4:"desc";s:40:"Carregar uma imagem para o fundo do tema";s:2:"id";s:12:"woo_body_img";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:24;a:6:{s:4:"name";s:32:"Repetir imagem de plano de fundo";s:4:"desc";s:58:"Selecione como você gostaria de repetir a imagem de fundo";s:2:"id";s:15:"woo_body_repeat";s:3:"std";s:9:"no-repeat";s:4:"type";s:6:"select";s:7:"options";a:4:{i:0;s:9:"no-repeat";i:1;s:8:"repeat-x";i:2;s:8:"repeat-y";i:3;s:6:"repeat";}}i:25;a:6:{s:4:"name";s:37:"Posição da imagem de plano de fundo";s:4:"desc";s:60:"Selecione como você gostaria de posicionar o plano de fundo";s:2:"id";s:12:"woo_body_pos";s:3:"std";s:3:"top";s:4:"type";s:6:"select";s:7:"options";a:9:{i:0;s:8:"top left";i:1;s:10:"top center";i:2;s:9:"top right";i:3;s:11:"center left";i:4;s:13:"center center";i:5;s:12:"center right";i:6;s:11:"bottom left";i:7;s:13:"bottom center";i:8;s:12:"bottom right";}}i:26;a:6:{s:4:"name";s:21:"Background Attachment";s:4:"desc";s:75:"Select whether the background should be fixed or move when the user scrolls";s:2:"id";s:19:"woo_body_attachment";s:3:"std";s:6:"scroll";s:4:"type";s:6:"select";s:7:"options";a:2:{i:0;s:6:"scroll";i:1;s:5:"fixed";}}i:27;a:2:{s:4:"name";s:5:"Links";s:4:"type";s:10:"subheading";}i:28;a:5:{s:4:"name";s:11:"Cor do link";s:4:"desc";s:95:"Escolha uma cor personalizada para links ou adicione um código de cor hexadecimal, p. # 697e09";s:2:"id";s:14:"woo_link_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:29;a:5:{s:4:"name";s:14:"Link Hover Cor";s:4:"desc";s:110:"Escolha uma cor personalizada para as hiperligações ou adicione um código de cores hexadecimal, p. # 697e09";s:2:"id";s:20:"woo_link_hover_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:30;a:5:{s:4:"name";s:13:"Cor do botão";s:4:"desc";s:97:"Escolha uma cor personalizada para botões ou adicione um código de cor hexadecimal, p. # 697e09";s:2:"id";s:16:"woo_button_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:31;a:3:{s:4:"name";s:10:"Typography";s:4:"type";s:7:"heading";s:4:"icon";s:10:"typography";}i:32;a:5:{s:4:"name";s:31:"Ativar tipografia personalizada";s:4:"desc";s:109:"Ative o uso de tipografia personalizada para seu site. Estilo personalizado será exibido em seus sites HEAD.";s:2:"id";s:14:"woo_typography";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:33;a:5:{s:4:"name";s:16:"Tipografia geral";s:4:"desc";s:21:"Altere a fonte geral.";s:2:"id";s:13:"woo_font_body";s:3:"std";a:5:{s:4:"size";s:3:"1.6";s:4:"unit";s:2:"em";s:4:"face";s:18:"FontSiteSans-Roman";s:5:"style";s:0:"";s:5:"color";s:7:"#3E3E3E";}s:4:"type";s:10:"typography";}i:34;a:5:{s:4:"name";s:11:"Navegação";s:4:"desc";s:30:"Altere a fonte de navegação.";s:2:"id";s:12:"woo_font_nav";s:3:"std";a:5:{s:4:"size";s:1:"1";s:4:"unit";s:2:"em";s:4:"face";s:17:"FontSiteSans-Cond";s:5:"style";s:0:"";s:5:"color";s:7:"#3E3E3E";}s:4:"type";s:10:"typography";}i:35;a:5:{s:4:"name";s:18:"Título da página";s:4:"desc";s:29:"Alterar o título da página.";s:2:"id";s:19:"woo_font_page_title";s:3:"std";a:5:{s:4:"size";s:3:"2.2";s:4:"unit";s:2:"em";s:4:"face";s:10:"BergamoStd";s:5:"style";s:4:"bold";s:5:"color";s:7:"#3E3E3E";}s:4:"type";s:10:"typography";}i:36;a:5:{s:4:"name";s:10:"Post Title";s:4:"desc";s:29:"Altere o título da postagem.";s:2:"id";s:19:"woo_font_post_title";s:3:"std";a:5:{s:4:"size";s:3:"2.2";s:4:"unit";s:2:"em";s:4:"face";s:10:"BergamoStd";s:5:"style";s:4:"bold";s:5:"color";s:7:"#3E3E3E";}s:4:"type";s:10:"typography";}i:37;a:5:{s:4:"name";s:9:"Post Meta";s:4:"desc";s:26:"Altere a meta de postagem.";s:2:"id";s:18:"woo_font_post_meta";s:3:"std";a:5:{s:4:"size";s:1:"1";s:4:"unit";s:2:"em";s:4:"face";s:10:"BergamoStd";s:5:"style";s:0:"";s:5:"color";s:7:"#3E3E3E";}s:4:"type";s:10:"typography";}i:38;a:5:{s:4:"name";s:15:"Entrada no post";s:4:"desc";s:29:"Altere a entrada de postagem.";s:2:"id";s:19:"woo_font_post_entry";s:3:"std";a:5:{s:4:"size";s:1:"1";s:4:"unit";s:2:"em";s:4:"face";s:10:"BergamoStd";s:5:"style";s:0:"";s:5:"color";s:7:"#3E3E3E";}s:4:"type";s:10:"typography";}i:39;a:5:{s:4:"name";s:19:"Títulos de widgets";s:4:"desc";s:29:"Altere os títulos de widget.";s:2:"id";s:22:"woo_font_widget_titles";s:3:"std";a:5:{s:4:"size";s:1:"1";s:4:"unit";s:2:"em";s:4:"face";s:17:"FontSiteSans-Cond";s:5:"style";s:4:"bold";s:5:"color";s:7:"#3E3E3E";}s:4:"type";s:10:"typography";}i:40;a:3:{s:4:"name";s:16:"Homepage Options";s:4:"type";s:7:"heading";s:4:"icon";s:8:"homepage";}i:41;a:2:{s:4:"name";s:11:"Stand First";s:4:"type";s:10:"subheading";}i:42;a:5:{s:4:"name";s:11:"Stand First";s:4:"desc";s:20:"The homepage heading";s:2:"id";s:15:"woo_stand_first";s:3:"std";s:39:"Hello and welcome to our awesome store!";s:4:"type";s:8:"textarea";}i:43;a:2:{s:4:"name";s:10:"Store Info";s:4:"type";s:10:"subheading";}i:44;a:6:{s:4:"name";s:18:"Display Store info";s:4:"desc";s:40:"Display your store details in the footer";s:2:"id";s:22:"woo_display_store_info";s:3:"std";s:4:"true";s:5:"class";s:9:"collapsed";s:4:"type";s:8:"checkbox";}i:45;a:6:{s:4:"name";s:18:"Store phone number";s:4:"desc";s:27:"Appears in your site footer";s:2:"id";s:22:"woo_store_phone_number";s:3:"std";s:12:"01234 567890";s:5:"class";s:6:"hidden";s:4:"type";s:4:"text";}i:46;a:6:{s:4:"name";s:19:"Store email address";s:4:"desc";s:27:"Appears in your site footer";s:2:"id";s:23:"woo_store_email_address";s:3:"std";s:18:"info@yourstore.com";s:5:"class";s:6:"hidden";s:4:"type";s:4:"text";}i:47;a:3:{s:4:"name";s:19:"WooCommerce Options";s:4:"type";s:7:"heading";s:4:"icon";s:11:"woocommerce";}i:48;a:2:{s:4:"name";s:8:"Products";s:4:"type";s:10:"subheading";}i:49;a:5:{s:4:"name";s:16:"Product per page";s:4:"desc";s:91:"How many products do you want to display on product archive pages? Multiples of 3 work best";s:2:"id";s:21:"woo_products_per_page";s:3:"std";s:2:"12";s:4:"type";s:4:"text";}i:50;a:2:{s:4:"name";s:6:"Layout";s:4:"type";s:10:"subheading";}i:51;a:5:{s:4:"name";s:21:"Shop pages full width";s:4:"desc";s:50:"Shop archives displayed full-width with no sidebar";s:2:"id";s:27:"woo_shop_archives_fullwidth";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:52;a:3:{s:4:"name";s:18:"Opções de layout";s:4:"type";s:7:"heading";s:4:"icon";s:6:"layout";}i:53;a:6:{s:4:"name";s:16:"Layout principal";s:4:"desc";s:43:"Selecione qual layout deseja para seu site.";s:2:"id";s:15:"woo_site_layout";s:3:"std";s:20:"layout-right-content";s:4:"type";s:6:"images";s:7:"options";a:2:{s:19:"layout-left-content";s:79:"http://localhost/wordpress/wp-content/themes/artificer/functions/images/2cl.png";s:20:"layout-right-content";s:79:"http://localhost/wordpress/wp-content/themes/artificer/functions/images/2cr.png";}}i:54;a:5:{s:4:"name";s:45:"Categoria Excluir - Modelo de Página de Blog";s:4:"desc";s:160:"Especifique uma lista separada por vírgula de IDs de categoria ou slugs que você gostaria de excluir do modelo de página \'Blog\' (por exemplo: sem categoria).";s:2:"id";s:21:"woo_exclude_cats_blog";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:55;a:3:{s:4:"name";s:18:"Imagens dinâmicas";s:4:"type";s:7:"heading";s:4:"icon";s:5:"image";}i:56;a:2:{s:4:"name";s:29:"Redimensionar configurações";s:4:"type";s:10:"subheading";}i:57;a:5:{s:4:"name";s:37:"Redimensionamento Dinâmico de Imagem";s:4:"desc";s:0:"";s:2:"id";s:18:"woo_wpthumb_notice";s:3:"std";s:238:"Há dois métodos alternativos de redimensionamento dinâmico das miniaturas no tema, <strong> WP Post Thumbnail </ strong> ou <strong> TimThumb - painel Configurações personalizadas </ strong>. Recomendamos a opção WP Post Thumbnail.";s:4:"type";s:4:"info";}i:58;a:6:{s:4:"name";s:17:"WP Post Thumbnail";s:4:"desc";s:213:"Use a miniatura do post do WordPress para atribuir uma miniatura de postagem. Ativará o painel <strong> Imagem em Destaque </ strong> na barra lateral de postagem, onde poderá atribuir uma miniatura de postagem.";s:2:"id";s:22:"woo_post_image_support";s:3:"std";s:4:"true";s:5:"class";s:9:"collapsed";s:4:"type";s:8:"checkbox";}i:59;a:6:{s:4:"name";s:54:"WP Post Thumbnail - Imagem dinâmica Redimensionamento";s:4:"desc";s:140:"A miniatura do post será dinamicamente redimensionada usando a funcionalidade de redimensionamento WP nativa. <em> (Requer PHP 5.2 +) </em>";s:2:"id";s:14:"woo_pis_resize";s:3:"std";s:4:"true";s:5:"class";s:6:"hidden";s:4:"type";s:8:"checkbox";}i:60;a:6:{s:4:"name";s:34:"WP Post Thumbnail - Culturas duras";s:4:"desc";s:148:"A miniatura do post será recortada para corresponder à proporção de aspecto do alvo (usada somente se "Dynamic Image Resizing" estiver ativado).";s:2:"id";s:17:"woo_pis_hard_crop";s:3:"std";s:4:"true";s:5:"class";s:11:"hidden last";s:4:"type";s:8:"checkbox";}i:61;a:5:{s:4:"name";s:51:"TimThumb - Painel de configurações personalizadas";s:4:"desc";s:262:"Isso habilitará o script$ s (thumb.php) que redimensiona dinamicamente as imagens adicionadas através do painel <strong> configurações personalizadas abaixo do post </ strong>. Certifique-se de que a pasta <em> cache </ em> dos seus temas seja gravável. $ s";s:2:"id";s:10:"woo_resize";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:62;a:5:{s:4:"name";s:31:"Miniatura automática da imagem";s:4:"desc";s:83:"Se nenhuma miniatura é especificada, a primeira imagem carregada no post é usada.";s:2:"id";s:12:"woo_auto_img";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:63;a:2:{s:4:"name";s:29:"Configurações de miniaturas";s:4:"type";s:10:"subheading";}i:64;a:5:{s:4:"name";s:33:"Dimensões da imagem em miniatura";s:4:"desc";s:111:"Insira um valor inteiro, isto é 250 para o tamanho desejado que será usado ao criar dinamicamente as imagens.";s:2:"id";s:20:"woo_image_dimensions";s:3:"std";s:0:"";s:4:"type";a:2:{i:0;a:4:{s:2:"id";s:11:"woo_thumb_w";s:4:"type";s:4:"text";s:3:"std";i:150;s:4:"meta";s:7:"Largura";}i:1;a:4:{s:2:"id";s:11:"woo_thumb_h";s:4:"type";s:4:"text";s:3:"std";i:150;s:4:"meta";s:6:"Altura";}}}i:65;a:6:{s:4:"name";s:25:"Alinhamento de Miniaturas";s:4:"desc";s:49:"Selecione como alinhar suas miniaturas com posts.";s:2:"id";s:15:"woo_thumb_align";s:3:"std";s:10:"alignright";s:4:"type";s:7:"select2";s:7:"options";a:3:{s:9:"alignleft";s:8:"Esquerda";s:10:"alignright";s:7:"Direita";s:11:"aligncenter";s:6:"Centro";}}i:66;a:6:{s:4:"name";s:28:"Single Post - Show Thumbnail";s:4:"desc";s:51:"Mostrar a miniatura na página de postagem simples.";s:2:"id";s:16:"woo_thumb_single";s:5:"class";s:9:"collapsed";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:67;a:6:{s:4:"name";s:41:"Postagem Única - Dimensões da Miniatura";s:4:"desc";s:117:"Single Post - Miniatura Digite um valor inteiro, por exemplo, 250 para o tamanho da imagem. A largura máxima é 576.";s:2:"id";s:20:"woo_image_dimensions";s:3:"std";s:0:"";s:5:"class";s:11:"hidden last";s:4:"type";a:2:{i:0;a:4:{s:2:"id";s:12:"woo_single_w";s:4:"type";s:4:"text";s:3:"std";i:200;s:4:"meta";s:7:"Largura";}i:1;a:4:{s:2:"id";s:12:"woo_single_h";s:4:"type";s:4:"text";s:3:"std";i:200;s:4:"meta";s:6:"Altura";}}}i:68;a:7:{s:4:"name";s:44:"Postagem simples - Alinhamento de miniaturas";s:4:"desc";s:59:"Selecione como alinhar sua miniatura com posts individuais.";s:2:"id";s:22:"woo_thumb_single_align";s:3:"std";s:10:"alignright";s:4:"type";s:7:"select2";s:5:"class";s:6:"hidden";s:7:"options";a:3:{s:9:"alignleft";s:8:"Esquerda";s:10:"alignright";s:7:"Direita";s:11:"aligncenter";s:6:"Centro";}}i:69;a:5:{s:4:"name";s:31:"Adicionar miniatura ao feed RSS";s:4:"desc";s:74:"Add the the image uploaded via your Custom Settings panel to your RSS feed";s:2:"id";s:13:"woo_rss_thumb";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:70;a:5:{s:4:"name";s:15:"Ativar Lightbox";s:4:"desc";s:71:"Ative o script PrettyPhoto lighbox em imagens no conteúdo do seu site.";s:2:"id";s:19:"woo_enable_lightbox";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:71;a:3:{s:4:"name";s:27:"Personalização de Rodapé";s:4:"type";s:7:"heading";s:4:"icon";s:6:"footer";}i:72;a:6:{s:4:"name";s:27:"Áreas de Widget de Rodapé";s:4:"desc";s:66:"Selecione quantas áreas de widget de rodapé você deseja exibir.";s:2:"id";s:19:"woo_footer_sidebars";s:3:"std";s:1:"4";s:4:"type";s:6:"images";s:7:"options";a:5:{i:0;s:86:"http://localhost/wordpress/wp-content/themes/artificer/functions/images/layout-off.png";i:1;s:92:"http://localhost/wordpress/wp-content/themes/artificer/functions/images/footer-widgets-1.png";i:2;s:92:"http://localhost/wordpress/wp-content/themes/artificer/functions/images/footer-widgets-2.png";i:3;s:92:"http://localhost/wordpress/wp-content/themes/artificer/functions/images/footer-widgets-3.png";i:4;s:92:"http://localhost/wordpress/wp-content/themes/artificer/functions/images/footer-widgets-4.png";}}i:73;a:5:{s:4:"name";s:27:"Link afiliado personalizado";s:4:"desc";s:70:"Adicione um link de afiliado ao logotipo WooThemes no rodapé do tema.";s:2:"id";s:19:"woo_footer_aff_link";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:74;a:5:{s:4:"name";s:39:"Ativar Rodapé Personalizado (Esquerda)";s:4:"desc";s:69:"Ative para adicionar o texto personalizado abaixo ao rodapé do tema.";s:2:"id";s:15:"woo_footer_left";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:75;a:5:{s:4:"name";s:30:"Texto personalizado (Esquerda)";s:4:"desc";s:66:"Custom HTML and Text that will appear in the footer of your theme.";s:2:"id";s:20:"woo_footer_left_text";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:76;a:5:{s:4:"name";s:38:"Ativar rodapé personalizado (direito)";s:4:"desc";s:69:"Ative para adicionar o texto personalizado abaixo ao rodapé do tema.";s:2:"id";s:16:"woo_footer_right";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:77;a:5:{s:4:"name";s:29:"Texto personalizado (direito)";s:4:"desc";s:66:"Custom HTML and Text that will appear in the footer of your theme.";s:2:"id";s:21:"woo_footer_right_text";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:78;a:3:{s:4:"name";s:18:"Subscrever e ligar";s:4:"type";s:7:"heading";s:4:"icon";s:7:"connect";}i:79;a:2:{s:4:"name";s:14:"Configuração";s:4:"type";s:10:"subheading";}i:80;a:5:{s:4:"name";s:51:"Ativar Inscrever-se e Conectar-se - Mensagem Única";s:4:"desc";s:125:"Ative a área de inscrição e conexão em postagens individuais. Você também pode adicionar isso como$ s na barra lateral.";s:2:"id";s:11:"woo_connect";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:81;a:5:{s:4:"name";s:15:"Assinar Título";s:4:"desc";s:70:"Insira o título a ser exibido em sua área de inscrição e conexão.";s:2:"id";s:17:"woo_connect_title";s:3:"std";s:9:"Subscribe";s:4:"type";s:4:"text";}i:82;a:5:{s:4:"name";s:5:"Texto";s:4:"desc";s:37:"Change the default text in this area.";s:2:"id";s:19:"woo_connect_content";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:83;a:5:{s:4:"name";s:29:"Ativar postagens relacionadas";s:4:"desc";s:187:"Ativar postagens relacionadas na área de assinatura. Usa postagens com as mesmas <strong> tags </ strong> para encontrar posts relacionados. Nota: Não será exibido no widget Inscrever.";s:2:"id";s:19:"woo_connect_related";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:84;a:2:{s:4:"name";s:29:"Configurações de Assinatura";s:4:"type";s:10:"subheading";}i:85;a:5:{s:4:"name";s:39:"Inscrever-se por E-mail ID (Feedburner)";s:4:"desc";s:171:"Digite o <a href="http://www.woothemes.com/tutorials/how-to-find-your-feedburner-id-for-email-subscription/"> Feedburner ID </a> para o e-mail Formulário de subscrição.";s:2:"id";s:25:"woo_connect_newsletter_id";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:86;a:5:{s:4:"name";s:38:"Inscrever-se por E-mail para MailChimp";s:4:"desc";s:215:"Se você tem uma conta do MailChimp, você pode entrar no <a href="http://woochimp.heroku.com" target="_blank"> URL da Lista de MailChimp </a> para permitir que seus usuários se inscrevam em uma Lista de MailChimp.";s:2:"id";s:30:"woo_connect_mailchimp_list_url";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:87;a:2:{s:4:"name";s:27:"Configurações de conexão";s:4:"type";s:10:"subheading";}i:88;a:5:{s:4:"name";s:10:"Ativar RSS";s:4:"desc";s:36:"Ative o ícone de inscrição e RSS.";s:2:"id";s:15:"woo_connect_rss";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:89;a:5:{s:4:"name";s:14:"URL do Twitter";s:4:"desc";s:99:"Digite seu <a href="http://www.twitter.com/"> Twitter </a> URL, p. Http://www.twitter.com/woothemes";s:2:"id";s:19:"woo_connect_twitter";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:90;a:5:{s:4:"name";s:15:"URL do Facebook";s:4:"desc";s:102:"Digite seu <a href="http://www.facebook.com/"> Facebook </a> URL, p. Http://www.facebook.com/woothemes";s:2:"id";s:20:"woo_connect_facebook";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:91;a:5:{s:4:"name";s:14:"URL do YouTube";s:4:"desc";s:111:"Insira seu <a href="http://www.youtube.com/"> URL do YouTube </a>, por exemplo Http://www.youtube.com/woothemes";s:2:"id";s:19:"woo_connect_youtube";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:92;a:5:{s:4:"name";s:13:"URL do Flickr";s:4:"desc";s:106:"Insira seu URL <a href="http://www.flickr.com/"> Flickr </a>, por exemplo, Http://www.flickr.com/woothemes";s:2:"id";s:18:"woo_connect_flickr";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:93;a:5:{s:4:"name";s:15:"URL do LinkedIn";s:4:"desc";s:113:"Digite seu <a href="http://www.www.linkedin.com.com/"> LinkedIn </a> URL, p. Http://www.linkedin.com/in/woothemes";s:2:"id";s:20:"woo_connect_linkedin";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:94;a:5:{s:4:"name";s:13:"URL Delicious";s:4:"desc";s:112:"Insira o seu URL <a href="http://www.delicious.com/"> Delicious </a>, por ex. Http://www.delicious.com/woothemes";s:2:"id";s:21:"woo_connect_delicious";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:95;a:5:{s:4:"name";s:14:"URL do Google+";s:4:"desc";s:126:"Insira seu <a href="http://plus.google.com/"> URL do Google+ </a>, por exemplo, Https://plus.google.com/104560124403688998123/";s:2:"id";s:22:"woo_connect_googleplus";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:96;a:3:{s:4:"name";s:10:"Propaganda";s:4:"type";s:7:"heading";s:4:"icon";s:3:"ads";}i:97;a:2:{s:4:"name";s:28:"Anúncio superior (468x60px)";s:4:"type";s:10:"subheading";}i:98;a:5:{s:4:"name";s:15:"Ativar anúncio";s:4:"desc";s:28:"Ativar o espaço do anúncio";s:2:"id";s:10:"woo_ad_top";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:99;a:5:{s:4:"name";s:15:"Código Adsense";s:4:"desc";s:77:"Digite seu código do adsense (ou outro código de rede de publicidade) aqui.";s:2:"id";s:18:"woo_ad_top_adsense";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:100;a:5:{s:4:"name";s:23:"Localização da Imagem";s:4:"desc";s:58:"Insira o URL para o local da imagem do anúncio em banner.";s:2:"id";s:16:"woo_ad_top_image";s:3:"std";s:40:"http://www.woothemes.com/ads/468x60b.jpg";s:4:"type";s:6:"upload";}i:101;a:5:{s:4:"name";s:14:"URL de destino";s:4:"desc";s:44:"Insira o URL para o qual este banner indica.";s:2:"id";s:14:"woo_ad_top_url";s:3:"std";s:24:"http://www.woothemes.com";s:4:"type";s:4:"text";}i:102;a:3:{s:4:"name";s:12:"Contact Page";s:4:"icon";s:4:"maps";s:4:"type";s:7:"heading";}i:103;a:2:{s:4:"name";s:19:"Contact Information";s:4:"type";s:10:"subheading";}i:104;a:6:{s:4:"name";s:32:"Enable Contact Information Panel";s:4:"desc";s:33:"Enable the contact informal panel";s:2:"id";s:17:"woo_contact_panel";s:3:"std";s:5:"false";s:5:"class";s:9:"collapsed";s:4:"type";s:8:"checkbox";}i:105;a:6:{s:4:"name";s:13:"Location Name";s:4:"desc";s:47:"Enter the location name. Example: London Office";s:2:"id";s:17:"woo_contact_title";s:3:"std";s:0:"";s:5:"class";s:6:"hidden";s:4:"type";s:4:"text";}i:106;a:6:{s:4:"name";s:16:"Location Address";s:4:"desc";s:28:"Enter your company\'s address";s:2:"id";s:19:"woo_contact_address";s:3:"std";s:0:"";s:5:"class";s:6:"hidden";s:4:"type";s:8:"textarea";}i:107;a:6:{s:4:"name";s:9:"Telephone";s:4:"desc";s:27:"Enter your telephone number";s:2:"id";s:18:"woo_contact_number";s:3:"std";s:0:"";s:5:"class";s:6:"hidden";s:4:"type";s:4:"text";}i:108;a:6:{s:4:"name";s:3:"Fax";s:4:"desc";s:21:"Enter your fax number";s:2:"id";s:15:"woo_contact_fax";s:3:"std";s:0:"";s:5:"class";s:11:"hidden last";s:4:"type";s:4:"text";}i:109;a:5:{s:4:"name";s:19:"Contact Form E-Mail";s:4:"desc";s:69:"Enter your E-mail address to use on the \'Contact Form\' page Template.";s:2:"id";s:21:"woo_contactform_email";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:110;a:5:{s:4:"name";s:21:"Your Twitter username";s:4:"desc";s:47:"Enter your Twitter username. Example: woothemes";s:2:"id";s:19:"woo_contact_twitter";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:111;a:5:{s:4:"name";s:28:"Enable Subscribe and Connect";s:4:"desc";s:75:"Enable the subscribe and connect functionality on the contact page template";s:2:"id";s:33:"woo_contact_subscribe_and_connect";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:112;a:2:{s:4:"name";s:4:"Maps";s:4:"type";s:10:"subheading";}i:113;a:5:{s:4:"name";s:36:"Contact Form Google Maps Coordinates";s:4:"desc";s:234:"Enter your Google Map coordinates to display a map on the Contact Form page template and a link to it on the Contact Us widget. You can get these details from <a href="http://itouchmap.com/latlong.html" target="_blank">Google Maps</a>";s:2:"id";s:26:"woo_contactform_map_coords";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:114;a:5:{s:4:"name";s:19:"Disable Mousescroll";s:4:"desc";s:112:"Turn off the mouse scroll action for all the Google Maps on the site. This could improve usability on your site.";s:2:"id";s:15:"woo_maps_scroll";s:3:"std";s:0:"";s:4:"type";s:8:"checkbox";}i:115;a:5:{s:4:"name";s:10:"Map Height";s:4:"desc";s:60:"Height in pixels for the maps displayed on Single.php pages.";s:2:"id";s:22:"woo_maps_single_height";s:3:"std";s:3:"250";s:4:"type";s:4:"text";}i:116;a:6:{s:4:"name";s:22:"Default Map Zoom Level";s:4:"desc";s:63:"Set this to adjust the default in the post & page edit backend.";s:2:"id";s:24:"woo_maps_default_mapzoom";s:3:"std";s:1:"9";s:4:"type";s:7:"select2";s:7:"options";a:20:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";i:7;s:1:"7";i:8;s:1:"8";i:9;s:1:"9";i:10;s:2:"10";i:11;s:2:"11";i:12;s:2:"12";i:13;s:2:"13";i:14;s:2:"14";i:15;s:2:"15";i:16;s:2:"16";i:17;s:2:"17";i:18;s:2:"18";i:19;s:2:"19";}}i:117;a:6:{s:4:"name";s:16:"Default Map Type";s:4:"desc";s:53:"Set this to the default rendered in the post backend.";s:2:"id";s:24:"woo_maps_default_maptype";s:3:"std";s:12:"G_NORMAL_MAP";s:4:"type";s:7:"select2";s:7:"options";a:4:{s:12:"G_NORMAL_MAP";s:6:"Normal";s:15:"G_SATELLITE_MAP";s:9:"Satellite";s:12:"G_HYBRID_MAP";s:6:"Hybrid";s:14:"G_PHYSICAL_MAP";s:7:"Terrain";}}i:118;a:5:{s:4:"name";s:16:"Map Callout Text";s:4:"desc";s:84:"Text or HTML that will be output when you click on the map marker for your location.";s:2:"id";s:21:"woo_maps_callout_text";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}}', 'yes'),
(299, 'woo_themename', 'Artificer', 'yes'),
(300, 'woo_shortname', 'woo', 'yes'),
(301, 'woo_manual', 'http://www.woothemes.com/support/theme-documentation/Artificer/', 'yes'),
(302, 'woo_custom_template', 'a:1:{i:0;a:6:{s:4:"name";s:7:"_layout";s:3:"std";s:6:"normal";s:5:"label";s:6:"Layout";s:4:"type";s:6:"images";s:4:"desc";s:54:"Select the layout you want on this specific post/page.";s:7:"options";a:4:{s:14:"layout-default";s:86:"http://localhost/wordpress/wp-content/themes/artificer/functions/images/layout-off.png";s:11:"layout-full";s:78:"http://localhost/wordpress/wp-content/themes/artificer/functions/images/1c.png";s:19:"layout-left-content";s:79:"http://localhost/wordpress/wp-content/themes/artificer/functions/images/2cl.png";s:20:"layout-right-content";s:79:"http://localhost/wordpress/wp-content/themes/artificer/functions/images/2cr.png";}}}', 'yes'),
(398, 'product_cat_children', 'a:0:{}', 'yes'),
(339, '_transient_product_query-transient-version', '1494888214', 'yes'),
(340, '_transient_product-transient-version', '1494888214', 'yes'),
(392, '_transient_timeout_wc_related_11', '1494974397', 'no'),
(393, '_transient_wc_related_11', 'a:0:{}', 'no'),
(304, '_transient_wooframework_version_data', 'a:2:{s:7:"version";s:5:"6.2.8";s:11:"is_critical";b:0;}', 'no'),
(305, '_transient_timeout_woo_framework_critical_update', '1495756353', 'no'),
(306, '_transient_woo_framework_critical_update', '1', 'no'),
(307, '_transient_timeout_woo_framework_critical_update_data', '1495756353', 'no'),
(308, '_transient_woo_framework_critical_update_data', 'a:3:{s:9:"is_update";b:0;s:7:"version";s:5:"1.0.0";s:6:"status";s:4:"none";}', 'no'),
(360, 'woo_body_attachment', 'scroll', 'yes'),
(361, 'woo_link_color', '', 'yes'),
(362, 'woo_link_hover_color', '', 'yes'),
(322, 'woocommerce_correios-pac_1_settings', 'a:23:{s:7:"enabled";s:3:"yes";s:5:"title";s:3:"PAC";s:16:"behavior_options";s:0:"";s:15:"origin_postcode";s:9:"65700-000";s:17:"shipping_class_id";s:2:"-1";s:18:"show_delivery_time";s:3:"yes";s:15:"additional_time";s:1:"0";s:3:"fee";s:0:"";s:17:"optional_services";s:0:"";s:14:"receipt_notice";s:3:"yes";s:9:"own_hands";s:2:"no";s:13:"declare_value";s:3:"yes";s:15:"service_options";s:0:"";s:11:"custom_code";s:0:"";s:12:"service_type";s:12:"conventional";s:5:"login";s:0:"";s:8:"password";s:0:"";s:16:"package_standard";s:0:"";s:14:"minimum_height";s:1:"2";s:13:"minimum_width";s:2:"11";s:14:"minimum_length";s:2:"16";s:7:"testing";s:0:"";s:5:"debug";s:2:"no";}', 'yes'),
(357, 'woo_body_img-id', '0', 'yes'),
(358, 'woo_body_repeat', 'no-repeat', 'yes'),
(359, 'woo_body_pos', 'top left', 'yes'),
(334, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=5";i:1;s:10:"/carrinho/";i:2;s:3:"p=6";i:3;s:18:"/finalizar-compra/";i:4;s:3:"p=7";i:5;s:13:"/minha-conta/";}', 'yes'),
(325, '_transient_timeout_wc_shipping_method_count_0_1494547425', '1497139464', 'no'),
(326, '_transient_wc_shipping_method_count_0_1494547425', '1', 'no'),
(327, 'woocommerce_gateway_order', 'a:5:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;s:9:"pagseguro";i:4;}', 'yes'),
(330, 'woocommerce_pagseguro_settings', 'a:20:{s:7:"enabled";s:3:"yes";s:5:"title";s:9:"PagSeguro";s:11:"description";s:19:"Pagar com PagSeguro";s:11:"integration";s:0:"";s:6:"method";s:8:"lightbox";s:7:"sandbox";s:2:"no";s:5:"email";s:22:"andrekrt1922@gmail.com";s:5:"token";s:32:"378F30AE36D64C4C993940A05028143A";s:13:"sandbox_email";s:0:"";s:13:"sandbox_token";s:0:"";s:20:"transparent_checkout";s:0:"";s:9:"tc_credit";s:3:"yes";s:11:"tc_transfer";s:3:"yes";s:9:"tc_ticket";s:3:"yes";s:17:"tc_ticket_message";s:3:"yes";s:8:"behavior";s:0:"";s:15:"send_only_total";s:2:"no";s:14:"invoice_prefix";s:3:"WC-";s:7:"testing";s:0:"";s:5:"debug";s:2:"no";}', 'yes'),
(422, '_transient_wc_term_counts', 'a:1:{i:15;s:1:"2";}', 'no'),
(333, 'woocommerce_correios-integration_settings', 'a:9:{s:8:"tracking";s:0:"";s:15:"tracking_enable";s:3:"yes";s:14:"tracking_debug";s:2:"no";s:18:"autofill_addresses";s:0:"";s:15:"autofill_enable";s:2:"no";s:17:"autofill_validity";s:7:"forever";s:14:"autofill_force";s:2:"no";s:23:"autofill_empty_database";s:0:"";s:14:"autofill_debug";s:2:"no";}', 'yes'),
(402, 'woo_logo', '', 'yes'),
(403, 'woo_logo-id', '0', 'yes'),
(404, 'woo_texttitle', 'true', 'yes'),
(352, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"2";s:14:"total_comments";i:2;s:3:"all";i:2;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(349, '_transient_timeout_wc_shipping_method_count_1_1494547425', '1497140717', 'no'),
(350, '_transient_wc_shipping_method_count_1_1494547425', '1', 'no'),
(421, '_transient_timeout_wc_term_counts', '1497480627', 'no'),
(401, 'woo_alt_stylesheet', 'default.css', 'yes'),
(355, 'woo_body_color', '#d3d3d3', 'yes'),
(356, 'woo_body_img', '', 'yes'),
(368, 'woo_display_store_info', 'false', 'yes'),
(369, 'woo_store_phone_number', '01234 567890', 'yes'),
(370, 'woo_store_email_address', 'info@yourstore.com', 'yes'),
(383, '_transient_wc_admin_report', 'a:1:{s:32:"6f5e17c4ed3ccd035b659c6bc60d152d";a:0:{}}', 'no'),
(399, '_transient_timeout_wc_related_18', '1494974644', 'no'),
(400, '_transient_wc_related_18', 'a:1:{i:0;s:2:"11";}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wppostmeta`
--

CREATE TABLE `wppostmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wppostmeta`
--

INSERT INTO `wppostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(5, 10, '_wp_trash_meta_status', 'publish'),
(6, 10, '_wp_trash_meta_time', '1494548398'),
(7, 11, '_wc_review_count', '1'),
(8, 11, '_wc_rating_count', 'a:1:{i:3;i:1;}'),
(9, 11, '_wc_average_rating', '3.00'),
(10, 11, '_edit_last', '1'),
(11, 11, '_edit_lock', '1494548751:1'),
(12, 12, '_wp_attached_file', '2017/05/286ea4c198c1.png'),
(13, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:688;s:4:"file";s:24:"2017/05/286ea4c198c1.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"286ea4c198c1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"286ea4c198c1-300x129.png";s:5:"width";i:300;s:6:"height";i:129;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:24:"286ea4c198c1-768x330.png";s:5:"width";i:768;s:6:"height";i:330;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"286ea4c198c1-1024x440.png";s:5:"width";i:1024;s:6:"height";i:440;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"286ea4c198c1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"286ea4c198c1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:24:"286ea4c198c1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(14, 13, '_wp_attached_file', '2017/05/kkiioi.png'),
(15, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1180;s:6:"height";i:1600;s:4:"file";s:18:"2017/05/kkiioi.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"kkiioi-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"kkiioi-221x300.png";s:5:"width";i:221;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:19:"kkiioi-768x1041.png";s:5:"width";i:768;s:6:"height";i:1041;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:19:"kkiioi-755x1024.png";s:5:"width";i:755;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"kkiioi-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"kkiioi-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:18:"kkiioi-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(16, 11, '_thumbnail_id', '12'),
(17, 11, '_layout', ''),
(18, 11, '_sku', ''),
(19, 11, '_regular_price', '1500'),
(20, 11, '_sale_price', '1499'),
(21, 11, '_sale_price_dates_from', ''),
(22, 11, '_sale_price_dates_to', ''),
(23, 11, 'total_sales', '0'),
(24, 11, '_tax_status', 'taxable'),
(25, 11, '_tax_class', ''),
(26, 11, '_manage_stock', 'no'),
(27, 11, '_backorders', 'no'),
(28, 11, '_sold_individually', 'no'),
(29, 11, '_weight', '12'),
(30, 11, '_length', ''),
(31, 11, '_width', ''),
(32, 11, '_height', ''),
(33, 11, '_upsell_ids', 'a:0:{}'),
(34, 11, '_crosssell_ids', 'a:0:{}'),
(35, 11, '_purchase_note', ''),
(36, 11, '_default_attributes', 'a:0:{}'),
(37, 11, '_virtual', 'no'),
(38, 11, '_downloadable', 'no'),
(39, 11, '_product_image_gallery', '13'),
(40, 11, '_download_limit', '-1'),
(41, 11, '_download_expiry', '-1'),
(42, 11, '_stock', NULL),
(43, 11, '_stock_status', 'instock'),
(44, 11, '_product_version', '3.0.6'),
(45, 11, '_price', '1499'),
(46, 14, '_order_key', 'wc_order_59150139ef2d9'),
(47, 14, '_customer_user', '1'),
(48, 14, '_payment_method', 'pagseguro'),
(49, 14, '_payment_method_title', 'PagSeguro'),
(50, 14, '_transaction_id', ''),
(51, 14, '_customer_ip_address', '::1'),
(52, 14, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.96 safari/537.36'),
(53, 14, '_created_via', 'checkout'),
(54, 14, '_date_completed', ''),
(55, 14, '_completed_date', ''),
(56, 14, '_date_paid', ''),
(57, 14, '_paid_date', ''),
(58, 14, '_cart_hash', '384e1e6f3c3f60de4f22e8c12a87da25'),
(59, 14, '_billing_first_name', 'njsdnj'),
(60, 14, '_billing_last_name', 'njfnfd'),
(61, 14, '_billing_company', ''),
(62, 14, '_billing_address_1', 'njnjd'),
(63, 14, '_billing_address_2', ''),
(64, 14, '_billing_city', 'nj'),
(65, 14, '_billing_state', 'MA'),
(66, 14, '_billing_postcode', '65700-000'),
(67, 14, '_billing_country', 'BR'),
(68, 14, '_billing_email', 'andrekrt1922@gmail.com'),
(69, 14, '_billing_phone', '898989'),
(70, 14, '_shipping_first_name', 'njsdnj'),
(71, 14, '_shipping_last_name', 'njfnfd'),
(72, 14, '_shipping_company', ''),
(73, 14, '_shipping_address_1', 'njnjd'),
(74, 14, '_shipping_address_2', ''),
(75, 14, '_shipping_city', 'nj'),
(76, 14, '_shipping_state', 'MA'),
(77, 14, '_shipping_postcode', '65700-000'),
(78, 14, '_shipping_country', 'BR'),
(79, 14, '_order_currency', 'BRL'),
(80, 14, '_cart_discount', '0'),
(81, 14, '_cart_discount_tax', '0'),
(82, 14, '_order_shipping', '64.62'),
(83, 14, '_order_shipping_tax', '0'),
(84, 14, '_order_tax', '0'),
(85, 14, '_order_total', '3062.62'),
(86, 14, '_order_version', '3.0.6'),
(87, 14, '_prices_include_tax', 'no'),
(88, 14, '_billing_address_index', 'njsdnj njfnfd  njnjd  nj MA 65700-000 BR andrekrt1922@gmail.com 898989'),
(89, 14, '_shipping_address_index', 'njsdnj njfnfd  njnjd  nj MA 65700-000 BR'),
(90, 14, '_shipping_method', 'a:1:{i:0;s:13:"correios-pac1";}'),
(91, 15, '_order_key', 'wc_order_591501718117d'),
(92, 15, '_customer_user', '1'),
(93, 15, '_payment_method', 'pagseguro'),
(94, 15, '_payment_method_title', 'PagSeguro'),
(95, 15, '_transaction_id', ''),
(96, 15, '_customer_ip_address', '::1'),
(97, 15, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.96 safari/537.36'),
(98, 15, '_created_via', 'checkout'),
(99, 15, '_date_completed', ''),
(100, 15, '_completed_date', ''),
(101, 15, '_date_paid', ''),
(102, 15, '_paid_date', ''),
(103, 15, '_cart_hash', '384e1e6f3c3f60de4f22e8c12a87da25'),
(104, 15, '_billing_first_name', 'njsdnj'),
(105, 15, '_billing_last_name', 'njfnfd'),
(106, 15, '_billing_company', ''),
(107, 15, '_billing_address_1', 'njnjd'),
(108, 15, '_billing_address_2', ''),
(109, 15, '_billing_city', 'nj'),
(110, 15, '_billing_state', 'MA'),
(111, 15, '_billing_postcode', '65700-000'),
(112, 15, '_billing_country', 'BR'),
(113, 15, '_billing_email', 'andrekrt1922@gmail.com'),
(114, 15, '_billing_phone', '99981161777'),
(115, 15, '_shipping_first_name', 'njsdnj'),
(116, 15, '_shipping_last_name', 'njfnfd'),
(117, 15, '_shipping_company', ''),
(118, 15, '_shipping_address_1', 'njnjd'),
(119, 15, '_shipping_address_2', ''),
(120, 15, '_shipping_city', 'nj'),
(121, 15, '_shipping_state', 'MA'),
(122, 15, '_shipping_postcode', '65700-000'),
(123, 15, '_shipping_country', 'BR'),
(124, 15, '_order_currency', 'BRL'),
(125, 15, '_cart_discount', '0'),
(126, 15, '_cart_discount_tax', '0'),
(127, 15, '_order_shipping', '64.62'),
(128, 15, '_order_shipping_tax', '0'),
(129, 15, '_order_tax', '0'),
(130, 15, '_order_total', '3062.62'),
(131, 15, '_order_version', '3.0.6'),
(132, 15, '_prices_include_tax', 'no'),
(133, 15, '_billing_address_index', 'njsdnj njfnfd  njnjd  nj MA 65700-000 BR andrekrt1922@gmail.com 99981161777'),
(134, 15, '_shipping_address_index', 'njsdnj njfnfd  njnjd  nj MA 65700-000 BR'),
(135, 15, '_shipping_method', 'a:1:{i:0;s:13:"correios-pac1";}'),
(136, 2, '_wp_trash_meta_status', 'publish'),
(137, 2, '_wp_trash_meta_time', '1494548922'),
(138, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(139, 4, '_edit_lock', '1494553535:1'),
(140, 1, '_edit_lock', '1494552373:1'),
(141, 1, '_wp_trash_meta_status', 'publish'),
(142, 1, '_wp_trash_meta_time', '1494552513'),
(143, 1, '_wp_desired_post_slug', 'ola-mundo'),
(144, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(145, 18, '_wc_review_count', '0'),
(146, 18, '_wc_rating_count', 'a:0:{}'),
(147, 18, '_wc_average_rating', '0'),
(148, 18, '_edit_last', '1'),
(149, 18, '_edit_lock', '1494888117:1'),
(150, 18, '_thumbnail_id', '13'),
(151, 18, '_layout', ''),
(152, 18, '_sku', ''),
(153, 18, '_regular_price', ''),
(154, 18, '_sale_price', ''),
(155, 18, '_sale_price_dates_from', ''),
(156, 18, '_sale_price_dates_to', ''),
(157, 18, 'total_sales', '0'),
(158, 18, '_tax_status', 'taxable'),
(159, 18, '_tax_class', ''),
(160, 18, '_manage_stock', 'no'),
(161, 18, '_backorders', 'no'),
(162, 18, '_sold_individually', 'no'),
(163, 18, '_weight', ''),
(164, 18, '_length', ''),
(165, 18, '_width', ''),
(166, 18, '_height', ''),
(167, 18, '_upsell_ids', 'a:0:{}'),
(168, 18, '_crosssell_ids', 'a:0:{}'),
(169, 18, '_purchase_note', ''),
(170, 18, '_default_attributes', 'a:0:{}'),
(171, 18, '_virtual', 'no'),
(172, 18, '_downloadable', 'no'),
(173, 18, '_product_image_gallery', ''),
(174, 18, '_download_limit', '-1'),
(175, 18, '_download_expiry', '-1'),
(176, 18, '_stock', NULL),
(177, 18, '_stock_status', 'instock'),
(178, 18, '_product_version', '3.0.6'),
(179, 18, '_price', ''),
(180, 20, '_edit_last', '1'),
(181, 20, '_wp_page_template', 'template-timeline.php'),
(182, 20, '_layout', 'layout-right-content'),
(183, 20, '_edit_lock', '1494888674:1'),
(184, 23, '_wp_trash_meta_status', 'publish'),
(185, 23, '_wp_trash_meta_time', '1494889850'),
(186, 24, '_wp_trash_meta_status', 'publish'),
(187, 24, '_wp_trash_meta_time', '1494889889'),
(188, 6, '_edit_lock', '1494890056:1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpposts`
--

CREATE TABLE `wpposts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpposts`
--

INSERT INTO `wpposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-05-11 20:44:43', '2017-05-11 23:44:43', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2017-05-11 22:28:33', '2017-05-12 01:28:33', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-05-11 20:44:43', '2017-05-11 23:44:43', 'Esta é uma página de exemplo. É diferente de um post porque ela ficará em um local e será exibida na navegação do seu site (na maioria dos temas). A maioria das pessoas começa com uma página de introdução aos potenciais visitantes do site. Ela pode ser assim:\n\n<blockquote>Olá! Eu sou um bike courrier de dia, ator amador à noite e este é meu blog. Eu moro em São Paulo, tenho um cachorro chamado Tonico e eu gosto de caipirinhas. (E de ser pego pela chuva.)</blockquote>\n\nou assim:\n\n<blockquote>A XYZ foi fundada em 1971 e desde então vem proporcionando produtos de qualidade a seus clientes. Localizada em Valinhos, XYZ emprega mais de 2.000 pessoas e faz várias contribuições para a comunidade local.</blockquote>\nComo um novo usuário do WordPress, você deve ir até o <a href="http://localhost/wordpress/wp-admin/">seu painel</a> para excluir essa página e criar novas páginas com seu próprio conteúdo. Divirta-se!', 'Página de Exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2017-05-11 21:28:42', '2017-05-12 00:28:42', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-05-11 20:48:12', '2017-05-11 23:48:12', '', 'Loja', '', 'publish', 'closed', 'closed', '', 'loja', '', '', '2017-05-11 20:48:12', '2017-05-11 23:48:12', '', 0, 'http://localhost/wordpress/loja/', 0, 'page', '', 0),
(5, 1, '2017-05-11 20:48:12', '2017-05-11 23:48:12', '[woocommerce_cart]', 'Carrinho', '', 'publish', 'closed', 'closed', '', 'carrinho', '', '', '2017-05-11 20:48:12', '2017-05-11 23:48:12', '', 0, 'http://localhost/wordpress/carrinho/', 0, 'page', '', 0),
(6, 1, '2017-05-11 20:48:12', '2017-05-11 23:48:12', '[woocommerce_checkout]', 'Finalizar compra', '', 'publish', 'closed', 'closed', '', 'finalizar-compra', '', '', '2017-05-11 20:48:12', '2017-05-11 23:48:12', '', 0, 'http://localhost/wordpress/finalizar-compra/', 0, 'page', '', 0),
(7, 1, '2017-05-11 20:48:12', '2017-05-11 23:48:12', '[woocommerce_my_account]', 'Minha conta', '', 'publish', 'closed', 'closed', '', 'minha-conta', '', '', '2017-05-11 20:48:12', '2017-05-11 23:48:12', '', 0, 'http://localhost/wordpress/minha-conta/', 0, 'page', '', 0),
(10, 1, '2017-05-11 21:19:58', '2017-05-12 00:19:58', '{\n    "blogname": {\n        "value": "ouro18kbacabal",\n        "type": "option",\n        "user_id": 1\n    },\n    "blogdescription": {\n        "value": "Uma loja especializada em joias de ouro 18k",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6877cf47-63e5-49d1-9815-7c2efcf90919', '', '', '2017-05-11 21:19:58', '2017-05-12 00:19:58', '', 0, 'http://localhost/wordpress/2017/05/11/6877cf47-63e5-49d1-9815-7c2efcf90919/', 0, 'customize_changeset', '', 0),
(11, 1, '2017-05-11 21:23:27', '2017-05-12 00:23:27', '', 'aliança', 'aliança de ouro 18k', 'publish', 'open', 'closed', '', 'alianca', '', '', '2017-05-11 21:23:27', '2017-05-12 00:23:27', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=11', 0, 'product', '', 1),
(12, 1, '2017-05-11 21:21:57', '2017-05-12 00:21:57', '', '286ea4c198c1', '', 'inherit', 'open', 'closed', '', '286ea4c198c1', '', '', '2017-05-11 21:21:57', '2017-05-12 00:21:57', '', 11, 'http://localhost/wordpress/wp-content/uploads/2017/05/286ea4c198c1.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2017-05-11 21:22:02', '2017-05-12 00:22:02', '', 'Alianças', '', 'inherit', 'open', 'closed', '', 'kkiioi', '', '', '2017-05-11 21:22:17', '2017-05-12 00:22:17', '', 11, 'http://localhost/wordpress/wp-content/uploads/2017/05/kkiioi.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2017-05-11 21:26:33', '2017-05-12 00:26:33', '', 'Order &ndash; maio 11, 2017 @ 09:26 PM', '', 'wc-cancelled', 'open', 'closed', 'order_59150139f1cd1', 'pedido', '', '', '2017-05-11 21:27:04', '2017-05-12 00:27:04', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=14', 0, 'shop_order', '', 1),
(15, 1, '2017-05-11 21:27:29', '2017-05-12 00:27:29', '', 'Order &ndash; maio 11, 2017 @ 09:27 PM', '', 'wc-cancelled', 'open', 'closed', 'order_5915017184653', 'pedido-2', '', '', '2017-05-11 21:28:00', '2017-05-12 00:28:00', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=15', 0, 'shop_order', '', 1),
(16, 1, '2017-05-11 21:28:42', '2017-05-12 00:28:42', 'Esta é uma página de exemplo. É diferente de um post porque ela ficará em um local e será exibida na navegação do seu site (na maioria dos temas). A maioria das pessoas começa com uma página de introdução aos potenciais visitantes do site. Ela pode ser assim:\n\n<blockquote>Olá! Eu sou um bike courrier de dia, ator amador à noite e este é meu blog. Eu moro em São Paulo, tenho um cachorro chamado Tonico e eu gosto de caipirinhas. (E de ser pego pela chuva.)</blockquote>\n\nou assim:\n\n<blockquote>A XYZ foi fundada em 1971 e desde então vem proporcionando produtos de qualidade a seus clientes. Localizada em Valinhos, XYZ emprega mais de 2.000 pessoas e faz várias contribuições para a comunidade local.</blockquote>\nComo um novo usuário do WordPress, você deve ir até o <a href="http://localhost/wordpress/wp-admin/">seu painel</a> para excluir essa página e criar novas páginas com seu próprio conteúdo. Divirta-se!', 'Página de Exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-05-11 21:28:42', '2017-05-12 00:28:42', '', 2, 'http://localhost/wordpress/2017/05/11/2-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-05-11 22:28:33', '2017-05-12 01:28:33', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-05-11 22:28:33', '2017-05-12 01:28:33', '', 1, 'http://localhost/wordpress/2017/05/11/1-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-05-15 19:43:33', '2017-05-15 22:43:33', '', 'testando', '', 'publish', 'open', 'closed', '', 'testando', '', '', '2017-05-15 19:43:33', '2017-05-15 22:43:33', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2017-05-15 19:43:41', '2017-05-15 22:43:41', '', 'testando', '', 'inherit', 'closed', 'closed', '', '18-autosave-v1', '', '', '2017-05-15 19:43:41', '2017-05-15 22:43:41', '', 18, 'http://localhost/wordpress/2017/05/15/18-autosave-v1/', 0, 'revision', '', 0),
(20, 1, '2017-05-15 19:51:14', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-15 19:51:14', '2017-05-15 22:51:14', '', 0, 'http://localhost/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2017-05-15 19:49:04', '2017-05-15 22:49:04', '', '', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-05-15 19:49:04', '2017-05-15 22:49:04', '', 20, 'http://localhost/wordpress/2017/05/15/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-05-15 19:59:54', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-05-15 19:59:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=22', 0, 'page', '', 0),
(23, 1, '2017-05-15 20:10:50', '2017-05-15 23:10:50', '{\n    "sidebars_widgets[primary]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e3269272-1000-488f-8b7f-279b69ce0c8b', '', '', '2017-05-15 20:10:50', '2017-05-15 23:10:50', '', 0, 'http://localhost/wordpress/?p=23', 0, 'customize_changeset', '', 0),
(24, 1, '2017-05-15 20:11:29', '2017-05-15 23:11:29', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_on_front": {\n        "value": "4",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '735fb07f-d2d5-4bcc-8ed6-98b5ecc1ba0e', '', '', '2017-05-15 20:11:29', '2017-05-15 23:11:29', '', 0, 'http://localhost/wordpress/?p=24', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpterm_relationships`
--

CREATE TABLE `wpterm_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpterm_relationships`
--

INSERT INTO `wpterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 15, 0),
(11, 2, 0),
(18, 15, 0),
(18, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpterm_taxonomy`
--

CREATE TABLE `wpterm_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpterm_taxonomy`
--

INSERT INTO `wpterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 2),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wptermmeta`
--

CREATE TABLE `wptermmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wptermmeta`
--

INSERT INTO `wptermmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'order', '0'),
(2, 15, 'product_count_product_cat', '2'),
(3, 15, 'display_type', ''),
(4, 15, 'thumbnail_id', '13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpterms`
--

CREATE TABLE `wpterms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpterms`
--

INSERT INTO `wpterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Anel', 'sem-categoria', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Alianças', 'aliancas', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpusermeta`
--

CREATE TABLE `wpusermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpusermeta`
--

INSERT INTO `wpusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'andre'),
(2, 1, 'first_name', 'njsdnj'),
(3, 1, 'last_name', 'njfnfd'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wpcapabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wpuser_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"c265edc4d0cd42ec377a3f4e3cef953f2898464531c4fed08aa31973dadf95af";a:4:{s:10:"expiration";i:1495060602;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1494887802;}}'),
(16, 1, 'wpdashboard_quick_press_last_post_id', '3'),
(17, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:0:{}}'),
(18, 1, 'wpuser-settings', 'libraryContent=browse&editor=tinymce'),
(19, 1, 'wpuser-settings-time', '1494553672'),
(20, 1, 'last_update', '1494548849'),
(21, 1, 'billing_first_name', 'njsdnj'),
(22, 1, 'billing_last_name', 'njfnfd'),
(23, 1, 'billing_address_1', 'njnjd'),
(24, 1, 'billing_city', 'nj'),
(25, 1, 'billing_state', 'MA'),
(26, 1, 'billing_postcode', '65700-000'),
(27, 1, 'billing_country', 'BR'),
(28, 1, 'billing_email', 'andrekrt1922@gmail.com'),
(29, 1, 'billing_phone', '99981161777'),
(30, 1, 'shipping_first_name', 'njsdnj'),
(31, 1, 'shipping_last_name', 'njfnfd'),
(32, 1, 'shipping_address_1', 'njnjd'),
(33, 1, 'shipping_city', 'nj'),
(34, 1, 'shipping_state', 'MA'),
(35, 1, 'shipping_postcode', '65700-000'),
(36, 1, 'shipping_country', 'BR'),
(38, 1, 'shipping_method', 'a:1:{i:0;s:13:"correios-pac1";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpusers`
--

CREATE TABLE `wpusers` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpusers`
--

INSERT INTO `wpusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'andre', '$P$BcCXYDhFh41iTpZ0NlhG.Ihv4zPBqZ0', 'andre', 'andrekrt1922@gmail.com', '', '2017-05-11 23:44:43', '', 0, 'njsdnj njfnfd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_api_keys`
--

CREATE TABLE `wpwoocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_attribute_taxonomies`
--

CREATE TABLE `wpwoocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_downloadable_product_permissions`
--

CREATE TABLE `wpwoocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_log`
--

CREATE TABLE `wpwoocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_order_itemmeta`
--

CREATE TABLE `wpwoocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpwoocommerce_order_itemmeta`
--

INSERT INTO `wpwoocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '11'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '2'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '2998'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '2998'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(10, 2, 'method_id', 'correios-pac1'),
(11, 2, 'cost', '64.62'),
(12, 2, 'total_tax', '0'),
(13, 2, 'taxes', 'a:1:{s:5:"total";a:1:{s:5:"total";a:0:{}}}'),
(14, 3, '_product_id', '11'),
(15, 3, '_variation_id', '0'),
(16, 3, '_qty', '2'),
(17, 3, '_tax_class', ''),
(18, 3, '_line_subtotal', '2998'),
(19, 3, '_line_subtotal_tax', '0'),
(20, 3, '_line_total', '2998'),
(21, 3, '_line_tax', '0'),
(22, 3, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(23, 4, 'method_id', 'correios-pac1'),
(24, 4, 'cost', '64.62'),
(25, 4, 'total_tax', '0'),
(26, 4, 'taxes', 'a:1:{s:5:"total";a:1:{s:5:"total";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_order_items`
--

CREATE TABLE `wpwoocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpwoocommerce_order_items`
--

INSERT INTO `wpwoocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'aliança', 'line_item', 14),
(2, 'PAC (Entrega em 5 dias úteis)', 'shipping', 14),
(3, 'aliança', 'line_item', 15),
(4, 'PAC (Entrega em 5 dias úteis)', 'shipping', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_payment_tokenmeta`
--

CREATE TABLE `wpwoocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_payment_tokens`
--

CREATE TABLE `wpwoocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_sessions`
--

CREATE TABLE `wpwoocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_shipping_zone_locations`
--

CREATE TABLE `wpwoocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpwoocommerce_shipping_zone_locations`
--

INSERT INTO `wpwoocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(2, 1, 'BR', 'country');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_shipping_zone_methods`
--

CREATE TABLE `wpwoocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpwoocommerce_shipping_zone_methods`
--

INSERT INTO `wpwoocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'correios-pac', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_shipping_zones`
--

CREATE TABLE `wpwoocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wpwoocommerce_shipping_zones`
--

INSERT INTO `wpwoocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Em toda parte', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_tax_rate_locations`
--

CREATE TABLE `wpwoocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wpwoocommerce_tax_rates`
--

CREATE TABLE `wpwoocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wpcommentmeta`
--
ALTER TABLE `wpcommentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpcomments`
--
ALTER TABLE `wpcomments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wplinks`
--
ALTER TABLE `wplinks`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wpoptions`
--
ALTER TABLE `wpoptions`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wppostmeta`
--
ALTER TABLE `wppostmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpposts`
--
ALTER TABLE `wpposts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wpterm_relationships`
--
ALTER TABLE `wpterm_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wpterm_taxonomy`
--
ALTER TABLE `wpterm_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wptermmeta`
--
ALTER TABLE `wptermmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpterms`
--
ALTER TABLE `wpterms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wpusermeta`
--
ALTER TABLE `wpusermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpusers`
--
ALTER TABLE `wpusers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wpwoocommerce_api_keys`
--
ALTER TABLE `wpwoocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wpwoocommerce_attribute_taxonomies`
--
ALTER TABLE `wpwoocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wpwoocommerce_downloadable_product_permissions`
--
ALTER TABLE `wpwoocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wpwoocommerce_log`
--
ALTER TABLE `wpwoocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wpwoocommerce_order_itemmeta`
--
ALTER TABLE `wpwoocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wpwoocommerce_order_items`
--
ALTER TABLE `wpwoocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wpwoocommerce_payment_tokenmeta`
--
ALTER TABLE `wpwoocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wpwoocommerce_payment_tokens`
--
ALTER TABLE `wpwoocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wpwoocommerce_sessions`
--
ALTER TABLE `wpwoocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wpwoocommerce_shipping_zone_locations`
--
ALTER TABLE `wpwoocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wpwoocommerce_shipping_zone_methods`
--
ALTER TABLE `wpwoocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wpwoocommerce_shipping_zones`
--
ALTER TABLE `wpwoocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wpwoocommerce_tax_rate_locations`
--
ALTER TABLE `wpwoocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wpwoocommerce_tax_rates`
--
ALTER TABLE `wpwoocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wpcommentmeta`
--
ALTER TABLE `wpcommentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wpcomments`
--
ALTER TABLE `wpcomments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wplinks`
--
ALTER TABLE `wplinks`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpoptions`
--
ALTER TABLE `wpoptions`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;
--
-- AUTO_INCREMENT for table `wppostmeta`
--
ALTER TABLE `wppostmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `wpposts`
--
ALTER TABLE `wpposts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wpterm_taxonomy`
--
ALTER TABLE `wpterm_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wptermmeta`
--
ALTER TABLE `wptermmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wpterms`
--
ALTER TABLE `wpterms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wpusermeta`
--
ALTER TABLE `wpusermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `wpusers`
--
ALTER TABLE `wpusers`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wpwoocommerce_api_keys`
--
ALTER TABLE `wpwoocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpwoocommerce_attribute_taxonomies`
--
ALTER TABLE `wpwoocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpwoocommerce_downloadable_product_permissions`
--
ALTER TABLE `wpwoocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpwoocommerce_log`
--
ALTER TABLE `wpwoocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpwoocommerce_order_itemmeta`
--
ALTER TABLE `wpwoocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `wpwoocommerce_order_items`
--
ALTER TABLE `wpwoocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wpwoocommerce_payment_tokenmeta`
--
ALTER TABLE `wpwoocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpwoocommerce_payment_tokens`
--
ALTER TABLE `wpwoocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpwoocommerce_sessions`
--
ALTER TABLE `wpwoocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `wpwoocommerce_shipping_zone_locations`
--
ALTER TABLE `wpwoocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wpwoocommerce_shipping_zone_methods`
--
ALTER TABLE `wpwoocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wpwoocommerce_shipping_zones`
--
ALTER TABLE `wpwoocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wpwoocommerce_tax_rate_locations`
--
ALTER TABLE `wpwoocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpwoocommerce_tax_rates`
--
ALTER TABLE `wpwoocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
