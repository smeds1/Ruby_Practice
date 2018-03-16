#Sam Smedinghoff
#3/15/18
#ps2.rb - originally used for my comp sci II class

require 'set'

#Fill in the following function:
#n in a positive interger
#The function should return a set of all the positive integers
#less than 100 that are multiples of n
def multipleSet(n)
  return (n..99).step(n).to_a.to_set
end

#Fill in the following function:
#S is a set of integers
#The function should return a new set that contains only the elements
#of S that are multiples of 5
def fivesSet(s)
  newSet = [].to_set
  s.each do |elt|
    if elt%5==0
      newSet.add(elt)
    end
  end
  return newSet
end

#Fill in the following function:
#This function should read the file 'dictionaryTest.txt' which contains
#each of the 50 states and their capitals. The funciton should return
#a dictionary where the states are the keys and the capitals are the values.
#For example, capitals['Illinois'] should be 'Springfield'. Note that the
#capitals and states in the file are separated by a tab character (the code
#for a tab is '\t').
def stateCapitalDictionary()
  capHash = {}
  file = open('dictionaryTest.txt')
  file.each_line do |line|
    city, state = line.strip.split('|')
    capHash[state] = city
  end
  return capHash
end

#Fill in the following function:
#data is a list or dictionary and i is an integer if data is a
#list and a string if data is a ditionary
#The function should return data[i] if the entry exists and 0 otherwise.
def indexTest(data,i)
  if data.is_a?(Array) and i<data.length and i>=-1*data.length
    return data[i]
  elsif data.is_a?(Hash) and data.keys.include? i
    return data[i]
  else
    return 0
  end
end

#Fill in the following function:
#n is a positive integer
#The function should generate all primes less than or equal to n
#starting at 2. Recall that a prime number is a number divisible
#only by itself and 1.
def primes(n)
  result = []
  i = 2
  while i <= n
    j=2
    prime = true
    while j<=i**0.5
      if i%j==0
        prime = false
      end
      j += 1
    end
    if prime
      result << i
    end
    i +=1
  end
  return result
end

#Fill in the following function:
#data is a list or tuple
#The generator should generate a shuffled version of data
#Ex: [3,4,5,6] might generate 4 5 3 6
#do not use random functions other than randint or randchoice
def shuffle(data)
  usedIndices = []
  newArray = []
  until usedIndices.length == data.length
    r = rand(data.length)
    if not usedIndices.include? r
      usedIndices << r
      newArray << data[r]
    end
  end
  return newArray
end

#Fill in the following function:
#n is a positive integer
#The function should return a list that is all powers of 2 from
#2^0 through 2^n
#Your function should only have one line (hint: list compression)
def powersOfTwo(n)
  return (0..n).map {|x| 2**x}
end
