class Celsius
  def initialize(user_input)
    @user_input = user_input
  end

 def converter
   result = (1.8 * @user_input.to_i) + 32
   puts "Celsius to Fahrenheit- #{@user_input} ====> #{result}"
   fahrenheit = Fahrenheit.new(@user_input)
   fahrenheit.converter
 end
end

class Fahrenheit
  def initialize(user_input)
    @user_input = user_input
  end

  def converter
    result = (@user_input.to_i / 1.8) - 32
    puts "Fahrenheit to Celsius- #{@user_input} ====> #{result}"
  end
end

puts "Enter a number to be converted"
user_input = gets.chomp

cels = Celsius.new(user_input)
cels.converter
