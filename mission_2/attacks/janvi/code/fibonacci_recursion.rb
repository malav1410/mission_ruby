begin
  puts "Enter number To see element of fibonacci series(Enter Negative value for exit) :"
  input = gets.chomp
  if input != "0" and input.to_i == 0 and input.to_f == 0
    puts "please enter valid integer number"
    num=1   
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
      if num<2
        fibo_series_value = num
      else 
        fibo_series_value = (fibo(num-1)+fibo(num-2))          
      end          
      return fibo_series_value
    end
    # This bloack is for printing the fibonacci series.
    # in recursion we can not print value in function. because function call it self so 1 value 
    #   can print many times. for ex:
    # we write print value in the end of fibo function
    # if we enter input = 4
    # fibo(4) =  fibo(3) + fibo(2)
    #         =  [fibo(2)+fibo(1)] + [fibo(1)+fibo(0)]
    #         =  [[fibo(1)+fibo(0)] + [fibo(1)]] + [fibo(1)+fibo(0)]
    # in above explaination values print with call each fibo function.
    # so when fibo(3) call it call two function fibo(2) and fibo(1).
    # fibo(2) call two function fibo(1) and fibo(0)
    # when fibo(1) call it print 1, then fibo(0) call it print 0. they return value in fibo(2)
    # when fibo(2) execute it print its value and this type value print many times. 
  
    print "The fibonacci series is : "
    (0..num).each do |value|
      print " " + fibo(value).to_s
    end
    puts
    if(num >= 0)
      puts "The value at position #{num} :  " + fibo(num).to_s
    end
  end
end while num>=0 