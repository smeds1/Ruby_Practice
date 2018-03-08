#Sam Smedinghoff
#3/8/18
#isItATriangle.rb - determine if three numbers could be sides of a triangle

puts "Enter side A: "
a = gets.strip.to_f
puts "Enter side B: "
b = gets.strip.to_f
puts "Enter side C: "
c = gets.strip.to_f

small = [a,b,c].min
big = [a,b,c].max
middle = a + b + c - small - big

puts small + middle > big
