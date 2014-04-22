# Fibonacci

There is two types of fibonacci

1.  0,1,1,2,3,5,8...
      
      In this series we have two condition
      f(n) = n, 0<=n<2
      f(n) = f(n-1)+f(n-2), n>=2

      ex: f(4) =  f(3) + f(2)
                  [f(2)+f(1)] + [f(1)+f(0)]
                  [[f(1)+f(0)] + [f(1)]] + [f(1)+f(0)]
                  [[1+0] + [1]] + [1+0]
                  [1+1] + 1
                  3

2. 1,1,2,3,5,8....
      
      In this series also we have two condition
      f(n) = 1, n=[1,0]
      f(n) = f(n-1)+f(n-2), n>=2
      ex: f(4) =  f(3) + f(2)
                  [f(2)+f(1)] + [f(1)+f(0)]
                  [[f(1)+f(0)] + [f(1)]] + [f(1)+f(0)]
                  [[1+1] + [1]] + [1+1]
                  [2+1] + 2
                  5


