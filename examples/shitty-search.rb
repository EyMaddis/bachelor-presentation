turns = 0
loop do 
  found = look(:front)
  if found == :treasure
  	move
  	take
  	put
    turns = 0
  
  else
  	turn :right
  	turns += 1
  end
  break if turns >= 4  
  
end

puts "Linie weg"