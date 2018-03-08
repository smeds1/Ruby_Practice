#Sam Smedinghoff
#3/8/18
#unitConverter.rb

puts "1) Kilometers to Miles"
puts "2) Kilograms to Pounds"
puts "3) Liters to Gallons"
puts "4) Celsius to Fahrenheit"

puts "Choose a number: "
choice = gets.strip.to_i

if choice == 1
  puts "Enter number of kilometers: "
  km = gets.strip.to_f
  puts km.to_s + " kilometers is " + (km*0.621371).round(3).to_s + ' miles '
elsif choice == 2
  puts "Enter number of kilograms: "
  kg = gets.strip.to_f
  puts kg.to_s + " kilograms is " + (kg*2.20462).round(3).to_s + ' pounds '
elsif choice == 3
  puts "Enter number of liters: "
  l = gets.strip.to_f
  puts l.to_s + " liters is " + (l*0.264172).round(3).to_s + ' gallons '
elsif choice == 4
  puts "Enter number of degrees celsius: "
  cel = gets.strip.to_f
  puts cel.to_s + " degrees celsius is " + (cel*9/5+32).round(3).to_s + ' degrees fahrenheit '
else
  puts "Invalid choice"
end
