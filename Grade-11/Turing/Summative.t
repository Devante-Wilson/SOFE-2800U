/*
 Devante Wilson
 May 22, 2013
 A database program that can do any of the following tasks:
 - Creating a file
 - Adding records to a file
 - Deleting records
 - Modifying fields within a record
 - Displaying a record in a file
 - Displaying contents of a file
 - Searching for a field in a record
 - Sorting records
 - Exiting the program
 The database is a marks manager for students
 */

/*
 ----------------------------
 -------Variable Table-------
 ----------------------------
 */
var font1 := Font.New ("Adobe Heiti Std R:8")
var font2 := Font.New ("Adobe Heiti Std R:5")
var font3 := Font.New ("Agency FB:15:bold,italic")
var font4 := Font.New ("Bauhaus 93:20")
var font5 := Font.New ("BankGothic Lt BT:11")
var x, y, buttonnumber, buttonupdown : int
var many, file, sum_marks, marknum, c1, o1, count : int
var filename, recordcheck, b2, option, stringav, temp, studentname : string
type recordname :
    record
	name : string
	comments : string
    end record
var key : string (1)
var students : flexible array 1 .. 1 of recordname
var mark_array : flexible array 1 .. 1 of int
var average : flexible array 1 .. 1 of int
/*--------------------------
 -------Graphics Table-------
 ----------------------------
 */
setscreen ("graphics:640;480")
proc Graphic    %Procedure for graphics to put in the subprograms (instead of pasting block of code a bunch of times)
    %Computer Screen (Intro)
    drawfillbox (265, 95, 365, 125, 29)
    drawfillbox (50, 50, 590, 450, 29)
    drawbox (50, 50, 590, 450, 7)
    drawfillbox (80, 80, 560, 420, 52)
    drawbox (80, 80, 560, 420, 7)
    drawfillbox (220, 20, 420, 50, 7)
    drawfillbox (100, 5, 540, 20, 29)
    drawbox (100, 5, 540, 20, 7)
    Font.Draw ("HP L1750", 80, 55, font1, 7)
    drawbox (520, 50, 560, 60, 7)
    drawfilloval (510, 55, 2, 2, brightgreen)
    drawoval (510, 55, 2, 2, 7)
    drawbox (450, 50, 500, 60, 7)
    drawbox (400, 50, 450, 60, 7)
    drawbox (350, 50, 400, 60, 7)
    drawbox (370, 52, 380, 58, 7)
    Font.Draw ("-", 422, 51, font1, 7)
    Font.Draw ("auto", 433, 52, font2, 7)
    Font.Draw ("+", 472, 52, font1, 7)
    Font.Draw ("input", 481, 52, font2, 7)
    drawoval (540, 55, 3, 3, 7)
    drawbox (540, 55, 540, 58, 7)
    drawbox (300, 425, 333, 445, 7)
    drawfilloval (317, 435, 8, 8, 7)
    Font.Draw ("hp", 310, 430, font3, 29)
end Graphic     %End of procedure for the graphics
proc graphicbuttons
    Font.Draw ("Welcome to Marks Manager!", 135, 390, font4, 7)
    drawfillbox (100, 325, 230, 350, 29)
    drawbox (100, 325, 230, 350, 7)
    Font.Draw ("Create file", 105, 335, font5, 7)
    drawfillbox (100, 265, 230, 290, 29)
    drawbox (100, 265, 230, 290, 7)
    Font.Draw ("Add record", 105, 275, font5, 7)
    drawfillbox (100, 205, 230, 230, 29)
    drawbox (100, 205, 230, 230, 7)
    Font.Draw ("Delete record", 105, 215, font5, 7)
    drawfillbox (100, 145, 230, 170, 29)
    drawbox (100, 145, 230, 170, 7)
    Font.Draw ("Modify field", 105, 155, font5, 7)
    drawfillbox (330, 325, 460, 350, 29)
    drawbox (330, 325, 460, 350, 7)
    Font.Draw ("Display record", 335, 335, font5, 7)
    drawfillbox (330, 265, 460, 290, 29)
    drawbox (330, 265, 460, 290, 7)
    Font.Draw ("Display file", 335, 275, font5, 7)
    drawfillbox (330, 205, 460, 230, 29)
    drawbox (330, 205, 460, 230, 7)
    Font.Draw ("Search", 335, 215, font5, 7)
    drawfillbox (330, 145, 460, 170, 29)
    drawbox (330, 145, 460, 170, 7)
    Font.Draw ("Sort records", 335, 155, font5, 7)
    drawfillbox (230, 95, 330, 120, 29)
    drawbox (230, 95, 330, 120, 7)
    Font.Draw ("Exit", 255, 105, font5, brightred)
