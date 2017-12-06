first_set_of_cards = []
second_set_of_cards = []
third_set_of_cards = []
fourth_set_of_cards = []
hands = []

class Card
  attr_accessor :number, :suit

  def initialize(number, suit)
    @number = number
    @suit = suit
  end
end

class Hand
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end
end

class Determinor
  def initialize(play)
    @play = play
    @rank = []
  end

  def pick_the_best_hand
    @play.each_with_index do |hand, index|
      if royal_flush(hand)
        @rank << {index: index, ranking: 10}
        puts "added to royal flush"
        #puts @rank
      elsif straight_flush(hand)
        @rank << {index: index, ranking: 9}
        puts "added to straight flush"
        #puts @rank
      elsif four_of_a_kind(hand)
        @rank << {index: index, ranking: 8}
        puts "added to four_of_a_kind"
        #puts @rank
      elsif full_house(hand)
        @rank << {index: index, ranking: 7}
        puts "added to full_house"
        #puts @rank
      elsif flush(hand)
        @rank << {index: index, ranking: 6}
        puts "added to flush"
         #puts @rank
      elsif straight(hand)
        @rank << {index: index, ranking: 5}
        puts "added to straight"
        #puts @rank
      elsif three_of_a_kind(hand)
        @rank << {index: index, ranking: 4}
        puts "added to three_of_a_kind"
        #puts @rank
      elsif two_pair(hand)
        @rank << {index: index, ranking: 3}
        puts "added to two_pair"
        #puts @rank
      elsif one_pair(hand)
        @rank << {index: index, ranking: 2}
        puts "added to one_pair"
        #puts @rank
      elsif high_card(hand)
        @rank << {index: index, ranking: 1}
        puts "added to high_card"
        #puts @rank
      end
      winner
    end
  end

  private

  def royal_flush(hand)
    face_cards = {
      "j" => 11,
      "q" => 12,
      "k" => 13,
      "a" => 14
    }

    hand_suits = []
    hand_values = []

    hand.cards.each do |card|
      hand_suits << card.suit
      hand_values << card.number
    end

    sum = 0

    hand_values.each do |value|
      if value == 10
        sum = sum + 10
      elsif value == 11
        sum = sum + 11
      elsif value == 12
        sum = sum + 12
      elsif value == 13
        sum = sum + 13
      elsif value == 14
        sum = sum + 14
      end
    end

    if sum == 60 && hand_suits.all? {|x| x == hand_suits[0]}
      true
    else
      false
    end
  end

  def straight_flush(hand)
    hand_suits = []
    hand_values = []

    hand.cards.each do |card|
      hand_suits << card.suit
      hand_values << card.number
    end

    result = hand_values.sort.each_cons(2).all? {|x,y| y == x +1}

    if result && hand_suits.all? {|x| x == hand_suits[0]}
      true
    else
      false
    end
  end

  def four_of_a_kind(hand)
    hand_values = []
    hand.cards.each do |card|
      hand_values << card.number
    end

    result = hand_values.find_all{ |e| hand_values.count(e) == 4 }

    if result.length == 4
      true
    else
      false
    end
  end

  def full_house(hand)
    hand_values = []
    hand.cards.each do |card|
      hand_values << card.number
    end
    result1 = hand_values.find_all{ |e| hand_values.count(e) == 3 }
    result2 = hand_values.find_all{ |e| hand_values.count(e) == 2 }

    if result1.length == 3 && result2.length == 2
      true
    else
      false
    end
  end

  def flush(hand)
    hand_suits = []
    hand.cards.each do |card|
      hand_suits << card.suit
    end
    if hand_suits.all? {|x| x == hand_suits[0]}
      true
    else
      false
    end
  end

  def straight(hand)
    hand_values = []
    hand.cards.each do |card|
      hand_values << card.number
    end
    if hand_values.sort.each_cons(2).all? {|x,y| y == x +1}
      true
    else
      false
    end
  end

  def three_of_a_kind(hand)
    hand_values = []
    hand.cards.each do |card|
      hand_values << card.number
    end

    result = hand_values.find_all{ |e| hand_values.count(e) == 3 }

    if result.length == 3
      true
    else
      false
    end
  end

  def two_pair(hand)
    hand_values = []
    hand.cards.each do |card|
      hand_values << card.number
    end

    result1 = hand_values.find_all{ |e| hand_values.count(e) == 2 }
    result2 = hand_values.find_all{ |e| hand_values.count(e) == 2 }

    if result1.length == 2 && result2.length == 2
      true
    else
      false
    end
  end

  def one_pair(hand)
    hand_values = []
    hand.cards.each do |card|
      hand_values << card.number
    end

    result = hand_values.find_all{ |e| hand_values.count(e) == 2 }

    if result.length == 2
      true
    else
      false
    end
  end

  def high_card(hand)
    hand_values = []
    hand.cards.each do |card|
      hand_values << card.number
    end
  end

  def winner
    #@rank.index(@rank.min) try this as a secondary
     puts @rank.max_by{|r| r[:ranking]}
  end
 end

puts "Welcome to the Poker Hand Calculator"
puts "====**===="
puts "Player1"
5.times do
puts "Enter card suit:"
card_suit = gets.chomp
puts "Enter card value:"
card_value = gets.chomp.to_i
first_set_of_cards << Card.new(card_value, card_suit)
end

puts "====**===="
puts "Player2"
5.times do
puts "Enter card suit:"
card_suit = gets.chomp
puts "Enter card value:"
card_value = gets.chomp.to_i
second_set_of_cards << Card.new(card_value, card_suit)
end

puts "====**===="
puts "Player3"
5.times do
puts "Enter card suit:"
card_suit = gets.chomp
puts "Enter card value:"
card_value = gets.chomp.to_i
third_set_of_cards << Card.new(card_value, card_suit)
end

puts "====**===="
puts "Player4"
5.times do
puts "Enter card suit:"
card_suit = gets.chomp
puts "Enter card value:"
card_value = gets.chomp.to_i
fourth_set_of_cards << Card.new(card_value, card_suit)
puts "====**===="
end

first_hand = Hand.new(first_set_of_cards)
second_hand = Hand.new(second_set_of_cards)
third_hand = Hand.new(third_set_of_cards)
fourth_hand = Hand.new(fourth_set_of_cards)
hands = [first_hand, second_hand, third_hand, fourth_hand]
determinor = Determinor.new(hands)
determinor.pick_the_best_hand
