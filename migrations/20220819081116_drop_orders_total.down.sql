-- reverse: modify "orders" table
ALTER TABLE `orders` ADD COLUMN `total` decimal(10) NOT NULL;
