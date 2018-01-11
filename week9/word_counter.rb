class Word
  def counter
    the_file = '/home/don/Documents/declaration_of_independance.txt'
    h = Hash.new
    f = File.open(the_file)

    f.each_line {|line|
      words = line.split
      words.each {|w|
        if h.has_key?(w)
          h[w] = h[w] + 1
        else
          h[w] = 1
        end
        }
      }

    h.sort{|a,b| a[1]<=>b[1]}.each { |elem|
      puts "\"#{elem[0]}\" has #{elem[1]} occurrences"}
  end
end

  puts "The Declaration of Independence"
  puts "==============================="
  puts "Calculating occurances of each word within the Declaration of Independence..."

  word = Word.new
  word.counter
