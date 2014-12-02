class CreateGuesses <ActiveRecord::Migration
    create_table :guesses do |t|
      t.belongs_to :round
      t.belongs_to :card
      t.boolean :correct, null: false
    end

end