-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table laravel_test.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_test.categories: ~5 rows (approximately)
DELETE FROM `categories`;
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(3, 'Php', NULL, NULL),
	(4, 'Javascript', NULL, NULL),
	(5, 'Golang', NULL, NULL),
	(6, 'C#', NULL, NULL),
	(7, 'Laravel', NULL, NULL),
	(8, 'React', NULL, NULL);

-- Dumping structure for table laravel_test.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_test.failed_jobs: ~2 rows (approximately)
DELETE FROM `failed_jobs`;
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
	(1, 'cc900345-12ee-46c2-920f-bd735269a47d', 'database', 'default', '{"uuid":"cc900345-12ee-46c2-920f-bd735269a47d","displayName":"App\\\\Jobs\\\\SendMail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"App\\\\Jobs\\\\SendMail","command":"O:17:\\"App\\\\Jobs\\\\SendMail\\":0:{}"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Expected response code "250" but got empty code. in C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php:316\nStack trace:\n#0 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(180): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->assertResponseCode(\'\', Array)\n#1 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(105): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand(\'MAIL FROM:<hell...\', Array)\n#2 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(237): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'MAIL FROM:<hell...\', Array)\n#3 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(197): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doMailFromCommand(\'hello@example.c...\')\n#4 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(136): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mailer\\SentMessage), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(285): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(211): Illuminate\\Mail\\Mailer->send(\'welcome\', Array, Object(Closure))\n#9 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(212): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(307): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\PostPublished))\n#13 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(505): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\PostPublished))\n#14 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#15 C:\\laragon\\www\\test-project-2\\app\\Jobs\\SendMail.php(35): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#16 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#17 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#18 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#19 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#20 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#21 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#22 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#23 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#24 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#26 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#27 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#28 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#30 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#31 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#32 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(150): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#35 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(134): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#36 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#37 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(178): Illuminate\\Container\\Container->call(Array)\n#42 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\console\\Command\\Command.php(308): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(148): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\console\\Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(111): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 C:\\laragon\\www\\test-project-2\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 {main}', '2022-12-27 01:38:45'),
	(2, '3f00d29d-1d08-4f53-809d-bfbfc89f5b21', 'database', 'default', '{"uuid":"3f00d29d-1d08-4f53-809d-bfbfc89f5b21","displayName":"App\\\\Jobs\\\\SendMail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"App\\\\Jobs\\\\SendMail","command":"O:17:\\"App\\\\Jobs\\\\SendMail\\":0:{}"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Expected response code "250" but got empty code. in C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php:316\nStack trace:\n#0 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(180): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->assertResponseCode(\'\', Array)\n#1 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(105): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand(\'MAIL FROM:<hell...\', Array)\n#2 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(237): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'MAIL FROM:<hell...\', Array)\n#3 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(197): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doMailFromCommand(\'hello@example.c...\')\n#4 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#5 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(136): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mailer\\SentMessage), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#6 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(285): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#8 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(211): Illuminate\\Mail\\Mailer->send(\'welcome\', Array, Object(Closure))\n#9 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(212): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(307): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\PostPublished))\n#13 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(505): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\PostPublished))\n#14 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#15 C:\\laragon\\www\\test-project-2\\app\\Jobs\\SendMail.php(35): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#16 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#17 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#18 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#19 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#20 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#21 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#22 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#23 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#24 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#26 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#27 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#28 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#30 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#31 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#32 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(150): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#35 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(134): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#36 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#37 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(178): Illuminate\\Container\\Container->call(Array)\n#42 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\console\\Command\\Command.php(308): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(148): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\console\\Application.php(1014): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\test-project-2\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(111): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\laragon\\www\\test-project-2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 C:\\laragon\\www\\test-project-2\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 {main}', '2022-12-27 05:41:15');

-- Dumping structure for table laravel_test.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_test.jobs: ~0 rows (approximately)
DELETE FROM `jobs`;

-- Dumping structure for table laravel_test.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_test.migrations: ~9 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(7, '2022_12_08_071906_create_posts_table', 2),
	(8, '2022_12_08_072021_create_categories_table', 2),
	(9, '2022_12_12_040415_add_posts_table', 3),
	(10, '2022_12_25_065802_add_posts_table', 4),
	(12, '2022_12_25_072605_add_users_table', 5),
	(13, '2022_12_26_093911_create_roles_table', 6),
	(14, '2022_12_26_094258_add_users_table', 7),
	(15, '2022_12_27_045945_create_jobs_table', 8);

-- Dumping structure for table laravel_test.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_test.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;

