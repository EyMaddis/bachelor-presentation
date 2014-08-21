def hello_world
	print "hello world!"
	move
	(1..3).each do
		move
		look(:back)
	end #end of the loop
end
hello_world
