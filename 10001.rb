primes = [2]
n = 2
while (primes.count < 10001) do
   nPrime = false
   n += 1
   (2..Math::sqrt(n)).each do |i|
      if n % i == 0 then nPrime = true end
   end
   next if nPrime
   primes.push n
end

puts primes.pop
