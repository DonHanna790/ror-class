puts "Enter your word for translation"

user_input = gets.chomp

vowel = ["a", "e", "i", "o", "u", "y"]

if vowel.include? user_input[0,1]
  puts user_input + "ay"
else
  # remove first two chars
  first_char = user_input[0]
  user_input[0] = ""
  puts user_input + first_char + "ay"
end
