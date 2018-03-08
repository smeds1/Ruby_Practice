#Sam Smedinghoff
#3/8/18
#movie.rb

puts "Enter your age: "
age = gets.strip.to_i

if age >= 18
  puts "You can watch NC-17 movies"
elsif age >= 17
  puts "You can watch R rated movies"
elsif age >= 13
  puts "You can watch PG-13 movies"
elsif age >= 8
  puts "You can watch PG movies"
else
  puts "You can watch G rated movies"
end
