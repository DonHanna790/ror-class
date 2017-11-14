class Beer
    def initialize(bottles)
      @bottles = bottles
    end

  def song
    @bottles = 99
        while @bottles > 0

        puts @bottles.to_s + " bottles of beer on the wall. " + @bottles.to_s +
        " bottles of beer."

         (@bottles -= 1).to_s

        puts "Take one down, pass it around. " + @bottles.to_s +
        " bottles of beer on the wall."
    end
  end
end

beer = Beer.new(@bottles)

beer.song
