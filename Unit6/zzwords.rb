#Sam Smedinghoff
#3/14/18
#zzwords.rb

file = open("words.txt","r")
outFile = open("zzwords.out","w")

file.each_line do |line|
  if line.include? "zz"
    outFile.write(line)
  end
end

file.close
outFile.close
