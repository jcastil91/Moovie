class MoviesController < ApplicationController
  def index
    @search = Movie.search(params[:q])
    @movies = @search.result
  end

  def show
    @movie = Movie.find(params[:id])
    
    @user = User.find(session[:user_id])
  end
  
end
