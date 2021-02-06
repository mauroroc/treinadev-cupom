class PromotionsController < ApplicationController
    before_action :authenticate_user!#, only: [:index]

    def index
        @promotions = Promotion.all
    end

    def show
        id = params[:id]
        @promotion = Promotion.find(id)
    end

    def new
        @promotion = Promotion.new
    end

    def create
        @promotion = Promotion.new(promotion_params)
        @promotion.user = current_user 
        
        if @promotion.save
            redirect_to @promotion
        else
            render 'new'
        end
    end

    def generate_coupons
        @promotion = Promotion.find(params[:id])        
        @promotion.generate_coupons!
        redirect_to @promotion, notice: t('.success')
    end

    private
    def promotion_params
        params.require(:promotion).permit(:name, :description, :code, :discount_rate, :coupon_quantity, :expiration_date)
    end
end