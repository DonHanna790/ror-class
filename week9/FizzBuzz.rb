class FizzBuzz
  def operator
    number = 0

    (1..100).each do |number|
      if number % 5 == 0 and number % 3 == 0
        puts "FizzBuzz"
      elsif number % 3 == 0
        puts "Fizz"
      elsif number % 5 == 0
        puts "Buzz"
      else
        puts number
        number += 1
      end
    end
  end
end

number = FizzBuzz.new
number.operator
