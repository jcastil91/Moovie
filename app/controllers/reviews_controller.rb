class ReviewsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.create!(params[:review])
    average = Review.average(:rating, :conditions => ['movie_id = ?', params[:movie_id]])
    Movie.update(params[:movie_id], :average_rating => average)
    redirect_to @review.movie, notice: "Review has been created."
  end
  
end
