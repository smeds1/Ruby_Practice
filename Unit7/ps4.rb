#Sam Smedinghoff
#3/18/18
#ps4.rb - originally used for my comp sci II class

#data is a list/tuple of at least 2 numbers
#The function should return the maximum pairwise product.
#In other words, it should find the two numbers that multiply to
#the largest total and return that total.
#This function should be a QUADRATIC time algorithm.
#Please do not use sort, min, max, or count.
def max_product_quadratic(data)
  winner = data[0]*data[1]
  (0..data.length-2).each do |i|
    (i+1..data.length-1).each do |j|
      winner = data[i]*data[j] if data[i]*data[j] > winner
    end
  end
  return winner
end


#data is a list/tuple of at least 2 numbers
#The function should return the maximum pairwise sum.
#In other words, it should find the two numbers that add to
#the largest total and return that total.
#This function should be a LINEAR time algorithm.
#Please do not use sort, min, max, or count.
def max_sum_linear(data)
  if data[0] > data[1]
    biggest = data[0]
    secondBiggest = data[1]
  else
    biggest = data[1]
    secondBiggest = data[0]
  end

  (2..data.length-1).each do |i|
    if data[i] > secondBiggest && data[i] < biggest
      secondBiggest = data[i]
    elsif data[i] >= biggest
      secondBiggest = biggest
      biggest = data[i]
    end
  end
  return biggest + secondBiggest
end


#a and b are integers
#The function should use a while loop to add up all the numbers
#from a to b (including a and b) and return that sum.
#Ex: whileAdder(1,3) = 1+2+3 = 6
#Additionally, your function should print out how long it took to do
#the calculations by using time.time()
def whileAdder(a,b)
  t1 = Time.now
  total = 0
  i = a
  while i<=b
    total += i
    i += 1
  end
  t2 = Time.now
  puts "#{t2-t1} seconds"
  return total
end


#This function should do the same thing as the previous function
#but use a for loop and xrange instead of a while loop. For a large
#range between a and b, you should find the running time of this
#function is slightly different than for the last one.
def forAdder(a,b)
  t1 = Time.now
  total = 0
  (a..b).each do |i|
    total += i
  end
  t2 = Time.now
  puts "#{t2-t1} seconds"
  return total
end


#data is a list/tuple and val is any data type
#The function should search through data using a loop until it finds val.
#Then it should return the index of the position where val is stored.
#If val is not found, the funciton should return -1 instead.
#This function should run in linear time.
def find_linear(data,val)
  (0..data.length-1).each do |i|
    if data[i] == val
      return i
    end
  end
  return -1
end
