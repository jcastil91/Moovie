class Review < ActiveRecord::Base
  belongs_to :movie
  attr_accessible :content, :name, :rating
  has_many :artists
end
