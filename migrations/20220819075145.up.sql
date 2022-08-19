-- create "orders" table
CREATE TABLE `orders` (`id` int NOT NULL, `user_id` int NOT NULL, `total` decimal(10) NOT NULL, PRIMARY KEY (`id`), INDEX `user_orders` (`user_id`), CONSTRAINT `user_orders` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
