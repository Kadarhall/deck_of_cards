def deck_o_cards
	values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
	suits = ['hearts', 'diamonds', 'clubs', 'spades']

	deck_o_cards = []

	suits.each do |suit|
		values.each do |value|
			deck_o_cards << {suit: suit, value: value}
		end
	end

	return deck_o_cards.shuffle
end

deck_size = deck_o_cards.length
top_card = deck_o_cards[0]

top_card_suit = top_card[:suit]
top_card_value = top_card[:value]

puts "The deck has #{deck_size} cards"
puts "The top card is the #{top_card_value} of #{top_card_suit}"