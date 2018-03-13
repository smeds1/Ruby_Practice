#Sam Smedinghoff
#3/12/18
#triangle.rb - finds area of triangle given three points

def distance(x1,y1,x2,y2)
  return ((x2 - x1)**2 + (y2 - y1)**2)**0.5
end

puts "x1 = "
x1 = gets.strip.to_f
puts "y1 = "
y1 = gets.strip.to_f
puts "x2 = "
x2 = gets.strip.to_f
puts "y2 = "
y2 = gets.strip.to_f
puts "x3 = "
x3 = gets.strip.to_f
puts "y3 = "
y3 = gets.strip.to_f

a = distance(x1,y1,x2,y2)
b = distance(x2,y2,x3,y3)
c = distance(x3,y3,x1,y1)
s = (a + b + c)/2

puts "The area is #{((s*(s-a)*(s-b)*(s-c))**0.5).round(4)}"
