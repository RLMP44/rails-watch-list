class ListsController < ApplicationController
  before_action :set_list

  def index
    @list = List.new
  end

  def show
    @bookmark = Bookmark.new
    @list = @lists.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def destroy
    @list = @lists.find(params[:id])
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def set_list
    @lists = List.all
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
