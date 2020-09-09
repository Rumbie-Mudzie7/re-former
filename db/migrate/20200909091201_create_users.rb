class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.integer :password

      t.timestamps
    end
    add_index :users, :password, unique: true
  end
end
