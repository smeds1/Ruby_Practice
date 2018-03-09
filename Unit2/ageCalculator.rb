#Sam Smedinghoff
#3/8/18
#ageCalculator.rb

date = Time.new

day = date.day
month = date.month
year = date.year

print "Enter the year you were born: "
yy = gets.strip.to_i
print "Enter the month you were born: "
mm = gets.strip.to_i
print "Enter the day you were born: "
dd = gets.strip.to_i

if mm < month
  puts "You are "+ (year-yy).to_s + " years old"
elsif mm > month
  puts "You are "+ (year-yy-1).to_s + " years old"
elsif dd < day
  puts "You are "+ (year-yy).to_s + " years old"
elsif dd > day
  puts "You are "+ (year-yy-1).to_s + " years old"
else
  puts "You are "+ (year-yy).to_s + " years old"
  puts "Happy Birthday!"
end
