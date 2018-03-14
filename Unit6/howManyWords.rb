#Sam Smedinghoff
#3/14/18
#howManyWords.rb - how many words of each length are in the longestDictionaryWord

file = open("words.txt","r")

wordCounts = [0]*23
file.each_line do |line|
  wordCounts[line.strip.length] += 1
end

(1..21).each do |i|
  puts "#{i}-letter words: #{wordCounts[i]}"
end

file.close
