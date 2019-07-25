class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  def subtotal
		subtotal = self.quantity * self.product.price
	end

end
