#Sam Smedinghoff
#3/14/18
#longShort.rb - finds longest and shortest words for each letter

file = open("words.txt","r")

longest = ['']*26
shortest = ['']*26
alphabet = 'abcdefghijklmnopqrstuvwxyz'
file.each_line do |line|
  line = line.strip
  idx = alphabet.index(line[0])
  if shortest[idx].length == 0 or shortest[idx].length > line.length
    shortest[idx] = line
  end
  if longest[idx].length < line.length
    longest[idx] = line
  end
end

file.close

#print results
(0..25).each do |i|
  puts "#{alphabet[i].upcase} | #{shortest[i]} | #{longest[i]}"
end
