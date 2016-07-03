User.destroy_all
wayne = User.create(name: 'wayne', email: 'wayne@futureworkz.com', password: '123123123')
shawn = User.create(name: 'shawn', email: 'shawn@example.com', password: '123123123')

Comment.destroy_all
comment = Comment.create(user_id: wayne.id, message: 'Hello World')

reply_one = Comment.create(user_id: shawn.id, parent_id: comment.id, message: 'How you do it?')
reply_two = Comment.create(user_id: wayne.id, parent_id: reply_one.id, message: 'Just like that')
