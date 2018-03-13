#Sam Smedinghoff
#3/12/18
#distance.rb

def distance(x1,y1,x2,y2)
  return ((x2 - x1)**2 + (y2 - y1)**2)**0.5
end

puts distance(3,4,-5,2)
