#Sam Smedinghoff
#3/8/18
#oddEven.rb

puts "Enter an integer: "
num = gets.strip.to_i

if num%2 == 0
  puts num.to_s + " is even"
else
  puts num.to_s + " is odd"
end
