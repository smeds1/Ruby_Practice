#Sam Smedinghoff
#3/8/18
#slope.rb - Calculates slope between two points

puts "X1 = "
x1 = gets.strip.to_f
puts "Y1 = "
y1 = gets.strip.to_f
puts "X2 = "
x2 = gets.strip.to_f
puts "Y2 = "
y2 = gets.strip.to_f

if x2 == x1
  puts "The slope is undefined"
  puts "The equation of the line is X = #{x1}"
else
  slope = (y2-y1)/(x2-x1)
  puts "The slope is #{slope}"
  puts "The equation of the line is y = #{slope}X + #{y1 - x1*slope}"
end
