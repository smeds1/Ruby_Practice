#Sam Smedinghoff
#3/13/18
#displayDate.rb

weekdays = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday']
months = ['January','February','March','April','May','June','July',
'August','September','October','November','December']

date = Time.new
puts "Today is #{weekdays[date.wday]}, #{months[date.month-1]} #{date.day} #{date.year}"
