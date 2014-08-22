start() -> look_here().

look_here() -> case look() of
                treasure -> take(), read_line(), puts();
                _        -> read_line()
              end.

read_line() -> case look(front) of
                treasure -> move(), take(), read_line(), puts(), move();
                border   -> turn(), go_back(), turn();
                _        -> move(), read_line(), move()
              end.

go_back() -> case look(front) of
               border -> next_line();
               _      -> move(), go_back(), move()
             end.
  
next_line() -> case look(right) of
                 border -> turn();
                 _      -> turn(right), move(), turn(right), look_here(), turn(left), move(), turn(left)
             end.