count = 0
1000.times do |i|
   count += i if i % 3 == 0 or i % 5 == 0
end

puts count
