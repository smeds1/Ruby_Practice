#Sam Smedinghoff
#3/14/18
#palindromes.rb

file = open("words.txt","r")

file.each_line do |line|
  palindrome = true
  line = line.strip
  (0..(line.length-1)/2).each do |i|
    if line[i] != line[line.length-i-1]
      palindrome = false
    end
  end

  if palindrome
    puts line
  end
end

file.close
