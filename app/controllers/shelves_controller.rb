class ShelvesController < ApplicationController
  before_action :check_for_login
  def new
    @shelf = Shelf.new
 end
 def create
   shelf = Shelf.create shelf_params
   @current_user.shelves << shelf
   redirect_to shelves_path
 end
 def index
  @books = Book.all
 end
 private
 def shelf_params
   params.require(:shelf).permit(:title)
 end
end
