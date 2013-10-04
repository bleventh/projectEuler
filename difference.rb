nat = 0
sqr = 0
(1..100).each do |n|
   nat += n**2
   sqr += n
end
sqr = sqr**2
puts sqr - nat
