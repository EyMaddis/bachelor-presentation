#path = '/home/captain/vm/vm.rb'
#path = '/home/maddis/IdeaProjects/Web-Piraten/vm/vm/vm.rb'
#path = '/home/marius/ideaProjects/web-piraten/vm/vm/vm.rb'

vm = 'require "socket"
server = TCPServer.new 12340
loop do
  Thread.start(server.accept) do |client|
    Thread.start do
      loop do
        msg = client.gets.chomp
        puts msg
      end
    end
    client.puts "CkyUHZVL3q_print_checksuccess_ok"
    client.puts "CkyUHZVL3q_debug_0_<script type=\"text/javascript\">alert(\"Aye!\")</script>"
    client.puts "CkyUHZVL3q_end"
  end
end'

open(path, 'w+') do |file|
  File.write file, vm
end