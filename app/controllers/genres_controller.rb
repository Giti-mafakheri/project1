class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create genre_params
    redirect_to genres_path
  end

  def index
    @genre = Genre.all
  end
  private
  def genre_params
    params.require(:genre).permit(:name)
  end



end
