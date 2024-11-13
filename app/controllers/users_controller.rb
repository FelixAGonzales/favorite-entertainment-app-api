class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end
  
  def show
    # @user = User.find_by(id: params[:id] )
    # render :show
    render json: {
      id: current_user.id,
      name: current_user.name,
      email: current_user.email,
      image_url: current_user.image_url,
    }
  end




  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

end
