roman_numerals = {
  "I" => "1",
  "II" => "2",
  "III" => "3",
  "IV" => "4",
  "V" => "5",
  "VI" => "6",
  "VII" => "7",
  "VIII" => "8",
  "IX" => "9",
  "X" => "10",
  "XI" => "11",
  "XII" => "12",
  "XIII" => "13",
  "XIV" => "14",
  "XV" => "15",
  "XVI" => "16",
  "XVII" => "17",
  "XVIII" => "18",
  "XIX" => "19",
  "XX" => "20",
}

puts "Enter roman numeral"
enteredValue = gets.chomp

result = roman_numerals.has_key? enteredValue

if result
  arabic_number = roman_numerals[enteredValue]
else
  puts "DId not enter valid roman value."
end

puts "#{enteredValue} -> #{arabic_number}"
