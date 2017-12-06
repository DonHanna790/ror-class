customers = []

puts "Welcome to your CRM!"
puts "Please choose your action (add/find/remove):"

user_input = gets.chomp

if user_input == "add"
  puts "Enter first name"
  first_name = gets.chomp
  puts "Enter last name"
  last_name = gets.chomp
  puts "Enter age"
  age = gets.chomp.to_i

  customers << {first_name: first_name, last_name: last_name, age: age}

  puts true
elsif user_input == "find"
  puts "Enter first name"
  first_name = gets.chomp
  puts "Enter last name"
  last_name = gets.chomp

  customers.each do |customer|
    if customer[:first_name] == first_name && customer[:last_name] == last_name
      puts customer
    end
  end
elsif user_input == "remove"
  customers.each do |customer|
    if customer[:first_name] == first_name && customer[:last_name] == last_name
      array.delete(customer)
    end
  end
end

puts "Please choose your action (add/find/remove):"

user_input = gets.chomp

if user_input == "add"
  puts "Enter first name"
  first_name = gets.chomp
  puts "Enter last name"
  last_name = gets.chomp
  puts "Enter age"
  age = gets.chomp.to_i

  customers << {first_name: first_name, last_name: last_name, age: age}

  puts true
elsif user_input == "find"
  puts "Enter first name"
  first_name = gets.chomp
  puts "Enter last name"
  last_name = gets.chomp

  customers.each do |customer|
    if customer[:first_name] == first_name && customer[:last_name] == last_name
      puts customer
    end
  end
elsif user_input == "remove"
  customers.each do |customer|
    if customer[:first_name] == first_name && customer[:last_name] == last_name
      array.delete(customer)
    end
  end
end
