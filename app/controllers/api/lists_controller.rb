class Api::ListsController < ApplicationController
  before_action :authenticate_user

  def index
    @lists = current_user.lists
    render "index.json.jb"
  end

  def show
    @list = current_user.lists.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    list = List.new(
      name: params[:name],
      user_id: current_user.id,
    )
    if list.save
      render json: { message: "List created successfully" }, status: :created
    else
      render json: { errors: list.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @list = current_user.lists.find_by(id: params[:id])
    @list.name = params[:name] || @list.name
    @list.user_id = current_user.id
    if @list.save
      render "show.json.jb"
    else
      render json: { errors: @list.errors.full_messages }, status: 422
    end
  end

  def destroy
    @list = current_user.lists.find_by(id: params[:id])
    if @list.destroy
      render "destroy.json.jb"
    else
      render json: { errors: @list.errors.full_messages }, status: 422
    end
  end
end
