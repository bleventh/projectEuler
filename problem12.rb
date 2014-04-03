require 'prime'
count = 0
i = 1
while count <= 500 and i = i + 1
   primes, powers = ((i * (i + 1))/2).prime_division.transpose
   powers.map! {|x| x + 1}
   count = powers.inject(1){|factors, item| factors * item}
end
puts ((i * (i + 1))/2)

