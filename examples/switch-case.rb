diffs = []
100.times do |i|
  first = Time.now
  y= i % 3
  case y
    when 0
      x= "Hallo1"
    when 1
      x= "Hallo2"
    when 2
      x= "Hallo4"
  end
  second = Time.now
  diffs[i] = (second - first)*1000
end
puts "Average: #{diffs.inject{ |sum, el| sum + el }.to_f / diffs.size}"