SELECT users.first_name, count(*) FROM users 
LEFT JOIN friendships ON friendships.user_id = users.id
LEFT JOIN users as user2 ON user2.id = friendships.friend_id
WHERE user2.id IS NOT NULL group by users.first_name