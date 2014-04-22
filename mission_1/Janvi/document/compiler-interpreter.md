# Compiler & Interpreter

### The difference between Compilers and Interpreters.

* Compilers and interpreters are used to convert the code of high language into machine language. The high level programmming is known as source program and the corresponding machine level program is known as object program.Although both compilers and interpreters perform the same task but there is a difference in their working.
* A compiler searches all the errors of a program and lists them. If the program is error free then it converts the code of program into machine code and then the program can be executed by separate commands. 
* An interpreter checks the errors of a program statement by statement. After checking one statement, it converts that statement into machine code and then executes that statement. The process continues until the last statement of program occurs.
* Interpreted programs can modify themselves at runtime by adding/changing functions. A compiled program has to be recompiled fully even for the small modifications we make to a small section of the program; where as an in the case of an interpreter there is no such problem (only the modified section needs to be recompiled).
* In compiler the machine code is generated at compile time. in interpreter the machine code already store at and when program start to execute it checks the statement and find its code. 

      for example 
          
        File name: add 
        if there is a code like
          add (a,b)
          {
            a+b
          }  

##### Compiler :
so compiler compile this file and create a code in machine language and store it in file called obj like this
      
add.obj : 00101101110111100000101010111001100110000111010100010010101010010001011010010101

Now at run time it execute directly this obj file.

###### How compiler compile the program.
* In compiler there is one file which store some basic rules like and information of c language.
        
        ex: int datatype
        main() function
        char datatype
* Now when program compile it reads int or character it first find form this file  and than from that file it convert code in to machine language

##### Interpreter :
        
* At runtime it first check 1st statement add(a,b) find machine code 101101 and execute that statement.after it execute successfully it check second statement a+b find code for that and execute it. This process is continue till the last statement.
 
* There are essentially two main ways to do interpretation, and both are supported by the Ruby interpreter. 

    1.  interactive mode.

        the programmer is prompted by the interpreter to enter one statement at a time, and the interpreter executes it. It is very useful for such tasks as short programs and experimenting with options. It also is a good way to check and see if a statement does what you think it will do. It is often a good idea to try something out in the interactive interpreter before you put it in a program.
    
    2.  batch mode 

        the program is prepared the same way it is in compilation; it is prepared in its entirety and stored in a file. The file containing the program is used as the input to the interpreter that analyzes the file statement by statement and executes the statements one by one.



    