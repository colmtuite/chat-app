# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Users
User.create! name: 'Colm Tuite', password: 'c', email: 'colmtuite@gmail.com'
User.create! name: 'David Tuite', password: 'c', email: 'dtuite@gmail.com'
User.create! name: 'Olimpia Vintan', password: 'c', email: 'olimpia@gmail.com'

# Chats
Chat.create! title: 'Find a gaf in Dublin', owner_email: 'colmtuite@gmail.com'
Chat.create! title: 'Fuck Olimpia in the ass', owner_email: 'colmtuite@gmail.com'
Chat.create! title: 'Move to San Fran', owner_email: 'dtuite@gmail.com'
Chat.create! title: 'Poker event', owner_email: 'olimpia@gmail.com'

# Comments
Comment.create! content: 'This is a comment from Colm', chat_id: '1', user_id: '1'
Comment.create! content: 'This is a comment from Colm', chat_id: '2', user_id: '1'
Comment.create! content: 'This is a comment from David', chat_id: '1', user_id: '2'
Comment.create! content: 'This is a comment from Olimpia', chat_id: '1', user_id: '3'
Comment.create! content: 'This is a comment from Colm', chat_id: '3', user_id: '1'
Comment.create! content: 'This is a comment from Colm', chat_id: '4', user_id: '1'