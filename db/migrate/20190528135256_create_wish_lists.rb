class CreateWishLists < ActiveRecord::Migration[5.2]
  def change
    create_table :wish_lists do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
