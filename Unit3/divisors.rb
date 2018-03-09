#Sam Smedinghoff
#3/9/18
#divisors.rb

puts "Enter a number: "
num = gets.strip.to_i

(1..num/2).each do |i|
  if num%i == 0
    puts i
  end
end
