#Sam Smedinghoff
#2/22/18
#numberGuessingGame.rb

num = rand(100)+1

guess = 0
numGuesses = 0
until guess == num
  print "Guess a number: "
  guess = gets.to_i
  numGuesses += 1
  if guess > num
    puts "Too High"
  elsif guess < num
    puts "Too Low"
  end
end

puts "You win!"
puts "It took you #{numGuesses} guesses"
