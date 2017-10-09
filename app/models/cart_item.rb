class CartItem < ApplicationRecord
  belongs_to :cart
  def pre_total_price
  	self.price * self.amount
  end
end
