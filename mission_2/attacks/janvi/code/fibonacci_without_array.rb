begin
  puts "Enter number To see element of fibonacci series(Enter Negative value for exit) :"
  input = gets.chomp
  if input != "0" and input.to_i == 0 and input.to_f == 0
    puts "please enter valid integer number"
    num=1  
  else 
    num = input.to_i

    def fibo(num) 
      n = 0      
      n0 = 0
      n1 = 1
      print "The fibonacci series is : "     
      while n<=num
        if n<2
          print n
          n = n+1
        else          
          n2 = n0 + n1
          n0 = n1
          n1 = n2
          n = n+1
          print n2
        end
      end      
    end
    if(num >= 0)
      puts "The value at position #{num} :  " + fibo(num).to_s
    end
  end
end while (num>=0)
