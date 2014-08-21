 
 
def gold(here)

  case here
  when :treasure

    return "Yippieh!" 

  else 

    return "No treasure :("

  end

end

puts gold(look(:front))
