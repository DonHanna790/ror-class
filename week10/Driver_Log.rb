trips_log = []

class Customer
end

class Trip_log
  n = 0

  def add
    loop do
      puts "Please enter name of the driver"
      driver = gets.chomp
      puts "Enter the start time of the trip"
      start_time = gets.chomp
      puts "Enter the end time of the trip"
      end_time = gets.chomp
      puts "Enter total miles traveled"
      miles = gets.chomp
      trips_log << "driver, start_time, end_time, miles"
      puts "Enter another trip? Select y/n"
      user_input = gets.chomp
      if user_input == "n"
        break
      else
      end
    end
  end
end

class Log
  def view
    puts "#{trips_log.driver}: #{}"
  end
end

puts "Welcome to the Driver Trip Log\n======****======\nEnter 1 to add a new trip\nEnter 2 to view driver reports"
user_input = gets.chomp
if user_input == "1"
  trip_log = Trip_log.new
  trip_log.add
elsif user_input == "2"
  log = Log.new
  log.view
end
