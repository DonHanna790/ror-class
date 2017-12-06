class IceCreamReader
  def self.print
    File.open("./icecream.txt", "r") do |f|
      f.each_line do |line|
        word = line.split
        word.each do |word|
          puts "#{word}"
        end
      end
    end
  end
end


IceCreamReader.print
