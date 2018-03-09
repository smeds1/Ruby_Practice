#Sam Smedinghoff
#3/9/18
#printStars.rb

#assymetric version
i = 1
until i == 15
  (1..i).each do |j|
    print ('*')
  end
  puts
  i += 1
end

#symmetric version
i = 1
until i == 15
  (i..15).each do |j|
    print (' ')
  end
  (1..i).each do |j|
    print ('* ')
  end
  puts
  i += 1
end
