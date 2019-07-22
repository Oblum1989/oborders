class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  
  def index
    @customers = Customer.all.order(created_at: :desc)   
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def create  
    @customer = Customer.create(customer_params)
    if @customer.save 
      redirect_to customers_path, notice: "El cliente ha sido guardado exitosamente"
    else
      flash[:alert] = "El cliente no ha sido guardado, por favor repetir la operacion"
      render :new
    end
  end

  def edit
  end

  def update
    if @customer.update(customer_params)
      flash[:notice] = "El cliente fue editado correctamente"
      redirect_to customers_path    
    else
      render :edit  
    end
  end

  def destroy
    @customer.destroy
    flash[:notice] = "El cleinte se eliminó correctamente"
    redirect_to customers_path
  end

  private

    def customer_params
      params.require(:customer).permit(:name, :email, :addres, :celphone, :nit)
    end

    def set_customer
      @customer = Customer.find(params[:id])
    end

end