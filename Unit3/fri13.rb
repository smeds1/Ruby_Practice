#Sam Smedinghoff
#3/12/18
#fri13.rb - prints out next 10 Friday the 13ths

require "date"

date = Time.new

day = date.day
month = date.month
year = date.year

#figure out where to start searching
if day > 13
  month += 1
  if month == 13
    month = 1
    year += 1
  end
end

#search until 10 have been found
numFound = 0
until numFound == 10
  if Date.new(year,month,13).wday == 5
    puts "#{month}/13/#{year}"
    numFound += 1
  end
  month += 1
  if month == 13
    month = 1
    year += 1
  end
end
