start() -> case look(front) of
     treasure -> move(), take(), start(), puts(), move();
     _        -> case look(right) of
                   treasure -> turn(right), move(), take(), start(), puts(), move(), turn(left);
                   _        -> case look(left) of
                                 treasure -> turn(left), move(), take(), start(), puts(), move(), turn(right);
                                 _        -> turn()
                               end
                end
    end.