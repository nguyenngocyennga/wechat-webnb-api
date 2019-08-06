# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create!( 
  username: 'nganguyenny', 
  phone_number: '1234', 
  avatar: 'https://avatars0.githubusercontent.com/u/13482391'
)

user_2 = User.create!( 
  username: 'lunawhocodes', 
  phone_number: '1234', 
  avatar: 'https://avatars3.githubusercontent.com/u/50977181'
)

user_3 = User.create!(
  username: 'simonchee', 
  phone_number: '1234', 
  avatar: 'https://avatars2.githubusercontent.com/u/46372948'
)

apartments = [
  { title:'Heaven', city: 'Toyoko', address: 'Risonanakameguro Bldg, 2-16-13', user: user_1},
  { title:'Gardens', city: 'Kuala Lumpur',address: 'Jalan Sultan Ismail, 50250', user: user_1},
  { title:'Lakes', city: 'Hangzhou', address: '35# &36# B1F Raffles City No.228 Xin Ye Road', user: user_2},
  { title:'Good Food', city: 'Chengdu', address: '8 Middle Shamao St, Shu Yuan Jie', user: user_3},
  { title:'Heaven and Hell', city: 'Chengdu', address: 'Risonanakameguro Bldg, 2-16-13', user: user_3},
  { title:'Gardens', city: 'Kuala Lumpur',address: 'Jalan Sultan Ismail, 50250', user: user_1},
  { title:'Lakes', city: 'Hangzhou', address: '35# &36# B1F Raffles City No.228 Xin Ye Road', user: user_2},
  { title:'Good Food', city: 'Chengdu', address: '8 Middle Shamao St, Shu Yuan Jie', user: user_3}
]
Apartment.create!(apartments)