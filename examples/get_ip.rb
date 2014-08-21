require 'net/http'
uri = URI('http://myexternalip.com/raw')
res = Net::HTTP.get(uri)
puts res