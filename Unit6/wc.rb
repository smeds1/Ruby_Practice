#Sam Smedinghoff
#3/14/18
#wc.rb - mimics unix wc command

puts "Enter the name of the file: "
fname = gets.strip

file = open(fname,"r")

lines = 0
words = 0
characters = 0
file.each_line do |line|
  lines += 1
  characters += line.length
  line = line.strip
  if line != nil && line != ''
    words += line.count(' ') + 1
  end
end

puts "Lines = #{lines}"
puts "Words = #{words}"
puts "Characters = #{characters}"

file.close
