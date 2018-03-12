#Sam Smedinghoff
#3/9/18
#gauss.rb

puts "Enter the first term: "
t1 = gets.strip.to_f
puts "Enter the last term: "
t2 = gets.strip.to_f
puts "Enter the difference between terms: "
diff = gets.strip.to_f

i = t1
total = 0
while i<=t2
  total += i
  i += diff
end

puts "The sum of the numbers from #{t1} to #{t2} is #{total}"
