class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.string :name
      t.decimal :price
      t.decimal :amount
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
