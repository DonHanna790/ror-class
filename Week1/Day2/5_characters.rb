puts "Enter you email address"
email = gets.chomp

if email.length <= 10
  puts "Email Good!"
else
  puts "Email is too long!"
end
