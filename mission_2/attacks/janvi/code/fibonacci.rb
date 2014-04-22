begin
  # ask to user to enter a number
  puts "Enter number To see element of fibonacci series(Enter Negative value for exit) :"
  input = gets.chomp

  # check the input is valid integer number: if not then again ask to enter a number
  if input != "0" and input.to_i == 0 and input.to_f == 0
    puts "please enter valid integer number"
    num=1 
  # to start a number in fibonacci series at position  
  else 
    num = input.to_i

    # fibonacci series = 0,1,1,2,3,5,8...
    # f(n) = n, 0<=n<2
    # f(n) = f(n-1)+f(n-2), n>=2
    # f(4) =  f(3) + f(2)
    #         [f(2)+f(1)] + [f(1)+f(0)]
    #         [[f(1)+f(0)] + [f(1)]] + [f(1)+f(0)]
    #         [[1+0] + [1]] + [1+0]
    #         [1+1] + 1
    #         3
    def fibo(num)  
      fibo_series_values = Array.new
      n = 0            
      print "The fibonacci series is : "  
      while n<=num
        # f(n) = n, 0<=n<2
        if n<2
          fibo_series_values.push(n) 
        # f(n) = f(n-1)+f(n-2), n>=2    
        else          
          fibo_series_values.push(fibo_series_values[n-1]+fibo_series_values[n-2])          
        end
        print " "+fibo_series_values[n].to_s 
        n = n+1
      end 
      puts       
      return fibo_series_values[num]
    end
    if(num >= 0)
      puts "The value at position #{num} :  " + fibo(num).to_s
    end
  end
end while num>=0 
