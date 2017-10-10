class AddPlaceToCarts < ActiveRecord::Migration[5.1]
  def change
    add_reference :carts, :place, foreign_key: true
  end
end
