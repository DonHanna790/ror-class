class IceCream
  def initialize(type_1, price_1, type_2, price_2)
    @type_1 = type_1
    @price_1 = price_1
    @type_2 = type_2
    @price_2 = price_2
  end

  def print
    puts "#{@type_1} - $#{@price_1}\n#{@type_2} - $#{@price_2}"
  end
end

puts "Item 1: "
first_item = gets.chomp

puts "Item 1 - Price: "
first_item_price = gets.chomp

puts "Item 2: "
second_item = gets.chomp

puts "Item 2 - Price: "
second_item_price = gets.chomp

iceCream = IceCream.new(first_item, first_item_price, second_item, second_item_price)
puts iceCream.print 
