class CreateTableUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :login_name, null: false
      t.string :encrypted_password, null: false, default: ""
      t.string :user_name, null: false
      t.string :email, null: false
      t.string :address
      t.string :phone
      t.boolean :lock_flag, default: false
      t.datetime :last_log

      t.datetime :deleted_at
      t.timestamps null: false
    end
  end
end
