# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Gamedetail.create!(gamename:"東方紅魔郷",difficulty:"Easy",character:"霊符霊夢")

require 'csv'

csv_data = CSV.read('db/gamedetails_with_header.csv', headers: true)
csv_data.each do |data|
  Gamedetail.create!(data.to_hash)
end

 User.create!(
   name:"下畑翔",
   email:"pontatanpo@hotmail.co.jp",
   password_digest:"password"
 )