end graphicbuttons
/*
 ----------------------------
 --------Procedures----------
 ----------------------------
 */
proc exit_menu
    drawfillbox (440, 100, 540, 125, 29)
    drawbox (440, 100, 540, 125, 7)
    Font.Draw ("Exit", 470, 110, font5, brightred)
    drawfillbox (100, 100, 200, 125, 29)
    drawbox (100, 100, 200, 125, 7)
    Font.Draw ("Menu", 130, 110, font5, blue)
    loop    %Loop incase user doesn't choose a proper selection
	buttonwait ("down", x, y, buttonnumber, buttonupdown)       %Buttonwait to see when the user wants to choose another conversion
	if x >= 440 and x <= 540 and y >= 100 and y <= 125 then     %Simple if for buttonwait
	    quit
	elsif x >= 100 and x <= 200 and y >= 100 and y <= 125 then
	    cls
	    exit
	else
	    Font.Draw ("That isn't one of the selections, try again", 125, 300, font5, red)
	end if
	%End of simple if
    end loop
    %End of loop
end exit_menu

proc create   %Procedure for creating a file
    Font.Draw ("How many students do you want to enter?", 100, 405, font5, 7)
    locate (6, 14)
    get many
    new students, many      %Assigns the upper bound of the array to the number the user enters
    new average, many       %Assigns the upper bound of the array to the number the user enters
    open : file, filename, put      %File has been opened for inputting info
    for a : 1 .. many   %Counted loop to go through each student
	Font.Draw ("Enter the student's full name (Last then first)", 100, 370, font5, 7)
	locate (8, 14)
	get students (a).name : *
	Font.Draw ("How many marks do you want to enter?", 100, 340, font5, 7)
	locate (10, 14)
	get marknum
	new mark_array, marknum     %Assigns the upper bound of the array to the number the user enters
	cls
	Graphic
	sum_marks := 0      %Initial value of the sum of the marks is set to 0 then gets the individual marks added to it
	for b : 1 .. marknum     %Counted loop to allow user to enter desired amount of marks
	    Font.Draw ("Enter mark #", 100, 405, font5, 7)
	    b2 := intstr (b)     %Turns the for loop counter to a string to put in font draw
	    Font.Draw (b2, 215, 405, font5, 7)
	    locate (6, 14)
	    get mark_array (b)
	    sum_marks := sum_marks + mark_array (b)     %Sum of the user's entered marks
	    Font.Draw ("Press any key to continue", 100, 375, font5, red)
	    locate (7, 40)
	    getch (key)
	    cls
	    Graphic
	end for
	%End of counted loop
	average (a) := sum_marks div marknum    %Average of the marks
	Font.Draw ("Enter their comments of progress", 100, 405, font5, 7)
	locate (6, 14)
	get students (a).comments : *
	cls
	Graphic
	put : file, students (a).name
	put : file, average (a)
	put : file, students (a).comments
    end for
    %End of counted loop
    close : file        %File has been closed
    exit_menu
end create

