-- modify "users" table
ALTER TABLE `users` ADD COLUMN `email` varchar(255) NOT NULL, ADD UNIQUE INDEX `email_unique` (`email`);
