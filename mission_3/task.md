# Mission 3

<img src="http://www.ais.up.ac.za/human/books3.gif" width="300px" height="200px" />

### Overview

Create a program for library management. Cover below scenarios. When the program is executed a library is started with 10 books.

User is shown the main menu with below options.

* 1. View all books.
* 2. View all members.
* 3. Issue book to a member.
* 3. Check book availability.
* 4. Accept book returned by a member.
* 5. Add book.

### Example flow of the app.

	-------
	Welcome to world's best library. Choose an option.
	-------
	1. View all books.
	2. View all members.
	3. Issue book to a member.
	4. Check book availability.
	5. Accept book returned by a member.
	6. Add book.

	1.

	Book Id : Book Name : Author   		 : Taken? : Taken By?
	1 		  : Book 1    : Ayn Rand 		 : Yes    : Harshal
	2 		  : Book 2    : John Grisham : No     : -
	3 		  : Book 3    : David.B			 : Yes    : Harshal
	4 		  : Book 4    : Sam					 : No     : -
  
	2.

	Student Id : Student Name    : Pending Books
	1          : Batman  				 : 1
	2          : Superman  			 : 0
	3          : Ironman  			 : 2

	3.

	Enter member id: 2
		Member found: Superman
	Enter book id to assign: 1
		That book is not available. Sorry.
	Enter book id to assign: 2
		Book 2 assigned to Superman.

	4.

	Enter book id to check availability: 2
		That book is not available.

	5.

	Enter book id to return: 2
		Book successfully marked as returned.

	6.

	Enter name of the new book: The Fountainhead
	Enter author name: John Grisham

	A new book entry created. Book Id  assigned is 12.

### Program Details

Create a file main.rb and it should only have below code.

	library = Library.new load_library_from_yaml
	library.start()

List down below points.

* Classes required.
* Attributes required for each class.
* Functions required for each class.

### Notes

* Code should be indented & comments should be put in wherever required.

### Extra Credit

* Difference between require & load.
* Difference between instance method & class method.
* Difference between private & public instance methods.
* Check book.rb and submit a file providing required explanation.

Provide example code for each of the above.