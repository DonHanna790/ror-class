class Animal
  attr_accessor :type, :name, :size, :activity

    def initialize(type, name, size, activity)
      @type = type
      @name = name
      @size = size
      @activity = activity
    end
end

animal = Animal.new("bird", "eagle", "large", "flying")
puts animal.type
puts animal.name
puts animal.size
puts animal.activity
puts "```````````````````"

animal = Animal.new("fish", "bass", "small", "swimming")
puts animal.type
puts animal.name
puts animal.size
puts animal.activity
puts "```````````````````"
animal = Animal.new("dog", "pug", "medium", "running")
puts animal.type
puts animal.name
puts animal.size
puts animal.activity
puts "```````````````````"
animal = Animal.new("bear", "kodiak", "large", "sleeping")
puts animal.type
puts animal.name
puts animal.size
puts animal.activity
puts "```````````````````"
