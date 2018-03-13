#Sam Smedinghoff
#3/12/18
#printnStars.rb

def printnStars(n)
  (1..n).each do |i|
    (1..i).each do |j|
      print '*'
    end
    puts
  end
end

printnStars(15)
