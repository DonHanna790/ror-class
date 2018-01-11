class Basketball
  def self.print
    @stats = []
    File.open("./stats.txt", "r") do |f|
      f.each_line do |line|
        record = line.split
        @stats << {team_name: record[0], win: record[1], loss: record[2], draw: record[3]}
      end
    end

    @stats.each do |record|
      if record[:win] > "8" && record[:loss] < "5" && record[:draw] < "2"
        puts "I predict The " + record[:team_name] + " will win The NBA Championship"
      end
    end

    record = @stats.min_by{|r| r[:win]}
    puts "I predict The " + record[:team_name] + " will be the worst team in The NBA"
  end
end

puts "====**===="
puts "Welcome to the 2018 NBA Calculator!"

Basketball.print
