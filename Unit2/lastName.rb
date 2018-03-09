#Sam Smedinghoff
#3/8/18
#lastName.rb

puts "Enter your last name: "
name = gets.strip

if name < 'N'
  puts name + " is in the first half of the alphabet"
else
  puts name + " is in the second half of the alphabet"
end
