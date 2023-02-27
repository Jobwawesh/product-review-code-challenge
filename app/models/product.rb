class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews
end

def leave_review(user, star_rating, comment)
    Review.create(star_rating:star_rating, comment:comment, user:user, product:self)
end

def print_all_reviews
    reviews.each do |review|
        review.print_all_reviews
    end
end

def average_rating
end