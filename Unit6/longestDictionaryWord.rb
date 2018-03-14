#Sam Smedinghoff
#3/14/18
#longestDictionaryWord.rb

file = File.open("words.txt","r")

longest = ""
file.each_line do |line|
  if line.strip.length > longest.length
    longest = line.strip
  end
end

file.close
puts "The longest word is #{longest}"
