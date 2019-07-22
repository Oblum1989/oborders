class ProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    @products = Product.all.order(price: :asc)
  end
end
