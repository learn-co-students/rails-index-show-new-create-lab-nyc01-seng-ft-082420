class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
        # render :index
      end
    
      def show 
        @coupon = Coupon.find(params[:id])
      end 
      
      def new 
        @coupon = Coupon.new
      end 
      
      def create
        coupon = Coupon.create(coupon_params)
        
        redirect_to coupons_path
      end 
    
      def edit 
        @coupon = coupon.find(params[:id])
      end 
      
      def update 
        @coupon = Coupon.find(params[:id])
        @coupon.update(coupon_params)
        
        redirect_to coupon_path(@coupon)
      end 
      
      def destroy 
        @coupon = Coupon.find(params[:id])
        @coupon.destroy
    
        redirect_to coupons_path
        
      end 
    
      private 
    
      def coupon_params 
        params.require(:coupon).permit(:coupon_code, :store)
      end 

end
