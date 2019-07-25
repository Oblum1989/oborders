class Order < ApplicationRecord
	belongs_to :user
	belongs_to :customer
	has_many :order_products
	has_many :products, through: :order_products, dependent: :destroy

	def total
		details = self.order_products

		total = 0.0
		details.flat_map do |d|
			total += d.quantity * d.product.price
		end
		total
	end

	def total_iva
		details = self.order_products

		total = 0.0
		details.flat_map do |d|
			total += d.quantity * d.product.price
		end
		total
	end

end
