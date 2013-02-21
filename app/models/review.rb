class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  attr_accessible :content, :name, :rating, :user_id, :movie_id
  
  validates :user_id, :presence => true
  validates :rating, :presence => true
  validates :content, :presence => true
end
