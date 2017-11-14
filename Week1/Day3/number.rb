class Trans
  def initialize(user_input)
    @user_input = user_input
  end

numbers = {
      1000 => "thousand",
      200 => "two hundred",
      190 => "one hundred ninety",
      180 => "one hundred eighty",
      170 => "one hundred seventy",
      160 => "one hundred sixty",
      150 => "one hundred fifty",
      140 => "one hundred forty",
      130 => "one hundred thirty",
      120 => "one hundred twenty",
      119 => "one hundred nineteen",
      118 => "one hundred eighteen",
      117 => "one hundred seventeen",
      116 => "one hundred sixteen",
      115 => "one hundred fifteen",
      114 => "one hundred fourteen",
      113 => "one hundred thirteen",
      112 => "one hundred twelve",
      110 => "one hundred eleven",
      110 => "one hundred ten",
      109 => "one hundred nine",
      108 => "one hundred eight",
      107 => "one hundred seven",
      106 => "one hundredsix",
      105 => "one hundred five",
      104 => "one hundred four",
      103 => "one hundred three",
      102 => "one hundred two",
      101 => "one hundred one",
      100 => "one hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19 => "nineteen",
      18 => "eighteen",
      17 => "seventeen",
      16 => "sixteen",
      15 => "fifteen",
      14 => "fourteen",
      13 => "thirteen",
      12 => "twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
}
  if result
    puts "#{@user_input} -> #{numbers[@user_input]}"
  else
    puts "DId not enter valid number."
  end
end

puts "Enter a number"

user_input = gets.chomp.to_i
result = numbers.has_key? user_input



##puts "#{user_input} -> #{arabic_number}"
