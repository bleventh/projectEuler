n = 600851475143 # number provided by project euler

def prime(num)
   prime = num
   (2..Math.sqrt(num).to_i).each do |i|
      break if prime <= i 
      prime /= i while (prime > i && prime % i == 0)
   end
   prime
end

puts prime(n)
