 
 
def gold(here)

  case here
  when :treasure

    return "Yarrh!" 

  else 

    return "No treasure :("

  end

end

puts gold(look(:front))
