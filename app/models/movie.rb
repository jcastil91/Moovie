class Movie < ActiveRecord::Base
  attr_accessible :description, :image, :name, :average_rating
  has_many :reviews
end
