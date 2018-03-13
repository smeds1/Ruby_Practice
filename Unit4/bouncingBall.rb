#Sam Smedinghoff
#3/13/18
#bouncingBall.rb

require 'tk'

HEIGHT = 300
WIDTH = 300
BALL_RADIUS = 30

#delete and redraw the ball
def moveBall(canvas,data)
  canvas.delete(data['ball'])
  x = data['ballx']+data['xdir']
  y = data['bally']+data['ydir']
  ball = TkcOval.new(canvas,x,y,x+BALL_RADIUS,y+BALL_RADIUS,'fill'=>'black')
  data['ball'] = ball
  data['ballx'] = x
  data['bally'] = y
  checkForWalls(canvas,data)
end

#if the ball runs into a wall, change the direction of motion
def checkForWalls(canvas,data)
  x = data['ballx']
  y = data['bally']
  if x<=0
    data['xdir'] = 2
  elsif x+BALL_RADIUS>=WIDTH
    data['xdir'] = -2
  end
  if y<=0
    data['ydir'] = 3
  elsif y+BALL_RADIUS>=HEIGHT
    data['ydir'] = -3
  end
end

#move the ball every 10 miliseconds
def timer(canvas,data)
  moveBall(canvas,data)
  Tk.after 10, proc{timer(canvas,data)}
end

#set up the canvas and ball
window = TkRoot.new { title "Bouncing Ball!"}
canvas = TkCanvas.new('height'=>HEIGHT,'width'=>WIDTH,'background'=>'lightgreen')
x = rand(WIDTH-BALL_RADIUS)
y = rand(HEIGHT-BALL_RADIUS)
ball=TkcOval.new(canvas,x,y,x+BALL_RADIUS,y+BALL_RADIUS,'fill'=>'black')

#dictionary of canvas variables
data = {}
data['ball'] = ball
data['ballx'] = x
data['bally'] = y
data['xdir'] = 2
data['ydir'] = 3
canvas.pack
timer(canvas,data)
Tk.mainloop
