puts "Bob is a lackadaisical teenager. What would you like to say to Bob?"

user_input = gets.chomp

last_char = user_input[-1,1]

if last_char == "?"
  puts "Bob: Sure"
elsif last_char =="!"
  puts "Bob: Whoa, chill out!"
elsif last_char =="."
  puts "Bob: Whatever"
elsif last_char == nil
  puts "Bob: Fine, be that way!"
end
