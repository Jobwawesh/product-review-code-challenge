class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

#   enum star_rating: [:BAD, :POOR, :OKAY, :GOOD,:EXCELLENT]
end