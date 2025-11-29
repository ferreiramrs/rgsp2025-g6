class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
