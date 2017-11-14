#TODO
# split user input into an array
# go through that array and ask if the item is a number or a string
# if it is a number add it to some other array where we hold all of the numbers
# once you are done looping through go ahead and reduce that other array


class Math
  def initialize(user_input1, user_input2, operator)
    @user_input1 = user_input1
    @user_input2 = user_input2
    @operator = operator
  end
  def solve
    if @operator == "+"
      puts puts "(@user_input1 + user_input2)"
    ##elsif
  end
end



puts "Enter the first number value"
@user_input1 = gets.chomp
puts "Enter math operator"
@operator = gets.chomp
puts "Enter the second value"
@user_input2 = gets.chomp

math = Math.new
math.solve
