class Artist < ActiveRecord::Base
  attr_accessible :bio, :image, :name
  has_many :movies
end
