class CreateDecks <ActiveRecord::Migration
    create_table :decks do |t|
      t.string :title
    end
end