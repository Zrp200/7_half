require "card_deck"
class CardDeck::Card # Main object used. Makes this a 'Card' game
	def value
		case num
			when "Ace" then 1
			when 2..7 then num.to_i
		else
			0.5
		end
	end
end
		
			
	