-- Dumping structure for table laravel_test.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_test.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table laravel_test.posts
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_test.posts: ~15 rows (approximately)
DELETE FROM `posts`;
INSERT INTO `posts` (`id`, `image`, `title`, `description`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(6, 'storage/uploads/1670837415_Screenshot 3.jpg', 'Ut in id elit id su', 'Ea sed in rerum porr', 5, '2022-12-12 03:30:16', '2022-12-12 03:30:16', NULL),
	(7, 'storage/uploads/1670847371_Screenshot 2.jpg', 'Autem do eos except', 'Ad aliqua Deserunt', 8, '2022-12-12 06:16:11', '2022-12-31 05:44:05', NULL),
	(8, 'storage/uploads/1670847381_new_image(1).jpg', 'Ut molestiae facere', 'At unde eius enim ha', 3, '2022-12-12 06:16:21', '2022-12-12 06:16:21', NULL),
	(9, 'storage/uploads/1670847407_Laravel-9.jpg', 'Perspiciatis veniam', 'Officia repudiandae', 7, '2022-12-12 06:16:47', '2022-12-12 06:24:02', '2022-12-12 06:24:02'),
	(10, 'storage/uploads/1670902542_Screenshot 3.jpg', 'Dolor officiis eos s', 'Omnis ea aut natus q', 5, '2022-12-12 21:35:42', '2022-12-12 21:35:42', NULL),
	(11, 'storage/uploads/1670902557_new_image(2).jpg', 'Tempora vero molesti', 'Voluptas aspernatur', 3, '2022-12-12 21:35:57', '2022-12-24 22:04:46', '2022-12-24 22:04:46'),
	(12, 'storage/uploads/1670902571_Laravel-9.jpg', 'Fuga Perspiciatis', 'Optio dignissimos q', 6, '2022-12-12 21:36:11', '2022-12-12 21:36:11', NULL),
	(13, 'storage/uploads/1670902586_Screenshot 2.jpg', 'Quis libero vel culp', 'Officia est irure au', 6, '2022-12-12 21:36:26', '2022-12-12 21:36:26', NULL),
	(14, 'storage/uploads/1670902607_Screenshot 3.jpg', 'Voluptate nisi omnis', 'Maiores iusto et dol', 6, '2022-12-12 21:36:47', '2022-12-12 21:36:47', NULL),
	(15, 'storage/uploads/1670902620_new_image(1).jpg', 'Nostrud sapiente ea', 'Quae molestiae volup', 5, '2022-12-12 21:37:00', '2022-12-12 21:37:00', NULL),
	(16, 'storage/uploads/1670902643_new_image.jpg', 'Est sed magna id exp', 'Aut quod iure corpor', 4, '2022-12-12 21:37:23', '2022-12-12 21:37:23', NULL),
	(17, 'storage/uploads/1670902658_Laravel-9.jpg', 'Mollit porro lorem o', 'Est maiores cum sin', 3, '2022-12-12 21:37:38', '2022-12-12 21:37:38', NULL),
	(18, 'storage/uploads/1672141066_Laravel-9.jpg', 'Qui est asperiores i', 'Nesciunt hic unde q', 5, '2022-12-27 05:37:46', '2022-12-27 05:37:46', NULL),
	(19, 'storage/uploads/1672141273_pankaj-patel-Fi-GJaLRGKc-unsplash.jpg', 'Dolores amet qui ma', 'Aperiam perspiciatis', 7, '2022-12-27 05:41:13', '2022-12-27 05:41:13', NULL),
	(20, 'storage/uploads/1672141341_new_image(2).jpg', 'Qui cupidatat obcaec', 'Rerum quia aut optio', 8, '2022-12-27 05:42:21', '2022-12-27 05:42:21', NULL);

-- Dumping structure for table laravel_test.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_test.roles: ~2 rows (approximately)
DELETE FROM `roles`;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', NULL, NULL),
	(2, 'Writer', NULL, NULL),
	(3, 'User', NULL, NULL);

-- Dumping structure for table laravel_test.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_test.users: ~3 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `role_id`) VALUES
	(1, 'test user', 'test@gmail.com', NULL, '$2y$10$oW9d.PwzS2rIRnycYhfB0.u0WIwjenIyWo0XuMJrqeChTeOLzoIuG', NULL, '2022-12-22 06:11:26', '2022-12-22 06:11:26', 1, 2),
	(2, 'Nyssa Simon', 'suky@mailinator.com', NULL, '$2y$10$oW9d.PwzS2rIRnycYhfB0.u0WIwjenIyWo0XuMJrqeChTeOLzoIuG', NULL, '2022-12-23 22:36:25', '2022-12-23 22:36:25', 0, 3),
	(3, 'new user', 'user@gmail.com', NULL, '$2y$10$VMjojnV6SvwFQodhvZTUVOwdHJ8QXSilb.Uf3S2tv0VICOcSvxrxa', NULL, '2022-12-25 01:49:14', '2022-12-25 01:49:14', 1, 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
