# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 Difficulity1.create!(difficult:"Easy")
 Difficulity1.create!(difficult:"Normal")
 Difficulity1.create!(difficult:"Hard")
 Difficulity1.create!(difficult:"Lunatic")
 Difficulity1.create!(difficult:"Extra")

 Difficulity2.create!(difficult:"Easy")
 Difficulity2.create!(difficult:"Normal")
 Difficulity2.create!(difficult:"Hard")
 Difficulity2.create!(difficult:"Lunatic")
 Difficulity2.create!(difficult:"Extra")
 Difficulity2.create!(difficult:"Phantasm")


  CharaKomakyo.create!(character:"霊符霊夢")
  CharaKomakyo.create!(character:"夢符霊夢")
  CharaKomakyo.create!(character:"魔符魔理沙")
  CharaKomakyo.create!(character:"恋符魔理沙")

  CharaYoyomu.create!(character:"霊符霊夢")
  CharaYoyomu.create!(character:"夢符霊夢")
  CharaYoyomu.create!(character:"魔符魔理沙")
  CharaYoyomu.create!(character:"恋符魔理沙")
  CharaYoyomu.create!(character:"幻符咲夜")
  CharaYoyomu.create!(character:"時符咲夜")


 User.create!(
   name:"下畑翔",
   email:"pontatanpo@hotmail.co.jp",
   password:"password"
 )