proc addingrecord       %Procedure for adding record (slightly different than creating file procedure)
    Font.Draw ("How many students do you want to enter?", 100, 405, font5, 7)
    locate (6, 14)
    get many
    new students, many      %Assigns the upper bound of the array to the number the user enters
    new average, many       %Assigns the upper bound of the array to the number the user enters
    open : file, filename, seek, mod, write
    seek : file, *      %Begins adding new records to end of existing file
    for a : 1 .. many   %Counted loop to go through each student
	Font.Draw ("Enter the student's full name (Last then first)", 100, 370, font5, 7)
	locate (8, 14)
	get students (a).name : *
	Font.Draw ("How many marks do you want to enter?", 100, 340, font5, 7)
	locate (10, 14)
	get marknum
	new mark_array, marknum     %Assigns the upper bound of the array to the number the user enters
	cls
	Graphic
	sum_marks := 0      %Initial value of the sum of the marks is set to 0 then gets the individual marks added to it
	for b : 1 .. marknum     %Counted loop to allow user to enter desired amount of marks
	    Font.Draw ("Enter mark #", 100, 405, font5, 7)
	    b2 := intstr (b)     %Turns the for loop counter to a string to put in font draw
	    Font.Draw (b2, 215, 405, font5, 7)
	    locate (6, 14)
	    get mark_array (b)
	    sum_marks := sum_marks + mark_array (b)     %Sum of the user's entered marks
	    Font.Draw ("Press any key to continue", 100, 375, font5, red)
	    locate (7, 40)
	    getch (key)
	    cls
	    Graphic
	end for
	%End of counted loop
	average (a) := sum_marks div marknum    %Average of the marks
	Font.Draw ("Enter their comments of progress", 100, 405, font5, 7)
	locate (6, 14)
	get students (a).comments : *
	cls
	Graphic
	put : file, students (a).name
	put : file, average (a)
	put : file, students (a).comments
    end for
    %End of counted loop
    close : file    %File has been closed
    exit_menu
end addingrecord

proc copyfile       %Procedure for a part of deleting records (copying records from original file to a temporary file)
    count := 1      %Counter for the array subscript
    open : o1, filename, get        %Opening the original file and retreiving info
    open : c1, "temporary.txt", put %Opening the temporary file and inputting info
    loop    %Loop to copy each record to temporary file
	exit when eof (o1)      %Exit the loop when end of file is reached
	get : o1, students (count).name : *
	get : o1, average (count)
	get : o1, students (count).comments : *
	put : c1, students (count).name
	put : c1, average (count)
	put : c1, students (count).comments
	count := count + 1      %Count gets 1 added to itself
    end loop
    %End of loop
    close : c1      %Temporary file has been closed
    close : o1      %Original file has been closed
end copyfile

proc deleterecord       %Procedure for deleting records
    copyfile
    count := 1       %Counter is set to 1 for array subscript
    open : c1, "temporary.txt", get     %Temporary file has been opened for retreiving info
    open : o1, filename, put            %Original file has been opened for inputting info
    loop        %Loop to display one record at a time
	exit when eof (c1)          %Exit the loop when end of file is reached
	get : c1, students (count).name : *
	get : c1, average (count)
	get : c1, students (count).comments : *
	Font.Draw (students (count).name, 100, 405, font5, 7)
	stringav := intstr (average (count))        %Average is converted from integer to a string
	Font.Draw (stringav, 100, 420, font5, 7)
	Font.Draw (students (count).comments, 100, 435, font5, 7)
	put "Press 'y' if this is the record to be deleted"
	get option
	if option not= "y" then     %Determines if the file should be put back on original file or not
	    put : o1, students (count).name
	    put : o1, average (count)
	    put : o1, students (count).comments
	end if
	%End of simple if
	count := count + 1      %Count gets 1 added to itself
    end loop
    %End of loop
    close : o1      %File has been closed
    close : o1      %File has been closed
    exit_menu
end deleterecord

proc displayrecord        %Procedure for displaying a record
    count := 1      %Counter for the array subscript
    open : file, filename, get          %File has been opened for retreiving info
    loop        %Loop to retreive info from the records and display them
	exit when eof (file)        %Exit the loop when end of file is reached
	get : file, students (count).name : *
	get : file, average (count)
	get : file, students (count).comments : *
	Font.Draw (students (count).name, 100, 405, font5, 7)
	stringav := intstr (average (count))        %Average is converted from integer to a string
	Font.Draw (stringav, 100, 390, font5, 7)
	Font.Draw (students (count).comments, 100, 375, font5, 7)
	Font.Draw ("Press any key to display another record", 125, 100, font5, brightred)
	locate (24, 59)
	getch (key)
	cls
	Graphic
	count := count + 1      %Count gets 1 added to itself
    end loop
    %End of loop
    close : file        %File has been closed
    exit_menu
