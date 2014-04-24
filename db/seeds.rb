# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all
Comment.delete_all

post1 = Post.create!(title: 'Post 1', body: 'Desc Post 1')
post2 = Post.create!(title: 'Post 2', body: 'Desc Post 2')
post3 = Post.create!(title: 'Post 3', body: 'Desc Post 3')

Comment.create!(body: 'Comment 1', post: post1)
Comment.create!(body: 'Comment 2', post: post2)
Comment.create!(body: 'Comment 3', post: post3)