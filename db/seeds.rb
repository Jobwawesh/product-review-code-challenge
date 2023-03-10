# Erases previous records
puts "Deleting old data..."
Product.destroy_all
User.destroy_all
Review.destroy_all


puts "Seeding data..."

# # Creating  new users
# puts "Creating users..."
# 5.times do 
#     user =  User.create!(name: Faker::Name.name)
# end

# random_user = (1..10).to_a.sort{ rand() - 0.5}

# 5.times do 
#     product = Product.create(name: Faker::Commerce.product_name)
#     rand(1..10).times do |i|
#         Review.create(
#             star_rating: rand(1..5),
#             comment: Faker::Lorem.sentence,
#             product: product,
#             user: random_user[i]
#         )
#     end
# end

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)
user4 = User.create(name: Faker::Name.name)
user5 = User.create(name: Faker::Name.name)


puts "Creating products..."
product1 = Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price(range: 1000..4000, as_string: true))
product2 = Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price(range: 1000..4000, as_string: true))
product3 = Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price(range: 1000..4000, as_string: true))
product4 = Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price(range: 1000..4000, as_string: true))
product5 = Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price(range: 1000..4000, as_string: true))

puts "Creating reviews..."
review1 = Review.create(star_rating: 8, comment: "Great")
review2 = Review.create(star_rating: 9, comment: "Effective")
review3 = Review.create(star_rating: 6, comment: "Awesome")
review4 = Review.create(star_rating: 4, comment: "Disappointing")
review5 = Review.create(star_rating: 10, comment: "Excellent")

# PRODUCT reviews
product1.reviews << review2
product2.reviews << review4
product3.reviews << review3
product4.reviews << review5
product5.reviews << review1

# USER reviews
user1.reviews << review2
user2.reviews << review5
user3.reviews << review1
user4.reviews << review4
user5.reviews << review3


puts "Done seeding!"
