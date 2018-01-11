class Pig
  def initialize(user_input)
    @first_char = user_input[0]
    @user_input = user_input
  end

  def translate
    vowels = ["a", "e", "i", "o", "u", "y"]

    if vowels.include? @first_char
      puts @user_input + "ay"
    else
      @first_char = @user_input[0]
      @user_input[0] = ""
      puts @user_input + @first_char + "ay"
    end
  end
end

puts "Enter your word for translation"
user_input = gets.chomp
pig = Pig.new(user_input)
pig.translate
