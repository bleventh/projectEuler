upBound = 2000000 # Provided upper boundary
primes = {}

(2..upBound).each do |n|
   next if n.even? and n != 2
   primes[n] = n
end

# Sieve of Eratosthenes
primes.each_key do |n|
   inc = n * 2
   until n >= upBound do
      n += inc
      primes.delete(n)
   end
end

sum = 0
primes.each_key do |n|
   sum += primes[n]
end

puts sum
