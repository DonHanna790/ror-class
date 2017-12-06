class Family
  def initialize(sibling1, sibling2, sibling3)
    @sibling1 = sibling1
    @sibling2 = sibling2
    @sibling3 = sibling3
  end

  def print
    puts "~~~~~~~~~~~~~~~~~~~~~~~\nHere is your family!\n#{@sibling1}\n#{@sibling2}\n#{@sibling3}"
end
end

puts "Enter first sibling"
user_input1 = gets.chomp

puts "Enter second sibling"
user_input2 = gets.chomp

puts "Enter third sibling"
user_input3 = gets.chomp

family = Family.new(user_input1, user_input2, user_input3)
puts family.print
