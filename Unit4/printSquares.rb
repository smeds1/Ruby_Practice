#Sam Smedinghoff
#3/12/18
#printSquares.rb

def printSquares(rows,cols)
  (1..rows).each do
    (1..cols).each do
      print "+--"
    end
    puts "+"
    (1..cols).each do
      print "|  "
    end
    puts "|"
  end
  (1..cols).each do
    print "+--"
  end
  puts "+"
end

printSquares(5,8)
