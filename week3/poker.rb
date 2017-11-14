class Deck
  attr_accessor :card
  def initialize(card)
    @card = card
  end
end

card = [2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A]
suit = ["spade", "club", "heart", "diamond"]


class Player
  def initialize(player1, player2, player3, player4)
    @player1 = player1
    @player2 = player2
    @player3 = player3
    @player4 = player4
  end
end

class Computer
  def initialize()

  end

  def deal
    puts "Player1's Hand" (card_rand(5),suit_rand(5))
    @player1 = gets.chomp
    puts "Player2's Hand" (card_rand(5),suit_rand(5))
    @player2 gets.chomp
    puts "Player3's Hand" (card_rand(5),suit_rand(5))
    @player3 = gets.chomp
    puts "Player4's Hand" (card_rand(5),suit_rand(5))
    @player4 = gets.chomp
  end

  #def solve
  #  if
#  end
end
