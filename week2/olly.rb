class Word_count
  def initialize(words)
    @words = words
  end

  words = []

  def count_words(string)
    words = string.split(' ')
    frequency = Hash.new(0)
    words.each { |word| frequency[word.downcase] += 1 }
    puts frequency
  end
end

puts "====**===="
puts "Make an Entry"
string = gets.chomp
puts "====**===="

word_count = Word_count.new(@words)

word_count.count_words(string)
