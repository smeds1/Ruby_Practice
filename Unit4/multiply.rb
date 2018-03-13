#Sam Smedinghoff
#3/12/18
#multiply.rb

#random encouraging message
def encourage
  r = rand(4)
  if r == 0
    puts "Watch out world, here comes the next great multiplier!\n"
  elsif r == 1
    puts "I haven't seen these kind of skills since ancient Egypt!\n"
  elsif r == 2
    puts "You're so good you could take on Einstein!\n"
  else
    puts"You're really tearing it up now!\n"
  end
end

puts "See how many multiplicaiton problems you can get right!"
puts "Type 'q' to quit"
numCorrect = 0
numWrong = 0

#ask random multiplication problems until user types "q"
loop do
  num1 = rand(10)+1
  num2 = rand(10)+1
  puts "What is #{num1}*#{num2}? "
  answer = gets.strip
  if answer == "q"
    break
  else
    if answer.to_i == num1*num2
      numCorrect += 1
      if numCorrect%5 == 0
        encourage
      end
    else
      puts "Incorrect, the answer was #{num1*num2}"
      numWrong += 1
    end
  end
end

puts "Correct = #{numCorrect} Incorrect = #{numWrong}"
