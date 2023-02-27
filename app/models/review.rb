class Review < ActiveRecord::Base
    belongs_to :product
    belongs_to :user

    #   enum star_rating: [:BAD, :POOR, :OKAY, :GOOD, :EXCELLENT]
    def print_all_reviews
        puts "Review for #{self.name} by #{self.name}: #{star_rating_before_type_cast}. #{comment}\n\n"
    end
end