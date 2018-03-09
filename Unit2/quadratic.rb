#Sam Smedinghoff
#3/8/18
#quadratic.rb - quadratic formula

puts "ax^2 + bx + c = 0"
puts "a = "
a = gets.strip.to_f
puts "b = "
b = gets.strip.to_f
puts "c = "
c = gets.strip.to_f

discrim = b**2 - 4*a*c
if discrim == 0
  puts "x = " + (-1*b/(2*a)).to_s
else
  puts "x = " + ((-1*b + discrim**0.5)/(2*a)).to_s + " or"
  puts "x = " + ((-1*b - discrim**0.5)/(2*a)).to_s + " or"
end
