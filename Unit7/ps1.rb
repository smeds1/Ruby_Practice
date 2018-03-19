#Sam Smedinghoff
#3/14/18
#ps1.rb - originally used for my comp sci II class

#fill in the following function
#n and m are integers
#the function returns True if n is a multiple of m
#(that is if n=m*i for some integer i)
#the function returns False otherwise
def is_multiple(n,m)
  (n==0 || (m!=0 && n%m==0)) ? (return true) : (return false)
end

#fill in the following function
#k is an integer
#the function returns True if k is an even number
#the function returns False otherwise
#you may not use the *, /, or % operators
#use Wikipedia if you have questions about even numbers
def is_even(k)
  i = k.abs
  while i>0
    i -= 2
  end

  i == 0 ? (return true) : (return false)
end

#fill in the following function
#data is a list containing at least one number
#the function returns the minimum and maximum numbers in the list
#the values are returned as a list in the format [min, max]
#you may not use the built-in functions min or max
def minmax(data)
  small = data[0]
  large = data[0]
  data.each do |item|
    if item < small
      small = item
    elsif item > large
      large = item
    end
  end
  return [small,large]
end

#fill in the following function
#n is an integer
#the function returns the sum of the squares of all positive
#integers that are LESS THAN n
def sum_of_squares(n)
  return (1..n-1).inject(0) {|sum, i| sum + i**2}
end


#fill in the following function
#data is a non-empty list
#the function returns True if all of the values in data are different
#the function returns False if there are one or more repeats
def unique(data)
  return data.all? {|item| data.count(item) == 1}
end


#fill in the following function
#f is the name of a text file in the current directory
#the function returns the number of vowels in f
#we consider vowels to be a, e, i, o, u
def vowels(f)
  file = open(f,"r")
  count = 0
  file.each_line do |line|
    'aeiou'.each_char do |ch|
      count += line.downcase.count(ch)
    end
  end
  file.close
  return count
end
