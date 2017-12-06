class Number
  def initialize(min, max)
    @min = min
    @max = max
  end

  def fizzbuzz
    (@min..@max).each do |i|
      if i % 5 == 0 and i % 3 == 0
        puts "FizzBuzz"
      elsif i % 5 == 0
        puts "Buzz"
      elsif i % 3 == 0
        puts "Fizz"
      else
        puts i
      end
    end
  end
end

puts "Enter your first number"
first_value = gets.chomp.to_i

puts "Enter your second value"
second_value = gets.chomp.to_i

number = Number.new(first_value, second_value)
puts number.fizzbuzz
