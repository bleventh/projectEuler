# Problem 9
target = 1000
nMax = (target - 2)/2 # Euclid's theorem 2mn = b, b max is 1000 - 2
nMax.times do |n|
   next if n == 0
   (nMax/n).times do |m|
      next if (m - n).even? or m < n or m * n > nMax or m == 0
      b = 2 * m * n
      c = m**2 + n**2
      a = m**2 - n**2
      res = a + b + c
      puts a * b * c if res == 1000
   end
end
