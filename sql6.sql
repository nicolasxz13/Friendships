DELETE friendships FROM friendships 
INNER JOIN users on users.id = friendships.user_id 
LEFT JOIN users as user2 ON user2.id = friendships.friend_id
WHERE user2.id IS NOT NULL AND users.first_name = 'Eli' and concat(user2.first_name," ",user2.last_name) = 'Marky Mark'