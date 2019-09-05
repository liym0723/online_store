class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :sub_categroy_id, null: false
      t.string :name, null: false
      t.text :explanation
      t.integer :price, null: false
      t.integer :amount, null: false, default: 0
      t.text :phone
      t.integer :sold
      t.datetime :lock_time
      t.integer :status, null: false, default: 1


      t.datetime :deleted_at
      t.timestamps null: false
    end
  end
end
