puts "Deleting old data..."
Product.destroy_all
User.destroy_all
Review.destroy_all


puts "Seeding data..."

# Creating  new users
5.times do 
    user =  User.create!(name: Faker::Name.name)
end

random_user = (1..10).to_a.sort{ raand() - 0.5}

5.times do 
    product = Product.create(name: Faker::Commerce.product_name)
    rand(1..10).times do |i|
        Review.create(
            star_rating: rand(1..5),
            comment: Faker::Lorem.sentence,
            product: product,
            user: random_user[i]
        )
    end
end


puts "Done seeding!"
