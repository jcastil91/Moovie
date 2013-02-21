class Movie < ActiveRecord::Base
  attr_accessible :description, :image, :name, :average_rating
  has_many :reviews
  
  validates :name, :presence => true
  validates :description, :presence => true
  validates :image, :presence => true
end
