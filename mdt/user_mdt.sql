CREATE TABLE `users` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`identifier` int(11) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`mugshot_url` varchar(255) DEFAULT NULL,
	`bail` bit DEFAULT NULL,
	PRIMARY KEY (`id`)
);
CREATE TABLE `user_convictions` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`identifier` int(11) DEFAULT NULL,
	`offense` varchar(255) DEFAULT NULL,
	`count` int(11) DEFAULT NULL,
	PRIMARY KEY (`id`)
);
CREATE TABLE `mdt_reports` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`identifier` int(11) DEFAULT NULL,
	`title` varchar(255) DEFAULT NULL,
	`incident` longtext DEFAULT NULL,
	`charges` longtext DEFAULT NULL,
	`author` varchar(255) DEFAULT NULL,
	`name` varchar(255) DEFAULT NULL,
	`date` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`id`)
);
CREATE TABLE `mdt_warrants` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) DEFAULT NULL,
	`identifier` int(11) DEFAULT NULL,
	`report_id` int(11) DEFAULT NULL,
	`report_title` varchar(255) DEFAULT NULL,
	`charges` longtext DEFAULT NULL,
	`date` varchar(255) DEFAULT NULL,
	`expire` varchar(255) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`author` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`id`)
);


CREATE TABLE `owned_vehicles` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `owner` VARCHAR(46) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plate` VARCHAR(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle` LONGTEXT COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` VARCHAR(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'car',
  `job` VARCHAR(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stored` TINYINT(4) NOT NULL DEFAULT 0,
  `glovebox` LONGTEXT COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trunk` LONGTEXT COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stolen` BIT DEFAULT 0,
  `notes` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;