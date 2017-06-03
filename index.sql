SOURCE bdd.sql
USE `development`;
SELECT `languages`.`name` AS `language`, `frameworks`.`name` AS `framework`
     FROM `frameworks`
     RIGHT JOIN `languages`
     ON `frameworks`.`languagesId` = `languages`.`id`;
SELECT `languages`.`name` AS `language`, `frameworks`.`name` AS `framework`
     FROM `frameworks`
     INNER JOIN `languages`
     ON `frameworks`.`languagesId` = `languages`.`id`;
SELECT `languages`.`name`, COUNT(`frameworks`.`id`)
     FROM `languages`
     INNER JOIN `frameworks`
     ON `languages`.`id` = `frameworks`.`languagesId`
     GROUP BY `languages`.`name`;
SELECT `languages`.`name`, COUNT(`frameworks`.`id`)
     FROM `languages`
     INNER JOIN `frameworks`
     ON `languages`.`id` = `frameworks`.`languagesId`
     GROUP BY `languages`.`name`
     HAVING COUNT(`frameworks`.`id`) > 3;
