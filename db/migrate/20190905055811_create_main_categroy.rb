class CreateMainCategroy < ActiveRecord::Migration[5.2]
  def change
    create_table :main_categroys do |t|
      t.integer :categroy_type, null: false
      t.string :name, null: false
      t.boolean :is_show, null: false, default: true
      t.integer :sort_no
      t.text :explanation

      t.datetime :deleted_at
      t.timestamps null: false
    end
  end
end
