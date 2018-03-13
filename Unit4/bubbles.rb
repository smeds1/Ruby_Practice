#Sam Smedinghoff
#3/12/18
#bubbles.rb - addds random circle on user click

require 'tk'

def bubble(canvas)
  color = rand(7)
  radius = rand(50)+10
  x1 = rand(600)
  y1 = rand(600)

  if color == 0
    TkcOval.new(canvas,x1-radius,y1-radius,x1+radius,y1+radius,'outline'=>'red','fill'=>'red')
  elsif color == 1
    TkcOval.new(canvas,x1-radius,y1-radius,x1+radius,y1+radius,'outline'=>'green','fill'=>'green')
  elsif color == 2
    TkcOval.new(canvas,x1-radius,y1-radius,x1+radius,y1+radius,'outline'=>'blue','fill'=>'blue')
  elsif color == 3
    TkcOval.new(canvas,x1-radius,y1-radius,x1+radius,y1+radius,'outline'=>'purple','fill'=>'purple')
  elsif color == 4
    TkcOval.new(canvas,x1-radius,y1-radius,x1+radius,y1+radius,'outline'=>'orange','fill'=>'orange')
  elsif color == 5
    TkcOval.new(canvas,x1-radius,y1-radius,x1+radius,y1+radius,'outline'=>'pink','fill'=>'pink')
  else
    TkcOval.new(canvas,x1-radius,y1-radius,x1+radius,y1+radius,'outline'=>'yellow','fill'=>'yellow')
  end
end

root = TkRoot.new { title "Bubbles!"}
root.minsize(600,600)
canvas = TkCanvas.new('width'=>600,'height'=>600)
canvas.pack
root.bind("1") {bubble(canvas)}
Tk.mainloop
