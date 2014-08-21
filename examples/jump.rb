def hello_world
	print "helloworld!"
	move
	(1..3).each do
		move
		look(:back)
	end #end of the loop
end
move
hello_world
move

