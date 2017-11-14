class ItemsController < ApplicationController
  # GET /items
  # GET /items.json
  def index
    @items = current_user.items
  end

  def index_all
    @items = Item.all
    redirect_to user_items_path
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = current_user.items.find(params[:id])
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
    @item = current_user.items.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    item = Item.create(item_params)
    current_user.items << item
    show_page = user_item_path(current_user.id, item.id)
    redirect_to show_page
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    item = current_user.items.find(params[:id])
    item.update(item_params)
    show_page = user_item_path(current_user.id, item.id)
    redirect_to show_page
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    current_user.items.destroy(params[:id])
    redirect_to user_items_path
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :description, :location, :image, :available)
    end
end
