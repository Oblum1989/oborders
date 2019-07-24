class OrderProductsController < ApplicationController
  before_action :set_order_product, only: []	

	def new
    @order_product = OrderProduct.new
    @dd = params[:order_id]
    
  end
  
  def create
    @order_product = OrderProduct.create(order_product_params)

    if @order_product.save 
      redirect_to edit_order_path(@order_product.order)
    else
      render :new
    end
  end

  private

    def order_product_params
      params.require(:order_product).permit(:order_id, :product_id, :quantity)
    end

    def set_order_product
      @order_product = OrderProduct.find(params[:order_id].to_i)
    end

end
