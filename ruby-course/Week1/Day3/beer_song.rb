puts "The Beer Song!"

def bottles(n)
  n == 1 ? "#{n} bottle" : "#{n} bottles"
end

@count = 99

@count.downto(1)  {
puts <<BEERSONG
---------------------------------
   #{bottles(@count)} of beer on the wall
   #{bottles(@count)} of beer
   Take one down, pass it around
   #{bottles(@count -= 1)} of beer on the wall
BEERSONG
}
puts "---------------------------"

puts "No more beer!"
