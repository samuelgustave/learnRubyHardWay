# write at least one function of your own design and run it 10 different ways

def sum_and_print(*args)
  n = args.count
  result = 0
  for i in args
    result += i
  end
  puts "the sum of all #{n} numbers is #{result}!"
end

# passing 10 numbers as arguments
sum_and_print(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# passing 5 numbers as arguments
sum_and_print(1, 3, 5, 7, 9)

# passing 8 numbers as arguments
sum_and_print(2, 4, 16, 32, 64, 128, 256, 512)

# declare two variables
var1 = 2
var2 = 5

# passing two variables as arguments
sum_and_print(var1, var2)

# passing math expression combining numbers and variables
sum_and_print(var1 / 2, var2 / 2)

# passing floats
sum_and_print(1.1, 1.2, 1.3, 1.4)

# passing integers and floats
sum_and_print(5, 3.14)

# passing sums and negative numbers
sum_and_print(1+2+3+4+5+6+7+8+9, -1)

# passing negative variables
sum_and_print(-var1, -var2)

# passing nul number
sum_and_print(0)