CREATE DATABASE `ums` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users_roles` (
  `user_id` int NOT NULL,
  `role_id` int DEFAULT NULL,
  KEY `role_fk_idx` (`role_id`),
  CONSTRAINT `role_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  CONSTRAINT `user_fk` FOREIGN KEY (`role_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `ums`.`user`(`user_id`, `name`, `password`, `user_type`) VALUES (1, `John`, `$2a$10$NNgkazsQreu9RCWeDLg6fuKdletAI2XYbtMFjhNl4pIQ7xtB4pAZy`, `mainstream`);
INSERT INTO `ums`.`user`(`user_id`, `name`, `password`, `user_type`) VALUES (2, `Alex`, `$2a$10$$2a$10$1pRfsG6BjSlrWrfsXEpZouvZ7W1ecHPZUauWbfldd7UHOS`, `marketplace`);
INSERT INTO `ums`.`user`(`user_id`, `name`, `password`, `user_type`) VALUES (3, `Stphen`, `$2a$10$6JZCCAzX1IRZJkpodyhEYOATzlP3pZVNSj1UtPvC1mBgKMqbr.yL2`, `consumer`);


INSERT INTO `ums`.`roles` (`role_id`,`name`,`code`) VALUES (1,'ADMIN','A');
INSERT INTO `ums`.`roles` (`role_id`,`name`,`code`) VALUES (2,'USER','U');
INSERT INTO `ums`.`roles` (`role_id`,`name`,`code`) VALUES (3,'STAFF','S');


INSERT INTO `ums`.`users_roles`(`user_id`,`role_id`) VALUES (1,1);
INSERT INTO `ums`.`users_roles`(`user_id`,`role_id`) VALUES (2,2);
INSERT INTO `ums`.`users_roles`(`user_id`,`role_id`) VALUES (3,3);
INSERT INTO `ums`.`users_roles`(`user_id`,`role_id`) VALUES (3,1);