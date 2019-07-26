class Customer < ApplicationRecord
    belongs_to :user
    has_many :orders

    validates :name, :email, :celphone, :nit, :addres, presence: true
end
