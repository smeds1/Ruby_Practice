#Sam Smedinghoff
#3/8/18
#tipCalculator.rb

puts "Price of Meal (in dollars): "
price = gets.strip.to_f
puts "% to tip: "
tip = gets.strip.to_f
puts "Your should tip #{(price*tip/100).round(2)} dollars"
