#Sam Smedinghoff
#3/8/18
#coloredWindow.rb - pops up randmoly colored window

require 'tk'

root = TkRoot.new { title "Colored Window"}
root.minsize(400,400)

num = rand(4)
if num == 0
  root.background('red')
elsif num == 1
  root.background('green')
elsif num == 2
  root.background('blue')
else
  root.background('yellow')
end

Tk.mainloop
