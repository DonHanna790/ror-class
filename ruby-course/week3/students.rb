school = []

class Student
  def initialize(menu_select, name, grade)
    @menu_select = menu_select
    @name = name
    @grade = grade
  end

  def menu
    if @menu_select == "1"
      puts "Please enter name"
      @name = gets.chomp
      puts "Please enter grade"
      @grade = gets.chomp
      school << School.new(first_name, grade)
    else
      puts "#{school.name}  #{school.grade}"
    end
  end
end

puts "What would you like to do?\nPress 1 to add a student\nPress 2 to view all students"
menu_select = gets.chomp

student = Student.new(@menu_select, @name, @grade)
student.menu
