class CreateCards <ActiveRecord::Migration
    create_table :cards do |t|
      t.string :question, :answer
      t.belongs_to :deck
    end
end