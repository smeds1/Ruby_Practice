#Sam Smedinghoff
#3/8/18
#insulter.rb - generates random insults

puts "Enter your name: "
gets
num = rand(5)

if num == 0
  puts "Your feet smell!"
elsif num == 1
  puts "I once owned a dog that was smarter than you"
elsif num == 2
  puts "You are a pain in the backside"
elsif num == 3
  puts "Have you stopped wearing diapers yet?"
else
  puts "You're no match for my brains you poor fool"
end
