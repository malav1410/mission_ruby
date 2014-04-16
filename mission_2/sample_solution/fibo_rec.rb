require './fibo_helper'

# f(n) = 0                , if n = 0
# f(n) = 1                , if n = 1
# f(n) = f(n-2) + f(n-1)  , if n > 1
def fibo(num)
  return num if (num < 2)
  return fibo(num-2) + fibo(num-1)
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
    puts "Fibonacci number at position #{num} is #{fibo(num)}."
    print_fibo_series(num)
  end

end while num == nil || num >= 0