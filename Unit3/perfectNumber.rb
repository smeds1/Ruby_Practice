#Sam Smedinghoff
#3/9/18
#perfectNumber.rb

puts "Enter a number: "
num = gets.strip.to_i

total = 0
(1..num/2).each do |i|
  if num%i == 0
    total += i
  end
end

if total == num
  puts "Perfect"
else
  puts "Not Perfect"
end
