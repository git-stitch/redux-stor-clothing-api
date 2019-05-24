class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :categorie
      t.integer :price
      t.string :size
      t.string :url

      t.timestamps
    end
  end
end
