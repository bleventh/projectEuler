require 'prime'
upLimit = 999 * 999 # Largest possible 2 3 digit product

def factors(upLim)
   (100...Math::sqrt(upLim)).each do |n|
      return true if upLim % n == 0 and upLim / n >= 100 and upLim / n <= 999
   end
   false
end

def palindrome?(upLim)
   factors upLim if upLim.to_s.eql? upLim.to_s.reverse and not upLim.prime?
end

while (upLimit) do
   break if palindrome? upLimit
   upLimit -= 1
end

puts upLimit
