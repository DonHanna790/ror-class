class Student
  attr_accessor :name, :grade
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
end

students = []

10.times do
  puts "Would you like to add or view students?"
  user_input = gets.chomp

  if user_input == "add"
    puts "Enter first name"
    first_name = gets.chomp
    puts "Enter grade"
    grade = gets.chomp.to_i
    students << Student.new(first_name, grade)
  elsif user_input =="view"
    puts "Which grade would you like to see?"
    user_input = gets.chomp

    students.each do |student|
      if user_input == student.grade
        puts "#{student.name}  #{student.grade}"
      end
    end
  end
end
