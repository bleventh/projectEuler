def fibonacci(num1, num2)
   count = 0
   count += num1 if num1 % 2 == 0
   if num1 > 4000000
      return 0
   else
      return count + fibonacci(num2, num2 + num1)
   end
end

puts fibonacci(1,2)
