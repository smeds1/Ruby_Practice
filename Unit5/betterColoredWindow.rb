#Sam Smedinghoff
#3/13/18
#betterColoredChangeWindow.rb - changes color on click

require 'tk'

def colorChange(root)
  colors = ['red','green','blue','yellow']
  root.background(colors[rand(4)])
end

root = TkRoot.new { title "Colored Window"}
root.minsize(400,400)
root.bind("1") {colorChange(root)}
Tk.mainloop
