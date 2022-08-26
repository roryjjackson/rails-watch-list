class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  # def show
  #   @bookmark = Bookmark.find(params[:id])
  # end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])

    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to lists_path(@bookmark)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
