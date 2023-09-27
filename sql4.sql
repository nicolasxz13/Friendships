INSERT INTO `sakila`.`users` (`id`, `first_name`, `last_name`, `created_at`) VALUES ('6', 'Juan', 'Pablo', '2023-09-21','2023-09-21 12:00:00');

INSERT INTO `sakila`.`friendships` (`id`,`user_id`, `friend_id`, `created_at`) VALUES ('7','6', '2', '2023-09-21 12:00:00');
INSERT INTO `sakila`.`friendships` (`id`,`user_id`, `friend_id`, `created_at`) VALUES ('8','6', '4', '2023-09-21 12:00:00');
INSERT INTO `sakila`.`friendships` (`id`,`user_id`, `friend_id`, `created_at`) VALUES ('9','6', '5', '2023-09-21 12:00:00');

SELECT users.first_name,users.last_name,user2.first_name as friend_first_name,user2.last_name as friend_last_name FROM users 
LEFT JOIN friendships ON friendships.user_id = users.id
LEFT JOIN users as user2 ON user2.id = friendships.friend_id
WHERE user2.id IS NOT NULL;