# Recursion

### What is recursion?
    
* Recursion is a method of solving problems based on the divide and conquer mentality. The basic idea is that you take the original problem and divide it into smaller (more easily solved) instances of itself, solve those smaller instances (usually by using the same algorithm again) and then reassemble them into the final solution.

* Recursive algorithms break down a problem into smaller pieces which you either already know the answer to, or can solve by applying the same algorithm to each piece, and then combining the results.

### Disadvantage of recursion? OR Why we should not use recursion?
    
* Space is full on the stack for the function's arguments and local variables
* The function's arguments are copied into new space
* The function's code runs many times
* The function's result is copied into a return value   
* Control jumps back to where the function was called

Doing all of these steps takes time, usually a little bit more than it takes to iterate through a loop. However, the real problem is, When many programs start, they allocate a single chunk of memory for their stack, and when they run out of that memory (often, but not always due to recursion), the program crashes due to a stack overflow.
