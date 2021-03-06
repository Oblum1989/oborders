class Product < ApplicationRecord
    has_many :order_products
    has_many :orders, through: :order_products, dependent: :destroy

    validates :name, :size, :packing, :price, presence: true
end
