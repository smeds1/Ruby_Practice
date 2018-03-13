#Sam Smedinghoff
#3/12/18
#coloredChangeWindow.rb - changes color on click

require 'tk'

def colorChange(root)
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
end

root = TkRoot.new { title "Colored Window"}
root.minsize(400,400)
root.bind("1") {colorChange(root)}
Tk.mainloop
