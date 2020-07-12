class Api::UsersController < ApplicationController
  before_action :authenticate_user

  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    user = User.new(
      name: params[:name],
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @user = current_user
    @user.id = current_user.id
    @user.name = params[:name] || @user.name
    @user.username = params[:username] || @user.username
    @user.email = params[:email] || @user.email
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: 422
    end
  end

  def destroy
    @user = current_user
    if @user.destroy
      render "destroy.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: 422
    end
  end
end
