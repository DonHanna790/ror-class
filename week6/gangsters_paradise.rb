class Text_Open

  def word_find(string)
    frequency = 0
    f = File.open("./gangsters_paradise.txt", "r")
    f.each_line do |word|
      if word.include?(string)
        frequency = frequency + 1
      end
    end
    puts frequency
  end
end

puts "====**===="
puts "Make an Entry"
string = gets.chomp
puts "====**===="

text_open = Text_Open.new

text_open.word_find(string)
 
