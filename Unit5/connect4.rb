#Sam Smedinghoff
#3/13/18
#connect4.rb - Connect Four Game

require 'tk'

ROWS = 6
COLS = 7
RADIUS = 30
PADDING = 50
P1 = 1
P2 = 2

#put circles on the screen to represent holes for pieces
def buildBoard(canvas)
  (0..COLS-1).each do |i|
    (0..ROWS-1).each do |j|
      hole = TkcOval.new(canvas,PADDING+(RADIUS+10)*2*i,PADDING+(RADIUS+10)*2*j,
      PADDING+(RADIUS+10)*2*(i+1),PADDING+(RADIUS+10)*2*(j+1),'outline'=>'black','fill'=>'white')
    end
  end
end

#create a matrix to hold which spots are which colors
def buildMatrix()
  mat = []
  (0..COLS-1).each do |i|
    mat.append([0]*COLS)
  end
  return mat
end

#figure out where the user clicked and if a new piece should be placed on the board
def mouseClick(canvas,data,x,y)
  if not data['winner']
    column = ((x-PADDING)/(2*RADIUS+20))
    i = ROWS - 1
    while i >= 0
      if data['matrix'][i][column] == 0
        if data['turn'] == P1
          hole = TkcOval.new(canvas,PADDING+(RADIUS+10)*2*column,PADDING+(RADIUS+10)*2*i,
          PADDING+(RADIUS+10)*2*(column+1),PADDING+(RADIUS+10)*2*(i+1),'outline'=>'black','fill'=>'red')
          data['matrix'][i][column] = P1
        else
          hole = TkcOval.new(canvas,PADDING+(RADIUS+10)*2*column,PADDING+(RADIUS+10)*2*i,
          PADDING+(RADIUS+10)*2*(column+1),PADDING+(RADIUS+10)*2*(i+1),'outline'=>'black','fill'=>'black')
          data['matrix'][i][column] = P2
        end
        if win(i,column,data)
          text = TkcText.new(canvas,300,250,'text'=>"Player #{data['turn']} wins!",'fill'=>'green','font'=>'Times 80')
          data['winner'] = true
        end
        data['turn'] = (data['turn']%2)+1
        break
      end
      i-=1
    end
  end
end

#returns the number of matching neighbors in a given direction
def numColoredNeighbors(row,col,color,direction,data)

  #west
  if direction=='W'
    if col-1<0 or data['matrix'][row][col-1] != color
      return 0
    elsif col-2<0 or data['matrix'][row][col-2] != color
      return 1
    elsif col-3<0 or data['matrix'][row][col-3] != color
      return 2
    else
      return 3
    end

    #east
  elsif direction=='E'
    if col+1>=COLS or data['matrix'][row][col+1] != color
      return 0
    elsif col+2>=COLS or data['matrix'][row][col+2] != color
      return 1
    elsif col+3>=COLS or data['matrix'][row][col+3] != color
      return 2
    else
      return 3
    end

    #south
  elsif direction=='S'
    if row+1>=COLS or data['matrix'][row+1][col] != color
      return 0
    elsif row+2>=COLS or data['matrix'][row+2][col] != color
      return 1
    elsif row+3>=COLS or data['matrix'][row+3][col] != color
      return 2
    else
      return 3
    end

    #northwest
  elsif direction=='NW'
    if row-1<0 or col-1<0 or data['matrix'][row-1][col-1] != color
      return 0
    elsif row-2<0 or col-2<0 or data['matrix'][row-2][col-2] != color
      return 1
    elsif row-3<0 or col-3<0 or data['matrix'][row-3][col-3] != color
      return 2
    else
      return 3
    end

    #northeast
  elsif direction=='NE'
    if row-1<0 or col+1>=COLS or data['matrix'][row-1][col+1] != color
      return 0
    elsif row-2<0 or col+2>=COLS or data['matrix'][row-2][col+2] != color
      return 1
    elsif row-3<0 or col+3>=COLS or data['matrix'][row-3][col+3] != color
      return 2
    else
      return 3
    end

    #southeast
  elsif direction=='SE'
    if row+1>=COLS or col+1>=COLS or data['matrix'][row+1][col+1] != color
      return 0
    elsif row+2>=COLS or col+2>=COLS or data['matrix'][row+2][col+2] != color
      return 1
    elsif row+3>=COLS or col+3>=COLS or data['matrix'][row+3][col+3] != color
      return 2
    else
      return 3
    end

    #southwest
  elsif direction=='SW'
    if row+1>=COLS or col-1<0 or data['matrix'][row+1][col-1] != color
      return 0
    elsif row+2>=COLS or col-2<0 or data['matrix'][row+2][col-2] != color
      return 1
    elsif row+3>=COLS or col-3<0 or data['matrix'][row+3][col-3] != color
      return 2
    else
      return 3
    end
  end
  return 0 #default
end

#check to see if the last move caused a win
def win(r,c,data)
  board = data['matrix']

  #check horizontal win
  if numColoredNeighbors(r,c,board[r][c],'E',data)+numColoredNeighbors(r,c,board[r][c],'W',data)>=3
    return true

  #check vertical win
elsif numColoredNeighbors(r,c,board[r][c],'S',data)>=3
    return true

  #check NW-SE diagonal
elsif numColoredNeighbors(r,c,board[r][c],'NW',data)+numColoredNeighbors(r,c,board[r][c],'SE',data)>=3
    return true

  #check NE-SW diagonal
elsif numColoredNeighbors(r,c,board[r][c],'NE',data)+numColoredNeighbors(r,c,board[r][c],'SW',data)>=3
    return true
  end
  return false #there was no win
end


#Main part of the game that runs everything
data = {}
data['matrix'] = buildMatrix()
data['turn'] = P1
data['winner'] = false

window = TkRoot.new {title "Connect Four"}
window.minsize(ROWS*(RADIUS+10)*2+2*PADDING,COLS*(RADIUS+10)*2+PADDING)
canvas = TkCanvas.new('height'=>ROWS*(RADIUS+10)*2+PADDING,'width'=>COLS*(RADIUS+10)*2+2*PADDING,'background'=>'white')
buildBoard(canvas)
window.bind("1", proc{|x,y| mouseClick(canvas,data,x,y)}, "%x %y")
canvas.pack
Tk.mainloop
