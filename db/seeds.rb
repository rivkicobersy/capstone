# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "peter", email: "peter@test.com", password: "password", image_url: "https://media.istockphoto.com/id/1209654046/vector/user-avatar-profile-icon-black-vector-illustration.jpg?s=612x612&w=0&k=20&c=EOYXACjtZmZQ5IsZ0UUp1iNmZ9q2xl1BD1VvN6tZ2UI=")
User.create!(name: "jay", email: "jay@test.com", password: "password", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Emblem-person-blue.svg/1024px-Emblem-person-blue.svg.png")

Ingredient.create!(name: "flour", image_url: "https://www.thespruceeats.com/thmb/dKYZwtTOK8JcLiDCrvBrwTE5qDc=/1000x1000/smart/filters:no_upscale()/all_purpose_flour1_2-92747f05d2c7445d86fedae894c8c16e.jpg")
Ingredient.create!(name: "eggs", image_url: "https://images-prod.healthline.com/hlcmsresource/images/AN_images/health-benefits-of-eggs-1296x728-feature.jpg")
Ingredient.create!(name: "sugar", image_url: "https://www.msc.com/-/media/images/msc-cargo/sectors/agriculture/sugar/sugar.jpg")
Ingredient.create!(name: "chicken", image_url: "https://assets.epicurious.com/photos/5732526f1877f76a0e20831c/1:1/w_2560%2Cc_limit/EP_05102016_PeruvianStyleRoastChicken_recipe_.jpg")
Ingredient.create!(name: "bread crumbs", image_url: "https://www.checkers.co.za/medias/10155555EA-checkers515Wx515H?context=bWFzdGVyfGltYWdlc3wyNDY1MDF8aW1hZ2UvcG5nfGltYWdlcy9oNmQvaDBiLzg5Njc5MTkyMzkxOTgucG5nfDA4Y2FkM2E2NTUxN2MyZjk5MmFiZDJhMjU5MGNjNTM1MTE1MmFhZTVjMGRhYTgzMmU3NjIzZTgzZTU0YWVkZjc")
Ingredient.create!(name: "milk", image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/02/Glass-and-bottle-of-milk-fe0997a.jpg")
Ingredient.create!(name: "minced meat", image_url: "https://www.checkers.co.za/medias/10152009KG-checkers515Wx515H?context=bWFzdGVyfGltYWdlc3wzMDMxNTZ8aW1hZ2UvcG5nfGltYWdlcy9oM2UvaDAyLzg4NzY1ODg0MDA2NzAucG5nfDhiOTY3ZDMyNDE2ZDI1NjJkYjYwOTNjOGE3MDE1MDg2ZDIwN2VkZTJlMjllOWYwYTNjZGJhNDNmNDVkZDk0ODI")
Ingredient.create!(name: "onion", image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/the-health-benefits-of-onions-main-image-700-350-8425535.jpg")

PantryItem.create!(ingredient_id: 1, user_id: 1, amount: "5")
PantryItem.create!(ingredient_id: 2, user_id: 2, amount: "12")
PantryItem.create!(ingredient_id: 3, user_id: 2, amount: "3")
PantryItem.create!(ingredient_id: 4, user_id: 1, amount: "1")
PantryItem.create!(ingredient_id: 5, user_id: 1, amount: "4")
PantryItem.create!(ingredient_id: 6, user_id: 2, amount: "6")
PantryItem.create!(ingredient_id: 7, user_id: 2, amount: "9")
PantryItem.create!(ingredient_id: 8, user_id: 1, amount: "15")
