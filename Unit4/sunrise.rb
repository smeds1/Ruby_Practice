#Sam Smedinghoff
#3/13/18
#sunrise.rb - simulate a sunrise

#constants
HEIGHT = 300
WIDTH = 300
SUN_SIZE = HEIGHT/2
RED = 166 #rr code for end sky color
GREEN = 238 #gg code for end sky color
BLUE = 238 #bb code for end sky color

require 'tk'

#converts a number to a two digit hex code
def toHex(n)
  #get first B digit
  firstDigit = n/16
  if firstDigit < 10
    firstDigit = firstDigit.to_s
  elsif firstDigit == 10
    firstDigit = 'A'
  elsif firstDigit == 11
    firstDigit = 'B'
  elsif firstDigit == 12
    firstDigit = 'C'
  elsif firstDigit == 13
    firstDigit = 'D'
  elsif firstDigit == 14
    firstDigit = 'E'
  else
    firstDigit = 'F'
  end
  #get second B digit
  secondDigit = n%16
  if secondDigit < 10
    secondDigit = secondDigit.to_s
  elsif secondDigit == 10
    secondDigit = 'A'
  elsif secondDigit == 11
    secondDigit = 'B'
  elsif secondDigit == 12
    secondDigit = 'C'
  elsif secondDigit == 13
    secondDigit = 'D'
  elsif secondDigit == 14
    secondDigit = 'E'
  else
    secondDigit = 'F'
  end
  return firstDigit+secondDigit
end

#change canvas background color
def changeBackgroundColor(canvas,data)
  data['moves'] += 1
  moves = data['moves']
  newColor ='#'+toHex(RED*moves/SUN_SIZE)+toHex(GREEN*moves/SUN_SIZE)+toHex(BLUE*moves/SUN_SIZE)
  canvas.configure('bg'=>newColor)
end

#delete sun and redraw it
def moveSun(canvas,data)
  canvas.delete(data['sun'])
  data['sunHeight']-=1
  sunHeight = data['sunHeight']
  sun=TkcOval.new(canvas,WIDTH/4.0,sunHeight,WIDTH/4.0+SUN_SIZE,sunHeight+SUN_SIZE,'fill'=>'yellow')
  data['sun'] = sun
end

#timer to move sun until it is fully risen
def timer(canvas,data)
  if data['moves']<=SUN_SIZE
    Tk.after 200, proc{timer(canvas,data)}
    moveSun(canvas,data)
    changeBackgroundColor(canvas,data)
  end
end

#set up the window and canvas
window = TkRoot.new { title "Sunrise"}
canvas = TkCanvas.new('height'=>HEIGHT,'width'=>WIDTH,'background'=>'#000000')
sun = TkcOval.new(canvas,WIDTH/4.0,HEIGHT,WIDTH/4.0+SUN_SIZE,HEIGHT+SUN_SIZE,'fill'=>'yellow')

#store canvas data in a hash
data = {}
data['moves'] = 0
data['sun'] = sun
data['sunHeight'] = HEIGHT
canvas.pack
timer(canvas,data)
Tk.mainloop
