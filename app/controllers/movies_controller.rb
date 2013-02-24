class MoviesController < ApplicationController
  def index
    @search = Movie.search(params[:q])
    @movies = @search.result
  end

  def show
    @movie = Movie.find(params[:id])
    
    if session[:user_id] 
	  @user = User.find(session[:user_id])
	else 
	  @user = User.new(:name => "Not Logged In")
	end
  end
  
end
