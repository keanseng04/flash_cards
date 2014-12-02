class CreateRounds <ActiveRecord::Migration
    create_table :rounds do |t|
      t.belongs_to :user
      t.belongs_to :deck
      t.string :correct_answers, :wrong_answers
    end
end