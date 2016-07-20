class User < ActiveRecord::Migration
  def change
    create_table :user do |t|
      t.string :email
      t.string :first_name
      t.string :password_digest
    end
  end
end
