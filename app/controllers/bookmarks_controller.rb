class BookmarksController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
  end

  def create
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.category = @category
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end
end
