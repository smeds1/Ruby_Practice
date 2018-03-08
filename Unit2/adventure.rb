#Sam Smedinghoff
#3/8/18
#adventure.rb - Mimics the game Adventure

puts 'A bear is chasing you'
puts 'You come to a river'
puts 'Do you jump in the river? '

choice1 = gets.strip.downcase
if choice1 == 'y' || choice1 == 'yes'
  puts 'Thankfully you know how to swim'
  puts 'However, you notice a nearby shark'
  puts 'Do you punch the shark on the nose? '
  choice2 = gets.strip.downcase
  if choice2 == 'y' || choice2 == 'yes'
    puts 'The shark eats you and you die'
  else
    puts 'Good decision'
    puts 'However, a passing typhoon swallows you up and you die'
  end
else
  puts 'Thankfully there is a bridge'
  puts 'You cross the bridge only to find a hostile army'
  puts 'Do you try to negotiate a peace treaty? '
  choice2 = gets.strip.downcase
  if choice2 == 'y' || choice2 == 'yes'
    puts 'Unfortunately, the army hangs you anyway and you die'
  else
    puts 'Fortunatelly the army ignores you'
    puts 'However, the bear crosses the bridge as well and eats you'
  end
end
