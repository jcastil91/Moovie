class Movie < ActiveRecord::Base
  attr_accessible :description, :image, :name, :average_rating
  has_many :reviews
  
  validates :description, :presence => true
  validates :image, :presence => true
end
