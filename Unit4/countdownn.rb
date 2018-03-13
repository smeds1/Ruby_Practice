#Sam Smedinghoff
#3/12/18
#countdownn.rb

def countdownn(n)
  i = n
  while i > 0
    puts i
    sleep(0.5)
    i -= 1
  end
  puts "BOOM!"
end

countdownn(10)
