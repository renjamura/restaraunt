class Cart < ApplicationRecord
  has_many :cart_items
  belongs_to :user, :place
  def sumtotal
  	total = 0
    self.cart_items.each do |item|
      total += item.price * item.amount
    end
    return total
  end
end
