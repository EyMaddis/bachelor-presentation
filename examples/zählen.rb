arg = {akt: 0, max: 0, zur: 0}

def count(arg)
  if look(:here) == :treasure
     arg[:akt] += 1
  end
end

def naechste_zeile(dir)
  turn(dir)
  move
  turn(dir)
end

def ende(arg)
  turn(:right)
  arg[:zur].times do
    move
  end
  turn(:right)
  if look(:here) == :treasure
    take
  end
  put
end

def zeile_lesen(arg)
  while look(:front) != :border
    count(arg)
    move
  end
  count(arg)
  if arg[:akt] >= arg[:max]
    arg[:max] = arg[:akt]
    arg[:zur] = 0
  else
    arg[:zur] += 1
  end
  arg[:akt] = 0
end

loop do
  zeile_lesen(arg)
  naechste_zeile(:right)
  
  zeile_lesen(arg)
  
  if look(:left) == :border
    ende(arg)
    break
  end
  
  naechste_zeile(:left)
end