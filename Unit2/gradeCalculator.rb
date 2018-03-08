#Sam Smedinghoff
#3/8/18
#gradeCalculator.rb

puts "Enter your grade: "
grade = gets.strip.to_f

if grade >= 90
  puts "You earned an A"
elsif grade >= 80
  puts "You earned a B"
elsif grade >= 70
  puts "You earned a C"
elsif grade >= 60
  puts "You earned a D"
else
  puts "You earned an F"
end
