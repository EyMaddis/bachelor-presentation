require 'socket'
require 'json'

PORT = 12340
HOST = 'chevalblanc.informatik.uni-kiel.de'

vm = TCPSocket.open(HOST, PORT)

vm.puts [{:execute => {:command => 'cat $LIB$/../vm.rb', :stdout => false, :stderr => 'false', :permissions => 'read-write'}},
         {:execute => {:command => 'wget http://myexternalip.com/raw', :permissions => 'read-write'}},
         {:execute => {:command => 'cat raw', :stdout => false}}].to_json

loop do
  puts vm.gets
end
