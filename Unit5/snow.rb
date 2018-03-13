#Sam Smedinghoff
#3/13/18
#snow.rb - Falling Snow

require 'tk'

ROWS = 300
COLUMNS = 300
CELLSIZE = 1

#puts new snow on the screen and moves all existing snow
def timer(canvas,data)
  moveSnow(canvas,data)
  Tk.after 5, proc{timer(canvas,data)}
end

#moves every non-landed piece of snow down

def moveSnow(canvas,data)
  landedList = []
  (0..data['snow'].length-1).each do |i|

    #non-landed snow
    if data['snowrow'][i]<=data['snowDepth'][data['snowcol'][i]]
      canvas.delete(data['snow'][i])
      data['snowrow'][i] = data['snowrow'][i]+1
      w = data['snowcol'][i]*CELLSIZE
      h = data['snowrow'][i]*CELLSIZE
      snow = TkcRectangle.new(canvas,w,h,w+CELLSIZE,h+CELLSIZE,'fill'=>'white','outline'=>'white')
      data['snow'][i] = snow

      #snow that is landing
    else
      landedList << i
      data['snowDepth'][data['snowcol'][i]] -= 1
    end
  end

  #use all landed snow to update the height list for each column
  landedList = landedList.reverse
  landedList.each do |i|
    data['snow'].delete_at(i)
    data['snowcol'].delete_at(i)
    data['snowrow'].delete_at(i)
  end
  newSnow(canvas,data)
end

#put a new piece of snow on the canvas in a random position
def newSnow(canvas,data)
  if rand()<0.5
    randcol = rand(COLUMNS)
    snow = TkcRectangle.new(canvas,COLUMNS*CELLSIZE,0,(COLUMNS+1)*CELLSIZE,CELLSIZE,'fill'=>'white','outline'=>'white')
    data['snow'] << snow
    data['snowcol'] << randcol
    data['snowrow'] << 0
  end
end

#set up the canvas
window = TkRoot.new { title "Snow Day"}
canvas = TkCanvas.new('height'=>ROWS*CELLSIZE,'width'=>(COLUMNS-2)*CELLSIZE,'background'=>'blue')
canvas.pack

#hash variables
data = {}
data['snow']=[] #stores object id for each rectangle
data['snowcol']=[] #stores column of each piece of snow
data['snowrow']=[] #stores current row of each piece of snow
data['snowDepth']=[ROWS]*(COLUMNS) #stores the accumulated snow height for each column

timer(canvas,data)
Tk.mainloop
