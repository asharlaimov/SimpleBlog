# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# rake db:seed

Post.delete_all
Comment.delete_all
User.delete_all
Tag.delete_all
PostTag.delete_all

admin = User.create(name: 'admin', password: 'admin', password_confirmation: 'admin', admin: true)
user1 = User.create(name: 'user1', password: 'user1', password_confirmation: 'user1')
user2 = User.create(name: 'user2', password: 'user2', password_confirmation: 'user2')
user3 = User.create(name: 'user3', password: 'user3', password_confirmation: 'user3', banned: true)

post1 = Post.create!(title: 'Post 1', body: 'Desc Post 1', user: admin)
post2 = Post.create!(title: 'Post 2', body: 'Desc Post 2', user: user1)
post3 = Post.create!(title: 'Post 3', body: 'Desc Post 3', user: user2)
post4 = Post.create!(title: 'Post 4', body: 'Desc Post 4', user: user3)

comment1 = Comment.create!(body: 'Comment 1', post: post1)
comment2 = Comment.create!(body: 'Comment 2', post: post2)
comment3 = Comment.create!(body: 'Comment 3', post: post3)

Tag.create!(title: 'tag1', posts: [post1, post2])
Tag.create!(title: 'tag2', posts: [post1])