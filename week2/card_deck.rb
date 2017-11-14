class Card
  attr_accessor :type, :strength
  def initialize(type, strength)
    @type = type
    @strength = strength
  end
end

class Deck
  attr_accessor :cards
  def initialize(cards)
    @cards = cards
  end

  def shuffle
    @cards.shuffle
  end

  def remove_last
    @cards.pop
  end

  def remove_first
    @cards.shift
  end
end

cards = [ Card.new("heart", 2), Card.new("spade", 10), Card.new("club", 9), Card.new("diamond", 5), Card.new("spade", 4), Card.new("heart", 8), Card.new("club", 10), Card.new("diamond", 10)]

deck = Deck.new(cards)

puts "Printing out the deck"
puts deck.cards
puts "shuffling the deck"
puts cards.shuffle
puts "removing the first card in the deck"
puts cards.shift
puts "printing out new deck"
puts deck.cards
puts "removing the last card in the deck"
puts cards.pop
puts "Printing out the new deck"
puts deck.cards 
