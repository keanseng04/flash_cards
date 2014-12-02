class CreateUsers <ActiveRecord::Migration
    create_table :users do |t|
      t.string :email, :password
    end
end