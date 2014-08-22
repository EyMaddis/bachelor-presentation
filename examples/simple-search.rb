turns = 0
loop do 
  if look(:front) == :treasure
  	move
  	take
  elsif look(:right) == :treasure
  	turn :right
  elsif look(:left) == :treasure
    turn :left
  else
    break
  end
end

puts "Linie weg"