class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  attr_accessible :content, :name, :rating, :user_id
end
