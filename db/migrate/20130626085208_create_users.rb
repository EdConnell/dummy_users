class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password
      #t.string :password_hash
      t.timestamps
    end
  end
end
