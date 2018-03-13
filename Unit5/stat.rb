#Sam Smedinghoff
#3/13/18
#stat.rb

#find mode of a list of numbers
def mode(nums)
  most = 0
  mostN = 0
  last = 0
  count = 0
  nums.each do |n|
    if n == last
      count += 1
    else
      if most < count
        most = count
        mostN = last
      end
      count = 1
      last = n
    end
  end
  return mostN
end

#get numbers one by one
puts "Enter a list of numbers one at a time"
puts "Enter q when done"

numbers = []
loop do
  num = gets.strip
  if num == 'q'
    break
  else
    numbers << num.to_f
  end
end
numbers = numbers.sort

#print stats
puts "Min: #{numbers.min}"
puts "Mean: #{numbers.sum/numbers.length}"
puts "Median: #{numbers[numbers.length/2]}"
puts "Max: #{numbers.max}"
puts "Mode: #{mode(numbers)} "