end displayrecord

proc displayfile      %Procedure for displaying a file
    count := 1      %Counter for the array subscript
    open : file, filename, get      %File has been opened for retreiving info
    loop        %Loop to retreive info from each record
	exit when eof (file)        %Exit the loop when end of file is reached
	get : file, students (count).name : *
	get : file, average (count)
	get : file, students (count).comments : *
	Font.Draw (students (count).name, 100, 405, font5, 7)
	stringav := intstr (average (count))        %Average has been converted from integer to string
	Font.Draw (stringav, 100, 390, font5, 7)
	Font.Draw (students (count).comments, 100, 375, font5, 7)
	Font.Draw ("Press any key to display more records", 125, 100, font5, brightred)
	getch (key)
	cls
	Graphic
	count := count + 1      %Count gets 1 added to itself
    end loop
    %End of loop
    close : file        %File has been closed
    exit_menu
end displayfile

proc searching      %Procedure for searching for a name field
    count := 1  %Counter for array subscript assigned initially set to 1
    open : file, filename, get %File has been opened for retreiving info
    loop    %Loop to go through each name field
	exit when eof (file)
	get : file, students (count).name : *
	get : file, average (count)
	get : file, students (count).comments : *
	Font.Draw ("What is the student's full name?", 100, 405, font5, 7)
	locate (6, 14)
	get studentname
	if studentname = students (count).name then %If to determine whether studentname is equal to the name field
	    Font.Draw (students (count).name, 100, 375, font5, 7)
	    stringav := intstr (average (count))    %Average is converted from integer to a string
	    Font.Draw (stringav, 100, 360, font5, 7)
	    Font.Draw (students (count).comments, 100, 345, font5, 7)
	elsif studentname not= students (count).name then
		count := count + 1
	else
	    Font.Draw ("Record was not found", 200, 100, font5, brightred)
	    locate (24, 49)
	    getch (key)
	    cls
	    Graphic
	end if
	%End of complex if
    end loop
    %End of loop
end searching

proc sortingrecord      %Procedure for sorting records alphabetically (names of students)
    count := 1  %Counter for the array subscript
    open : file, filename, get      %File has been opened for retreiving info
    loop        %Loop to compare every subscript to each other
	exit when eof (file)        %Exit the loop when end of file is reached
	get : file, students (count).name : *
	if students (count).name < students (count + 1).name then       %If determines whether the names are greater than each other alphabetically
	    temp := students (count).name
	    students (count).name := students (count + 1).name
	    students (count + 1).name := temp
	end if
	%End of simple if
	count := count + 1      %Count gets 1 added to itself
    end loop
    %End of loop
    close : file      %File has been closed
    exit_menu
end sortingrecord
/*--------------------------
 -------Main Program---------
 ----------------------------
 */
