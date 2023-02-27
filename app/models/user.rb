class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def favorite_product
        max_value = reviews.maximum("star_rating")
        reviews.find_by(star_rating: max_value).product
    end

    def remove_reviews(product)
        reviews.destroy(reviews.where(product:product))
    end
end