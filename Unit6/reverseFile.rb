#Sam Smedinghoff
#3/14/18
#reverseFile.rb

puts "Enter the name of the file to reverse: "
fname = gets.strip

file = open(fname,'r')

lineList = []
file.each_line do |line|
  lineList << line
end

lineList.reverse.each do |line|
  puts line.strip
end
