class CreateSubCategroy < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_categroys do |t|
      t.integer :main_catrgroy_id, null: false
      t.string :name, nill: false
      t.text :explanation
      t.integer :sort_no

      t.datetime :deleted_at
      t.timestamps null: false
    end
  end
end
