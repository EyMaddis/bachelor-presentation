def rev(d)
  if d == :right
    return :left
  end
  return :right
end

def start
  dir = [:front, :left, :right]
  for d in dir
    l = look(d)
    if l == :treasure
      if d != :front
        turn(d)
        start
        turn(rev(d))
        return
      else
        move
        take
        start
        put
        move
        return
      end
    end
  end
  turn
end

start
turn