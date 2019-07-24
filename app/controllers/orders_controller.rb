class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  
  def index
    @orders = Order.all.order(created_at: :desc)
  end

  def new
    @order = Order.new    
  end

  def create  
    @order = Order.create(order_params)
    @order.user = current_user
    if @order.save 
      redirect_to edit_order_path(@order), notice: "El pedido ha sido guardado exitosamente"
    else
      flash[:alert] = "El pedido no ha sido guardado, por favor repetir la operacion"
      render :new
    end
  end

  def update
    # if @order.update(order_params)
    #   flash[:notice] = "El pedido fue editado correctamente"
    #   redirect_to orders_path    
    # else
    #   render :edit  
    # end
  end
  
  def destroy
    @order.destroy
    flash[:notice] = "El pedido se eliminó correctamente"
    redirect_to orders_path
  end

  private

    def order_params
      params.require(:order).permit(:date, :status, :customer_id, :user_id)
    end

    def set_order
      @order = Order.find(params[:id])
    end

end
