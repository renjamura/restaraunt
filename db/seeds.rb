# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    
   
    user_admin = User.create(name:"Murat",email:"renja@gmail.com",password:"123",password_confirmation:"123",admin:'true')
    user_first = User.create(name:"Renja",email:"rango@gmail.com",password:"123",password_confirmation:"123",admin:'false')
	user_second = User.create(name:"Dizz",email:"tango@gmail.com",password:"123",password_confirmation:"123",admin:'false')

	place_first = Place.create(name:"Barashek",description:"National kyrgyz food",image: File.new("public/uploads/barashek.jpg"))
	place_second = Place.create(name:"KFC",description:"Kyrgyz fried chicken",image: File.new("public/uploads/kfc.jpg"))


	dish_first = Dish.create(name:"Plov",price:"200",description:"fried rice",place_id:place_first.id)
	dish_second = Dish.create(name:"Manty",price:"50",description:"dumplinks",place_id:place_first.id)
	dish_third = Dish.create(name:"Chai",price:"40",description:"ceylon tea",place_id:place_first.id)

	dish_forth = Dish.create(name:"Burger",price:"120",description:"chicken burger",place_id:place_second.id)
	dish_fifth = Dish.create(name:"Pizza",price:"230",description:"chicken pizza",place_id:place_second.id)