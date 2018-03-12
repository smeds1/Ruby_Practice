#Sam Smedinghoff
#3/8/18
#unitConverter.rb

loop do
  puts "1) Kilometers to Miles"
  puts "2) Kilograms to Pounds"
  puts "3) Liters to Gallons"
  puts "4) Celsius to Fahrenheit"
  puts "5) Quit"

  puts "Choose a number: "
  choice = gets.strip.to_i

  if choice == 1
    puts "Enter number of kilometers: "
    km = gets.strip.to_f
    puts "#{km} kilometers is #{(km*0.621371).round(3)} miles"
  elsif choice == 2
    puts "Enter number of kilograms: "
    kg = gets.strip.to_f
    puts "#{kg} kilograms is #{(kg*2.20462).round(3)} pounds"
  elsif choice == 3
    puts "Enter number of liters: "
    l = gets.strip.to_f
    puts "#{l} liters is #{(l*0.264172).round(3)} gallons"
  elsif choice == 4
    puts "Enter number of degrees celsius: "
    cel = gets.strip.to_f
    puts "#{cel} degrees celsius is #{(cel*9/5+32).round(3)} degrees fahrenheit"
  elsif choice == 5
    break
  else
    puts "Invalid choice"
  end
end
