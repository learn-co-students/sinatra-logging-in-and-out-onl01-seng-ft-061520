#rake db:create_migration NAME=create_users
class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.float :balance
    end
  end
end
