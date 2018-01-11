class Checking
  def initialize(balance_checking, amount)
    @balance_checking = balance_checking || 0
    @amount = amount
  end

  def menu
    puts "Would you like to do?\nPress 1 for Withdraw\nPress 2 for Deposit\nPress 3 to Check Balance"
    @user_input1 = gets.chomp
    if @user_input == "1"
      withdraw
    elsif @user_input == "2"
      deposit
    elsif @user_input == "3"
      check_balance
    else
      puts "Please make a valid selection"
    end
  end

  private

  def withdraw
    puts "Enter amount"
    amount = gets.chomp
    if @amount < @balance_checking
      @balance_checking = (@amount - @balance_checking)
      puts "Your new balance is ==>" #@balance_checking
    else
      puts "Insufficient funds"
    end
  end

  def deposit
    puts "Enter amount"
    amount = gets.chomp
    @balance_checking = (@balance_checking + @amount)
    puts @balance_checking
  end

  def check_balance
    puts @balance_checking
  end
end

class Saving
  def initialize(balance_saving, amount)
    @balance_saving = 0
    @amount = amount
  end

  def menu
    puts "Would you like to do?\nPress 1 for Withdraw\nPress 2 for Deposit\nPress 3 to Check Balance"
    @user_input1 = gets.chomp
    if @user_input == "1"
      withdraw
    elsif @user_input == "2"
      deposit
    elsif @user_input == "3"
      check_balance
    else
      puts "Please make a valid selection"
    end
  end

  private

  def withdraw
    puts "Enter amount"
    amount = gets.chomp
    if @amount < @balance_saving
      @balance_saving = (@amount - @balance_saving)
      puts "Your new balance is ==>" #@balance_saving
    else
      puts "Insufficient funds"
    end
  end

  def deposit
    puts "Enter amount"
    amount = gets.chomp
    @balance_saving = (@balance_saving + @amount)
    puts @balance_saving
  end

  def check_balance
    puts @balance_saving
  end
end

puts "Which account would you like to access?\nPress 1 for Checking Account\nPress 2 for Savings Account"
@user_input = gets.chomp
if @user_input == 1
  checking = Checking.new
  checking.menu
else
  saving = Saving.new
  saving.menu
end
