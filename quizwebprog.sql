-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 05:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizwebprog`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '0001_01_01_000000_create_users_table', 1),
(32, '0001_01_01_000001_create_cache_table', 1),
(33, '0001_01_01_000002_create_jobs_table', 1),
(34, '2024_11_05_150509_create_writers_table', 1),
(35, '2024_11_05_150524_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `material` text NOT NULL,
  `viewCount` int(11) NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `postDate` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `category`, `summary`, `material`, `viewCount`, `writer_id`, `postDate`, `created_at`, `updated_at`) VALUES
(1, 'Human and Computer Interaction', 'Software Engineering', 'Corrupti excepturi animi laborum corporis aliquam aperiam. Nulla quod distinctio tenetur ut omnis temporibus est. Animi nihil qui odit voluptates aut. Quis id minima dolorem.', 'Iusto omnis fuga enim nulla nesciunt labore dolor. Commodi in quas id et sed. Voluptas sequi porro numquam ut. Necessitatibus earum ullam libero ullam perferendis molestias dignissimos dicta. Quis laboriosam itaque et consequuntur dicta dolores quidem.\n\nAd minima accusamus sequi saepe sequi commodi aliquam. Sed totam blanditiis mollitia saepe laborum totam.\n\nAut quisquam qui aut omnis est nihil. Sit qui quis iste eveniet officiis eius. Et inventore aut vero et omnis saepe.', 5, 2, '1984-11-04 02:14:19', '2024-11-07 07:50:54', '2024-11-07 09:05:16'),
(2, 'User Experience', 'Software Engineering', 'Odio praesentium sit laboriosam sequi labore inventore. Eligendi tenetur nesciunt est eos.', 'Sint nostrum eos labore odit et. Id et quo architecto harum est omnis suscipit voluptatum. Quidem quis sit non odit omnis.\n\nOmnis unde quis blanditiis quibusdam id optio et. Quo non et pariatur illum qui ex. Consequuntur fugiat sint corrupti in reiciendis.\n\nVel maxime quos deserunt rerum voluptatibus. Ad aut enim ipsa natus consequatur. Est blanditiis ducimus ea commodi et amet nulla qui.', 0, 1, '1971-10-31 21:46:06', '2024-11-07 07:50:54', '2024-11-07 07:50:54'),
(3, 'User Experience for Digital Immersive Technology', 'Software Engineering', 'Et molestiae laborum repellat minima. Quia voluptatem veritatis nihil repudiandae et provident delectus.', 'Nobis sit aut aut suscipit. Voluptatem natus repellat ea nesciunt.\n\nFacilis accusantium velit omnis ad qui repellendus. Minima eum nesciunt cupiditate et est cupiditate. Et ea aut et animi et harum. Dicta itaque voluptatum dolorum repellat consequatur commodi.\n\nVitae ut itaque quos et ratione est est. Dignissimos eius maxime eaque blanditiis sint fugit aut. Est quasi qui in quas nemo. Placeat quis officiis nam quae ut alias soluta provident.', 3, 3, '1998-11-09 23:19:20', '2024-11-07 07:50:54', '2024-11-07 08:42:42'),
(4, 'Pattern Software Design', 'Interactive Multimedia', 'Quasi aut rerum ut consequuntur magnam et. Tenetur ut nihil incidunt necessitatibus. Dolores sequi non eaque reiciendis neque dolor omnis.', 'Veniam et itaque voluptates cumque corrupti. Consequuntur dolorum nihil et voluptates. Eaque deserunt totam voluptate sed. Officia molestiae praesentium magnam quod facere. Sequi delectus ut omnis ea cumque voluptatem accusamus.\n\nEnim qui ab repudiandae sed repudiandae. Suscipit id aperiam voluptas optio at. Alias sit illo unde aut quos. Autem corporis molestiae quam consectetur et.\n\nEligendi eos voluptas blanditiis animi asperiores. Harum sit repudiandae quia rerum sed. A enim sapiente in fuga quisquam tempora.', 3, 2, '1992-08-09 19:32:12', '2024-11-07 07:50:54', '2024-11-07 08:40:28'),
(5, 'Agile Software Development', 'Interactive Multimedia', 'Possimus laboriosam non minima sit cum. Quia sequi vel ut aperiam modi. Fugit enim repellat amet ea dolores.', 'Similique sed voluptas odit sit. Et et recusandae quia nostrum. Illo expedita ut et sit provident.\n\nSed et molestiae ut sunt sint sint id. Ut eum voluptas voluptatem molestiae ullam fugiat. Eos ut consectetur eum id.\n\nVoluptas quibusdam nemo eum. Deserunt occaecati delectus velit est corporis aspernatur officia inventore. Cum qui id eaque hic enim.', 0, 2, '1986-10-07 14:53:21', '2024-11-07 07:50:54', '2024-11-07 07:50:54'),
(6, 'Code Reengineering.', 'Interactive Multimedia', 'Molestiae ut quam corporis placeat soluta sapiente. Officia voluptatem pariatur nam velit.', 'Sunt a aut qui. Ullam autem veniam soluta non eos aut ipsum. Recusandae consequatur excepturi qui ab optio rerum.\n\nAut sed aut voluptas quis quis quo. Sapiente est sed officia aut consequuntur id. Minima maiores architecto rem temporibus maxime fugit. Consequatur ab odit rerum odio temporibus sed nam.\n\nCorporis praesentium corrupti magni ut omnis asperiores pariatur. Autem voluptas magnam reiciendis impedit est. Sed eligendi nisi nihil quasi expedita perspiciatis. Et occaecati hic qui.', 0, 2, '1972-01-17 03:26:09', '2024-11-07 07:50:54', '2024-11-07 07:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('NONJ3XXcZiFIny6kiwt80Av6Et0W16CWmfpPkR7G', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3JBWjc2d0dQdnB4eGROc3ZiNDVub2VKNWdpRVZyaGZNRTNwSm5UYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730995519);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `imgUrl` text DEFAULT NULL,
  `job` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `imgUrl`, `job`, `created_at`, `updated_at`) VALUES
(1, 'Ratna Puspita', NULL, 'Seniman', '2024-11-07 07:50:54', '2024-11-07 07:50:54'),
(2, 'Gawati Hassanah', NULL, 'Kondektur', '2024-11-07 07:50:54', '2024-11-07 07:50:54'),
(3, 'Azalea Yulianti', NULL, 'Paraji', '2024-11-07 07:50:54', '2024-11-07 07:50:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
