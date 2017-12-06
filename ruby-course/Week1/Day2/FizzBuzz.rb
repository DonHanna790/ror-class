puts "Enter the first value"
value1 = gets.chomp.to_i

puts "Enter the second value"
value2 = gets.chomp.to_i

(value1..value2).each do |i|
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
