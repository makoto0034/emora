# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Category.create(name:"食品")
Category.create(name:"家電")
Category.create(name:"オーディオ")
Category.create(name:"雑誌・書籍")
Category.create(name:"文房具")
Category.create(name:"スポーツ")
Category.create(name:"服")
Category.create(name:"キッチン用品")
Category.create(name:"コスメ・健康")
Category.create(name:"ペット・花・DIY")


Product.create(name:"髭剃り",price:1500,image:File.open("app/assets/images/product1.jpg"),category_id:2)
Product.create(name:"スマートウォッチ",price:3500,image:File.open("app/assets/images/product2.jpg"),category_id:2)
Product.create(name:"通学、通勤リュック",price:4500,image:File.open("app/assets/images/product3.jpg"),category_id:7)
Product.create(name:"枕",price:1500,image:File.open("app/assets/images/product4.jpg"),category_id:10)
Product.create(name:"髭剃り",price:1700,image:File.open("app/assets/images/product5.jpg"),category_id:2)
Product.create(name:"ワイヤレスイヤホン",price:5000,image:File.open("app/assets/images/product6.jpg"),category_id:3)
Product.create(name:"ゲーミングイヤホン",price:3500,image:File.open("app/assets/images/product7.jpg"),category_id:3)
