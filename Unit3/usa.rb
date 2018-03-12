#Sam Smedinghoff
#3/12/18
#usa.rb - pops up American Flag

require 'tk'

#constants
STRIPE_WIDTH=350
STRIPE_HEIGHT=17
STAR_WIDTH=24
STAR_HEIGHT=26
FIRST_STAR_X=5
FIRST_STAR_Y=7
NUM_STRIPES=13
STARS_PER_LONG_ROW=6
STARS_PER_SHORT_ROW=5
NUM_LONG_ROWS=5
NUM_SHORT_ROWS=4

#create window
root = TkRoot.new { title "USA"}
canvas = TkCanvas.new('width'=>STRIPE_WIDTH, 'height'=>NUM_STRIPES*STRIPE_HEIGHT)

#put stripes on window
(0..13).each do |i|
  if i%2==0
    TkcRectangle.new(canvas,0,i*STRIPE_HEIGHT,STRIPE_WIDTH,(i+1)*STRIPE_HEIGHT,'outline'=>'red','fill'=>'red')
  else
    TkcRectangle.new(canvas,0,i*STRIPE_HEIGHT,STRIPE_WIDTH,(i+1)*STRIPE_HEIGHT,'outline'=>'white','fill'=>'white')
  end
end

#create blue background for stars
TkcRectangle.new(canvas,0,0,STRIPE_WIDTH*0.4,STRIPE_HEIGHT*7,'outline'=>'navyblue','fill'=>'navyblue')

#put long rows of stars on the flag
(0..NUM_LONG_ROWS-1).each do |i|
  (0..STARS_PER_LONG_ROW-1).each do |j|
    x=FIRST_STAR_X+STAR_WIDTH*j
    y=FIRST_STAR_Y+STAR_HEIGHT*i
    TkcPolygon.new(canvas,x,y,x+4,y,x+6,y-4,x+8,y,x+12,y,x+8,y+2,x+9,y+6,x+6,y+3,x+2,y+6,x+5,y+2,'fill'=>'white','outline'=>'white')
  end
end

#put short rows of stars on the flag
(0..NUM_SHORT_ROWS-1).each do |i|
  (0..STARS_PER_SHORT_ROW-1).each do |j|
    x=FIRST_STAR_X+STAR_WIDTH/2+STAR_WIDTH*j
    y=FIRST_STAR_Y+STAR_HEIGHT/2+STAR_HEIGHT*i
    TkcPolygon.new(canvas,x,y,x+4,y,x+6,y-4,x+8,y,x+12,y,x+8,y+2,x+9,y+6,x+6,y+3,x+2,y+6,x+5,y+2,'fill'=>'white','outline'=>'white')
  end
end

canvas.pack
Tk.mainloop
