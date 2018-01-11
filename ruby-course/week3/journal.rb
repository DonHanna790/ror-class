module Page
  ENTRY = []
end

class Journal
  def menu
    puts "What would you like to do?\nPress 1 to add an entry\nPress 2 to view an entry\nPress 3 to delete an entry"
    user_input = gets.chomp
    if user_input == "1"
      add
    elsif user_input == "2"
      view
    elsif user_input == "3"
      delete
    end
    puts "====== ***** ======"
  end

  private

  def add
    puts "What would you like to name this entry?"
    title = gets.chomp
    puts "Make your entry here"
    journal_input = gets.chomp
    Page::ENTRY << {title: title, journal_input: journal_input}

    puts "====== ***** ======"
  end

  def view
    puts "Which entry would you like to view?"
    Page::ENTRY.each do |page|
      puts page[:title]
    end

    puts "====== ***** ======"

    user_input = gets.chomp

    puts "====== ***** ======"

    Page::ENTRY.each do |page|
      if page[:title] == user_input
        puts page[:title]
        puts page[:journal_input]
      end
    end
    puts "====== ***** ======"
  end

  def delete
    puts "Which entry would you like to delete?"
    Page::ENTRY.each do |page|
      puts page[:title]
    end

    puts "====== ***** ======"

    user_input = gets.chomp

    Page::ENTRY.each do |page|
      Page::ENTRY.delete_if{|page| user_input == page[:title]}
    end
  end
end

puts "Welcome to your Journal!\n====== ***** ======"
journal = Journal.new

loop do
  journal.menu
end
