get '/game' do
  @decks = Deck.all
  erb :game
end

get '/game/:id' do
  @cards = Card.where(deck_id: params[:id]).sample(10)
  erb :play
end

post '/results' do
  @correct_answers = 0
  @wrong_answers = 0


  params[:card].each do |key, value|
    card = Card.find(key.to_i)
    if card.answer == value
      @correct_answers += 1
    else
      @wrong_answers += 1
    end
  end

  erb :results
end