-- reverse: modify "users" table
ALTER TABLE `users` DROP INDEX `email_unique`, DROP COLUMN `email`;