loop     %Loop for buttonwait, incase the user doesn't choose a valid button
    Graphic
    graphicbuttons
    buttonwait ("down", x, y, buttonnumber, buttonupdown)       %Button wait to receive mouse button status
    if x >= 100 and x <= 230 and y >= 325 and y <= 350 then         %Complex if for choosing a task
	%--------------------Creating a file-------------------
	cls
	Graphic
	Font.Draw ("What do you want to name the file?", 100, 405, font5, 7)
	locate (6, 14)
	get filename
	cls
	Graphic
	create
    elsif x >= 100 and x <= 230 and y >= 265 and y <= 290 then
	%--------------------Adding a record------------------
	cls
	Graphic
	loop         %Loop to give the user another chance to enter a valid text file name
	    Font.Draw ("Enter the file name", 100, 405, font5, 7)
	    locate (6, 14)
	    get filename
	    if File.Exists (filename) then      %Simple if to check if the file exists
		cls
		Graphic
		addingrecord
	    else
		Font.Draw ("That file doesn't exist, press any key", 125, 100, font5, brightred)
		locate (24, 55)
		getch (key)
		cls
		Graphic
	    end if
	    %End of simple if
	    exit when File.Exists (filename)
	end loop
	%End of loop
    elsif x >= 100 and x <= 230 and y >= 205 and y <= 230 then
	%----------------Deleting a record--------------------
	cls
	Graphic
	loop         %Loop to give the user another chance to enter a valid text file name
	    Font.Draw ("Enter the file name", 100, 405, font5, 7)
	    locate (6, 14)
	    get filename
	    if File.Exists (filename) then        %Simple if to check if the file exists
		deleterecord
	    else
		Font.Draw ("That file doesn't exist, press any key", 125, 100, font5, brightred)
		locate (24, 55)
		getch (key)
		cls
		Graphic
	    end if
	    %End of simple if
	    exit when File.Exists (filename)
	end loop
	%End of loop
    elsif x >= 100 and x <= 230 and y >= 145 and y <= 170 then
	%--------------Modifying a field----------------------
	cls
	Graphic
	Font.Draw ("Sorry, modifying a field is no longer a feature", 100, 405, font5, brightred)
	exit_menu
    elsif x >= 330 and x <= 460 and y >= 325 and y <= 350 then
	%---------------Displaying a record-------------------
	cls
	Graphic
	loop            %Loop to give the user another chance to enter a valid text file name
	    Font.Draw ("Enter the file name", 100, 405, font5, 7)
	    locate (6, 14)
	    get filename
	    cls
	    Graphic
	    if File.Exists (filename) then         %Simple if to check if the file exists
		displayrecord
	    else
		Font.Draw ("That file doesn't exist, press any key", 125, 100, font5, brightred)
		locate (24, 55)
		getch (key)
		cls
		Graphic
	    end if
	    %End of simple if
	    exit when File.Exists (filename)
	end loop
	%End of loop
    elsif x >= 330 and x <= 460 and y >= 265 and y <= 290 then
	%---------------Displaying a file---------------------
	cls
	Graphic
	loop           %Loop to give the user another chance to enter a valid text file name
	    Font.Draw ("Enter the file name", 100, 405, font5, 7)
	    locate (6, 14)
	    get filename
	    if File.Exists (filename) then         %Simple if to check if the file exists
		displayfile
	    else
		Font.Draw ("That file doesn't exist, press any key", 125, 100, font5, brightred)
		locate (24, 55)
		getch (key)
		cls
		Graphic
	    end if
	    %End of simple if
	    exit when File.Exists (filename)
	end loop
	%End of loop
    elsif x >= 330 and x <= 460 and y >= 205 and y <= 230 then
	%---------------Searching for a field-----------------
	cls
	Graphic
	loop          %Loop to give the user another chance to enter a valid text file name
	    Font.Draw ("Enter the file name", 100, 405, font5, 7)
	    locate (6, 14)
	    get filename
	    if File.Exists (filename) then         %Simple if to check if the file exists
		cls
		Graphic
		searching
	    else
		Font.Draw ("That file doesn't exist, press any key", 125, 100, font5, brightred)
		locate (24, 55)
		getch (key)
		cls
		Graphic
	    end if
	    %End of simple if
	    exit when File.Exists (filename)
	end loop
	%End of loop
    elsif x >= 330 and x <= 460 and y >= 145 and y <= 170 then
	%---------------Sorting records----------------------
	cls
	Graphic

	loop            %Loop to give the user another chance to enter a valid text file name
	    Font.Draw ("Enter the file name", 100, 405, font5, 7)
	    locate (6, 14)
	    get filename
	    if File.Exists (filename) then         %Simple if to check if the file exists
		sortingrecord
	    else
		Font.Draw ("That file doesn't exist, press any key", 125, 100, font5, brightred)
		locate (24, 55)
		getch (key)
		cls
		Graphic
	    end if
	    %End of simple if
	    exit when File.Exists (filename)
	end loop
	%End of loop
    elsif x >= 230 and x <= 330 and y >= 95 and y <= 120 then
	quit
    end if
    %End of complex if
end loop
%End of loop

