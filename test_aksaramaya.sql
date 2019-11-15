-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2019 at 08:43 
-- Server version: 10.1.41-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_aksaramaya`
--

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_11_14_122622_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('075ff64b89f060eab693a54cffdadc7d0a7dff6ad21c39b90f201161026f7acd23c9253072fbf455', 1, 1, 'MyApp', '[]', 0, '2019-11-14 22:17:47', '2019-11-14 22:17:47', '2020-11-15 05:17:47'),
('255e45fd57dee7322cb0889e2fe2aaa59526508a3c28f82301619cbfda22ae820442724308078fed', 1, 1, 'MyApp', '[]', 0, '2019-11-14 22:13:04', '2019-11-14 22:13:04', '2020-11-15 05:13:04'),
('303d9823dc90a40fdea76fa9c7aae4fca4dfb91f34541476c7edfdb0ffb309a4573f735cc1166bab', 2, 1, 'MyApp', '[]', 1, '2019-11-14 07:19:27', '2019-11-14 07:19:27', '2020-11-14 14:19:27'),
('3148a8c2dfa5f81786b6aba8330901ec16f1f30d171c02d9ba0f6c6bf4da2f399ab5598c61f9413c', 1, 1, 'MyApp', '[]', 0, '2019-11-15 05:03:55', '2019-11-15 05:03:55', '2020-11-15 12:03:55'),
('36146a8ff2418b160fb47baf47da7de188f0c244d7515b438a7af5af2d1a4228362d9d9958cc0ddf', 1, 1, 'MyApp', '[]', 0, '2019-11-15 05:36:29', '2019-11-15 05:36:29', '2020-11-15 12:36:29'),
('3a06f76d0b691a2307458957ffd071e1e2ff5715ca69b342a8bad1b3a7235876325e10a2121b5398', 1, 1, 'MyApp', '[]', 0, '2019-11-15 02:50:18', '2019-11-15 02:50:18', '2020-11-15 09:50:18'),
('3c97f1d0ebaa89df9a7230cdd90eed9a14ed349a4aefc29d0e6e599c58eb3b2da8fdc3f662ac32b4', 1, 1, 'MyApp', '[]', 0, '2019-11-14 20:44:01', '2019-11-14 20:44:01', '2020-11-15 03:44:01'),
('4f1c56707d9e78029a34e849fda3997275318776e0bdebe69fdad123c6f3a3e2f9e33e0d10a6b074', 1, 1, 'MyApp', '[]', 0, '2019-11-14 22:15:26', '2019-11-14 22:15:26', '2020-11-15 05:15:26'),
('6f2d46ca7f774505ea363376cd0c478f310c9d5e50e00098bfd388149a4619aa58f5749b5bf8fe90', 1, 1, 'MyApp', '[]', 0, '2019-11-14 21:33:21', '2019-11-14 21:33:21', '2020-11-15 04:33:21'),
('8c3038913382f22ffa5ba55d07a9292badd9043988f13390b0d8f078cbf8d8f769cab515cfa9840b', 2, 1, 'MyApp', '[]', 1, '2019-11-14 07:16:50', '2019-11-14 07:16:50', '2020-11-14 14:16:50'),
('9e6f18f9374e26334ecb7c0325d0eaffb29ceb50a5f815a183c6fd76ed8e71047b540416011f8cbd', 1, 1, 'MyApp', '[]', 0, '2019-11-15 00:32:49', '2019-11-15 00:32:49', '2020-11-15 07:32:49'),
('a18e75806cd4a258b830ac96bb76faf405e3215146edf07b9e302d7404f828b100c8972ea446b5f3', 1, 1, 'MyApp', '[]', 0, '2019-11-14 21:48:22', '2019-11-14 21:48:22', '2020-11-15 04:48:22'),
('a7340f8c87dbe6635876a4e486e2d02767701b3008cd618c64ac3aa3550ad6677930bf40cdd8df63', 1, 1, 'MyApp', '[]', 0, '2019-11-14 22:08:49', '2019-11-14 22:08:49', '2020-11-15 05:08:49'),
('bc1c7b835af6491aedaa5629e235a4538e64a7a43f7924b89be13cfab28143e710d333e1a0988889', 1, 1, 'MyApp', '[]', 0, '2019-11-14 23:34:04', '2019-11-14 23:34:04', '2020-11-15 06:34:04'),
('cab58704f89151cb216a70347516cadc1664b4da9a1a245d5e00f91b633eb7e08f6acbc605b6b0ed', 1, 1, 'MyApp', '[]', 0, '2019-11-14 22:28:39', '2019-11-14 22:28:39', '2020-11-15 05:28:39'),
('df62803506f67cc410b00e15ea34f912d06f731f539b75ced3cea702b1afd6025aedb4a0149b1e44', 1, 1, 'MyApp', '[]', 0, '2019-11-14 21:20:46', '2019-11-14 21:20:46', '2020-11-15 04:20:46'),
('eb5e081be27d9d1d90b193b7c90c89159c275cc053e3a4809546d437525493249b27934ac8d55738', 1, 1, 'MyApp', '[]', 0, '2019-11-14 22:16:49', '2019-11-14 22:16:49', '2020-11-15 05:16:49'),
('f2893cddb957175d1c4be3459b02abcc406eb78c56b54d824848c710a1032f36dddac4189a0467d3', 1, 1, 'MyApp', '[]', 0, '2019-11-14 05:49:16', '2019-11-14 05:49:16', '2020-11-14 12:49:16'),
('fb144ed2ea9fd31e669207eca342affe2587337de6318a0a687384888e91b28f90175b39e15d03e4', 1, 1, 'MyApp', '[]', 0, '2019-11-14 22:13:59', '2019-11-14 22:13:59', '2020-11-15 05:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'bLF7kQfsi3mQC7pD6iz2uqbuzZtQmy1kwRL1eyzM', 'http://localhost', 1, 0, 0, '2019-11-14 05:22:20', '2019-11-14 05:22:20'),
(2, NULL, 'Laravel Password Grant Client', '7vBS2BetN2zojVsetMzbkAwMB6q5ckQaA0G54DJ9', 'http://localhost', 0, 1, 0, '2019-11-14 05:22:20', '2019-11-14 05:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-11-14 05:22:20', '2019-11-14 05:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(2, 'test1 product', 'hEre detail', '2019-11-14 22:42:26', '2019-11-14 22:42:26'),
(3, 'test3', 'hehehe nice', '2019-11-15 05:26:22', '2019-11-15 05:26:38'),
(4, 'coba lgi', 'nih mantep', '2019-11-15 05:33:20', '2019-11-15 05:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test1', 'test1@mail.com', NULL, '$2y$10$7R875AJoWwljMMFUDHa5huINJFgm2muRa.L0J6rHtcUqK8L33l/cq', NULL, '2019-11-14 05:49:16', '2019-11-14 05:49:16'),
(2, 'test2', 'test2@mail.com', NULL, '$2y$10$T8SGJZdwnbSwH7As75wi9OtPTAk2UsswJ7zJjzyJHSfYTpB7MbMRO', NULL, '2019-11-14 07:16:50', '2019-11-14 07:16:50');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
