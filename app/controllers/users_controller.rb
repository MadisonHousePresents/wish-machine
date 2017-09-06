class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users/new
  def new
    @user = User.new
    @wishes = Wish.where(approved: true).page(params[:page])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @wishes = Wish.where(approved: true).page(params[:page])

    if @user.save
      redirect_to root_path
      flash[:success] = "Your wish has been submitted."
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(
        :name,
        :phone,
        :email,
        :terms_accepted,
        wish_attributes: [
          :participant_requirement,
          :ef_fulfillment,
          :wish_reason
        ],
        wish: params[:user][:wish].try(:keys)
      )
    end


end