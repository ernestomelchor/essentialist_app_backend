class Api::ItemsController < ApplicationController
  before_action :authenticate_user

  def index
    @items = current_user.items
    render "index.json.jb"
  end

  def show
    @item = current_user.items.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    item = Item.new(
      description: params[:description],
      list_id: params[:list_id],
      user_id: current_user.id,
    )
    if item.save
      render json: { message: "Item created successfully" }, status: :created
    else
      render json: { errors: item.errors.full_messages }, status: :bad_request
    end
  end
end
