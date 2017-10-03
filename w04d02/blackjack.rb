puts "Welcome to the Casino"
sleep 1
puts "YOUR HAND IS:"
sleep 1

# the Deck

def build_deck
	
	
	deck = []
	for num in 2..10
		deck.push( "#{num} of Hearts")
		deck.push( "#{num} of Spades")
		deck.push( "#{num} of Clubs")
		deck.push( "#{num} of Diamonds")
		

	end

	heads = ["Jack", "Queen", "King"]
    heads.select do |head|
        deck.push("#{head} of Spades")
        deck.push("#{head} of Clubs")
        deck.push("#{head} of Hearts")
        deck.push("#{head} of Diamonds")
        
    end
	deck
end
deck = build_deck()

# Shuffle

def shuffle_deck(deck)
	deck.shuffle!
end
shuffle_deck(deck)

# Deal Card

player_hand = []
computer_hand = []
hand = []

def deal_card(deck, hand)
	hand.push(deck.pop)	
end

# FIRST HAND

deal_card(deck, player_hand)
deal_card(deck, player_hand)
deal_card(deck, computer_hand)
deal_card(deck, computer_hand)
puts player_hand
sleep 1





# Check Bust

def card_value(string)
    value = string.split(' ')[0]
    if(value == "A")
        11
    elsif(value == "Jack" || value == "Queen" || value == "King")
        10
    else
        value.to_i
    end
end

def add_card_values(array)
    count = 0
    array.select do |card|
        count += card_value(card)
    end
    count
end

def check_bust(total)
    if(total > 21)
        true
    else
        false
    end
end

puts "Your total is #{add_card_values(player_hand)}, do you want to hit?"

check_bust(total)

def hit_question(player_hand, deck)
	if gets.chomp == "hit me"
		deal_card(deck, player_hand)
		
	end
end
def computer_hit(computer_hand, deck)
	if computer_hand << 16
		deal_card(deck, computer_hand)
	else
		puts "the computer has chosen to STICK with a hand of #{add_card_values(computer_hand)}"
		
	end
	
end
hit_question(player_hand, deck)
computer_hit(computer_hand, deck)
puts player_hand
puts computer_hand

#Win Logic


