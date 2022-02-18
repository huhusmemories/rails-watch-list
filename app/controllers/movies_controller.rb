class MoviesController < ApplicationController
  def index
    @movie = Movie.all
    # raise
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)
    # raise
    if @movie.save
      redirect_to @movie, notice: 'Movie added to the list'
    else
      render :new
    end
  end


  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url)
  end
end
