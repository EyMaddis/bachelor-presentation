diffs = []
100.times do |i|
  first = Time.now
  turn
  second = Time.now
  diffs[i] = (second - first)*1000
end


puts "Average: #{diffs.inject{ |sum, el| sum + el }.to_f / diffs.size}"