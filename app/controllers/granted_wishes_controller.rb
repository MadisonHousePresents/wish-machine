class GrantedWishesController < ApplicationController
  before_action :set_granted_wish, only: [:show, :edit, :update, :destroy]

  # GET /granted_wishes
  # GET /granted_wishes.json
  def index
    @granted_wishes = GrantedWish.all.page(params[:page])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_granted_wish
      @granted_wish = GrantedWish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def granted_wish_params
      params.require(:granted_wish).permit(
        :winner, 
        :requirement, 
        :fulfillment, 
        :info
      )
    end
end
