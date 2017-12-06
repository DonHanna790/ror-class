class Lyrics
  DAYS = {
    first: "a Partirige in a Pear Tree",
    second: "two Turtle Doves",
    third: "three French Hens",
    fourth: "four Calling Birds",
    fifth: "five Golden Rings",
    sixth: "six Geese-a-Laying",
    seventh: "seven Swans-a-Swinging",
    eighth: "eight Maids-a-Milking",
    ninth: "nine Ladies Dancing",
    tenth: "ten Lords-a-Leaping",
    eleventh: "eleven Pipers Piping",
    twelfth: "twelve Drummers Drumming"
  }
  def initialize(day, gift)
    @day = day
    @gift = gift
  end
  DAYS = [@day, @gift]

  day = DAYS.:first 

puts "On the #{@day} of Christmas, my true love gave to me #{@gift}"




end
