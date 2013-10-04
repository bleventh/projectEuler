require 'prime'
nums = {}
(11...20).each do |n|
   nums[n] = Prime.prime_division(n)
end
primes = {}
nums.each_value do |vals|
   vals.each do |prime, times|
      primes[prime] = times unless primes[prime] and times < primes[prime]
   end
end
mult = 1
primes.each do |key, value|
   mult *= key ** value
end
puts mult
