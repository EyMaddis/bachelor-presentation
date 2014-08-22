start() -> pirate_talk(yarrh).

pirate_talk(yarrh) -> io:fwrite("Yarrh!~n");

pirate_talk(ney)   -> My = "Me", Mate = "mate!"
                      io:fwrite("Ney!"),
                      io:fwrite("Don't to that!~n~n~p ~p~n", [My, 
                      Mate]),
                      io:fwrite("Never again, you hear me?~n").
