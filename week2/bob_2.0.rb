class Bob
  def initialize(reply)
    @reply = reply
  end

  def response
    if @reply == "?"
      puts "Bob: Sure"
    elsif @reply =="!"
      puts "Bob: Whoa, chill out!"
    elsif last_char =="."
      puts "Bob: Whatever"
    elsif @reply == nil
      puts "Bob: Fine, be that way!"
    end
  end
end

puts "Bob is a lackadaisical teenager. What would you like to say to Bob?"
user_input = gets.chomp

last_char = user_input[-1]

bob = Bob.new(last_char)
bob.response 
