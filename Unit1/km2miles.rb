#Sam Smedinghoff
#3/8/18
#km2miles.rb

puts "Input number of Kilomters: "
km = gets.strip.to_i
puts "#{km} kilometers is #{(km*0.621371).round(3)} miles"
