#Sam Smedinghoff
#3/12/18
#baseConverter.rb

puts "Enter a base-10 number: "
num = gets.to_i
puts "What base would you like to convert to: "
base = gets.to_i

largestPower = Math.log(num,base).to_i

i = largestPower
answer = ""
remainder = num
while i >= 0
  digit = remainder/(base**i)
  remainder -= digit*(base**i)
  if digit == 10
    answer += "A"
  elsif digit == 11
    answer += "B"
  elsif digit == 12
    answer += "C"
  elsif digit == 13
    answer += "D"
  elsif digit == 14
    answer += "E"
  elsif digit == 15
    answer += "F"
  else
    answer += digit.to_s
  end
  i -= 1
end

puts "#{num} in base-#{base} is #{answer}"
