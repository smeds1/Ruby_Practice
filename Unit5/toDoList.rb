#Sam Smedinghoff
#3/13/18
#toDoList.rb - Program that keeps track of a list of items

#list the appropriate commands
puts 'Commands:'
puts 'add'
puts 'delete'
puts 'print'
puts 'quit'

#start with an empty list and let the user add/subtract/print items
toDoList = []
loop do
  cmd = gets.strip
  if cmd[0,3]=='add'
    toDoList.append(cmd[4,cmd.length-1])
  elsif cmd[0,6]=='delete'
    if toDoList.include? cmd[7,cmd.length-1]
      toDoList.delete(cmd[7,cmd.length-1])
    else
      puts "#{cmd[7,cmd.length-1]} is not in list"
    end
  elsif cmd[0,5]=='print'
    puts toDoList
  elsif cmd[0,4]=='quit'
    break
  else
    puts 'invalid choice'
  end
end
