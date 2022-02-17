class MoviesController < ApplicationController
  def index
    @movie = Movie.all
    # raise
  end

  def new
    @movie = Movie.new
  end

  def create

  end
end
