begin
  puts "Enter number To see element of fibonacci series(Enter Negative value for exit) :"
  input = gets.chomp
  if input != "0" and input.to_i == 0 and input.to_f == 0
    puts "please enter valid integer number"
    num=1   
  else 
    number = input.to_i
    # funk(n) = n if 0 <= n < 2   
    # funk(n) = funk(n - 1) - (2 × funk(n - 2))
    # Ex: funk(4)
    # funk(4) = funk(3) - (2 x funk(2))
    #         = [funk(2) - (2 x funk(1))] - [(2 x (funk(1)-(2 x funk(0))))]
    #         = [(funk(1)-(2 x funk(0))) - (2 x funk(1))] - [(2 x (funk(1)-(2 x funk(0))))]
    #         = [(1-(2x0)) - (2x1)] - [(2x(1-(2x0)))]
    #         = [(1-0) - (2)] - [(2x(1-(0)))]
    #         = [1-2] - [2x1]
    #         = -1-2
    #         = -3
    def funk(num)      
      if num<=1
        funkonacci_value = num
      else
        funkonacci_value = funk(num-1)-(2*funk(num-2))
      end  
      return funkonacci_value    
    end
    # This bloack is for printing the fibonacci series
    print "The fibonacci series is : "
    (0..number).each do |value|
      print " " + funk(value).to_s
    end
    puts
    if(number >= 0)
      puts "The value at position #{num} :  " + funk(number).to_s
    end
  end
end while number>=0