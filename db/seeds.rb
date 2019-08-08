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
  phone_number: '3456', 
  avatar: 'https://avatars3.githubusercontent.com/u/50977181'
)

user_3 = User.create!(
  username: 'simonchee', 
  phone_number: '7891', 
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

   
bookings = [
  { user_id: 1, apartment_id: 1, arrival_date: "2019/08/07", departure_date: "2019/08/24", total_price: 40, booking_status: false},
  { user_id: 2, apartment_id: 4, arrival_date: "2019/08/23", departure_date: "2019/09/01", total_price: 45, booking_status: true},
  { user_id: 3, apartment_id: 5, arrival_date: "2019/09/03", departure_date: "2019/09/12", total_price: 65, booking_status: false}
]
Booking.create!(bookings)







