require './fibo_helper'

# f(n) = 0                , if n = 0
# f(n) = 1                , if n = 1
# f(n) = f(n-2) + f(n-1)  , if n > 1
def fibo(num)
  
  print "Fibonacci series is: "

  if num == 0
    puts num
    return  num
  end

  if num == 1
    puts "0 1"
    return num
  end

  i,j,cur = 0,1,1

  print "0 1 "
  while cur < num
    k = i
    i = j
    j = k + j
    print "#{j} "
    cur = cur + 1
  end

  return j

end

# Main execution of the program begins here.
begin

  puts "Enter a number 'n' to get nth fibonacci number. Enter -1 to exit."
  num = convert_string_input_to_integer(gets.chomp)

  if num == nil
    puts "Invalid input! Please provide a valid number"
  elsif num < 0
    puts "Bye Bye."
  else
    puts "\nFibonacci number at position #{num} is #{fibo(num)}."
  end

end while num == nil || num >= 0