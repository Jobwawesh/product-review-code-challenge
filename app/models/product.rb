class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews


    def leave_review(user, star_rating, comment)
        self.reviews.create(star_rating: star_rating, comment: comment, user: user)
    end

    def print_all_reviews
        reviews.each do |review|
            review.print_all_reviews
        end
    end

    def average_rating
    end
end