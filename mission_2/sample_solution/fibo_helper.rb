# Check if the given string is a valid integer.
#
# ^      : Start of string
# [0-9]  : Only characters in 0-9
# +      : At least one
# $      : End of string
def is_string_a_valid_integer?(str)
  (str =~ /^-?[0-9]+$/) == 0 ? true : false
end

# Return nil for non integer input.
# Return integer value for valid integers.
#
# "25ab" -> nil
# "25"   -> 25
# "0"    -> 0
# "ab4"  -> nil
# "-1"  -> -1
def convert_string_input_to_integer(str)
  is_string_a_valid_integer?(str) ? str.to_i : nil
end

# Prints the series till f(n)
# f(0) -> 0
# f(1) -> 0 1
# f(2) -> 0 1 2
# f(4) -> 0 1 2 3 5
def print_fibo_series(num)
  print "Fibonacci series is: 0"
  (0..num).each do |n|
    (n < num) ? (print "#{fibo(n)},") : (print "#{fibo(n)}")
  end
  print "\n"
end