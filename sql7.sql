SELECT user2.first_name as friend_first_name,user2.last_name as friend_last_name FROM users 
LEFT JOIN friendships ON friendships.user_id = users.id
LEFT JOIN users as user2 ON user2.id = friendships.friend_id
WHERE user2.id IS NOT NULL