# Mission 2

<img src="http://fc05.deviantart.net/fs70/f/2012/116/4/1/fibonacci_spiral_by_hop41-d4xna2n.jpg" width="350px" height="200px" />

### Print Fibonacci series as output using recursion & without recursion.
  
* Create a function fibo_rec(n) in fibo_rec.rb that returns nth Fibonacci number.
* Create a function fibo(n) in fibo.rb that returns nth Fibonacci number.
* Use recursion for fibo_rec(n) & iteration for fibo(n)
* Your program should ask user to enter a number.
	* Check if the input is a valid integer.
	* Show message like "Invalid input! Enter integer value only."
	* If a negative number is entered, quit the program. Be nice & print a goodbye message.
	* Program should not crash for any invalid input.
* Until the user keeps entering a positive number keep printing the nthe number & the series

Example output

	Enter a positive integer or -ve number to exit: 4
	nth Fibonacci number is: 3
	Fibonacci series for n = 4 is: 0 1 1 2 3
	
	Enter a positive intege or -ve number to exitr: 3
	nth Fibonacci numner is: 2
	Fibonacci series for n = 4 is: 0 1 1 2
	
	Enter a positive integer or -ve number to exit: -1
	See ya later!

* Code should be indented & comments should be put in wherever required.
  
### Print Funkonacci numbers as defined below.

Follow the instruction from the previous example & implement Funkonacci Numbers!

	Funkonacci Numbers!

	funk(n) = 0 if n < 1
  	funk(n) = 1 if n = 1
	funk(n) = funk(n - 1) - (2 × funk(n - 2)) otherwise

### Extra Credit

* Compare recrsive & iterative functions for large integer values and document your findings.
* Try to print the series from within the fibo(n) & fibo_rec(n) functions and document your findings.
* Identify and explain the image at the top.

### References

[http://www.cs.utexas.edu/users/julian/index.php?page=Jump%20Into%20Ruby](http://www.cs.utexas.edu/users/julian/index.php?page=Jump%20Into%20Ruby)