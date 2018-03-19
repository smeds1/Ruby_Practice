#Sam Smedinghoff
#3/19/18
#ps5.rb - originally used for my comp sci II class

#Use slides 17-19 in the recursion presentation to help you implement a
#recursive function that computes x^n where n is a positive integer.
def power(x,n)
  n == 0 ? (return 1) : x*power(x,n-1)

end

#word is a string
#reverse_word should be a recursive function that returns the string
#reversed. Ex. reverse_word('palindrome') should return 'emordnilap'
def reverse_word(word)
  word.length <= 1 ? (return word) : (return word[-1]+reverse_word(word[0,word.length-1]))
end

#digits is a string version of a non-negative integer
#compute_number should be a recursive function that returns the integer
#version of digits. Ex: '342' should return 342.
#Note: You can only use the int() function on one-digit numbers.
def compute_number(digits)
  digits.length == 1 ? (digits.to_i) : (digits[-1].to_i + 10*compute_number(digits[0..-2]))
end

#S is a non-empty list or tuple
#max_element should be a recursive function that returns the maximum
#element in S. Hint: your base case should be when S has only one element,
#and your recursive case should compare the first element and the rest of S.
#Note that you should not use the built-in max function.
def max_element(s)
  (return s[0]) if s.length==1
  maxRest = max_element(s[1..-1])
  s[0]>maxRest ? (return s[0]) : (maxRest)
end

#S is a list or tuple
#unique should be a recursive function that returns whether or not S
#contains all unique elements. HINT: The logic for implementing this
#function is very similar to the logic for implementing max_element.
#Note that you should not use the built-in "in" operator.
def unique(s)
  (return true) if s.length <= 1
  rest = s[1..-1]
  rest.each do |i|
    (return false) if s[0] == i
  end
  return unique(rest)
end
