class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  belongs_to :user
  belongs_to :place
  def sumtotal
  	total = 0
    self.cart_items.each do |item|
      total += item.price * item.amount
    end
    return total
  end
end
