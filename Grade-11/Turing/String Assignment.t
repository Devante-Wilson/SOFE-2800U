%Devante Wilson
%March 20,2013
%Program allows the user to choose between two different subprograms.
%One of the subprograms outputs the middle letter of a word the user enters if that word has an odd number of letters.
%If the word has an even number of letters, then the sub program will output the two middle letters.
%The other subprogram takes user's input (a word or sentence) then changes the uppercase letters to lowercase and vise-versa
%When the user is done looking at the program, they will be prompted to continue and choose another program or quit

loop %Loops entire program
    %----------------------------------
    %----------Variable Table----------
    %----------------------------------

    var program : string
    var test, newtest, letter, newletter, word : string
    var font1 := Font.New ("Adobe Heiti Std R:20:bold")
    var font2 := Font.New ("Agency FB:18")
    var font3 := Font.New ("Calibri:12")
    var font4 := Font.New ("Calibri:12:bold")
    var font5 := Font.New ("BankGothic Lt BT:14")
    var font6 := Font.New ("Adobe Heiti Std R:8")
    var font7 := Font.New ("Adobe Heiti Std R:5")
    var x, y, buttonnumber, buttonupdown : int
    var key : string (1)
    var deci : real
    %End of variable table

    %----------------------------------
    %----------Graphics Table----------
    %----------------------------------

    setscreen ("graphics:640;480")
    %Intro Screen
    drawfillbox (0, 0, 640, 480, 53)
    Font.Draw ("Welcome to String Functions!", 125, 430, font1, white)
    Font.Draw ("Please choose a program", 225, 370, font2, 7)
    Font.Draw ("Middle Letters", 265, 320, font2, 44)
    Font.Draw ("This program outputs the middle letter of a word or sentence you enter", 125, 300, font3, 7)
    Font.Draw ("(if it has an odd # of letters).", 125, 285, font3, 7)
    Font.Draw ("If the word has an even amount of letters,", 320, 285, font3, 7)
    Font.Draw ("the two middle letters will be displayed.", 125, 270, font3, 7)
    drawfillbox (265, 220, 365, 250, 29)
    drawbox (265, 220, 365, 250, 7)
    Font.Draw ("Click me!", 285, 230, font3, 7)
    Font.Draw ("Upper/Lower", 265, 180, font2, brightgreen)
    Font.Draw ("This program simply changes all the capital letters to lowercase", 125, 160, font3, 7)
    Font.Draw ("and vise-versa in a sentence or word you enter.", 125, 145, font3, 7)
    drawfillbox (265, 95, 365, 125, 29)
    drawbox (265, 95, 365, 125, 7)
    Font.Draw ("Click me!", 285, 105, font3, 7)
    drawfillbox (480, 30, 580, 60, 29)
    drawbox (480, 30, 580, 60, 7)
    Font.Draw ("Exit", 515, 40, font4, brightred)
    Font.Draw ("strint", 10, 420, font5, 7)
    Font.Draw ("strintok", 10, 360, font5, 7)
    Font.Draw ("instr", 10, 300, font5, 7)
    Font.Draw ("strreal", 10, 240, font5, 7)
    Font.Draw ("intreal", 10, 180, font5, 7)
    Font.Draw ("realstr", 10, 120, font5, 7)
    Font.Draw ("chr", 10, 60, font5, 7)
    Font.Draw ("ord", 10, 10, font5, 7)
    %End of graphics table

    %--------------------------------
    %----------Main Program----------
    %--------------------------------

    buttonwait ("down", x, y, buttonnumber, buttonupdown)     %Buttonwait for selecting the program

    %Complex if structure
    if x >= 265 and x <= 365 and y >= 95 and y <= 125 then
	cls

	%----------Subprogram #1 (Upper/Lower)-----------

	drawfillbox (0, 0, 640, 480, 53)

	drawfillbox (50, 50, 590, 450, 29)
	drawbox (50, 50, 590, 450, 7)
	drawfillbox (80, 80, 560, 420, 52)
	drawbox (80, 80, 560, 420, 7)
	drawfillbox (220, 20, 420, 50, 7)
	drawfillbox (100, 5, 540, 20, 29)
	drawbox (100, 5, 540, 20, 7)
	Font.Draw ("HP L1750", 80, 55, font6, 7)
	drawbox (520, 50, 560, 60, 7)
	drawfilloval (510, 55, 2, 2, brightgreen)
	drawbox (450, 50, 500, 60, 7)
	drawbox (400, 50, 450, 60, 7)
	drawbox (350, 50, 400, 60, 7)
	drawbox (370, 52, 380, 58, 7)
	Font.Draw ("-", 422, 51, font6, 7)
	Font.Draw ("auto", 433, 52, font7, 7)
	Font.Draw ("+", 472, 52, font6, 7)
	Font.Draw ("input", 481, 52, font7, 7)
	drawoval (540, 55, 3, 3, 7)
	drawbox (540, 55, 540, 58, 7)
	Font.Draw ("Please enter a word or a sentence", 200, 380, font2, 7)
	locate (9, 15)
	get test : *

	newtest := ""     %Assigns a null string to newtest

	%Counted loop
	for i : 1 .. length (test)
	    letter := test (i)
	    %Complex if statement
	    if letter >= chr (97) and letter < chr (123) then
		newletter := chr (ord (letter) - 32)     %letter gets converted from lowercase to uppercase; new character is put in newletter
	    elsif letter >= chr (65) and letter < chr (90) then
		newletter := chr (ord (letter) + 32)     %letter gets converted from uppercase to lowercase; new character is put in newletter
	    else
		newletter := letter     %If the character entered isn't a letter, nothing gets changed
	    end if
	    %End of if
	    newtest := newtest + newletter     %Sets newtest to the new letter added to itself
	end for
	%End of counted loop

	Font.Draw ("The new output is: ", 100, 200, font2, 7)
	Font.Draw (newtest, 245, 200, font2, 7)
	Font.Draw ("Press any key for the menu", 190, 112, font2, 7)
	locate (23, 51)
	getch (key)
	cls
	%End of subprogram #1

    elsif x >= 265 and x <= 365 and y >= 220 and y <= 250 then
	cls
	%----------Subprogram #2 (Middle Letters)----------

	drawfillbox (0, 0, 640, 480, 53)
	drawfillbox (50, 50, 590, 450, 29)
	drawbox (50, 50, 590, 450, 7)
	drawfillbox (80, 80, 560, 420, 52)
	drawbox (80, 80, 560, 420, 7)
	drawfillbox (220, 20, 420, 50, 7)
	drawfillbox (100, 5, 540, 20, 29)
	drawbox (100, 5, 540, 20, 7)
	Font.Draw ("HP L1750", 80, 55, font6, 7)
	drawbox (520, 50, 560, 60, 7)
	drawfilloval (510, 55, 2, 2, brightgreen)
	drawoval (510, 55, 2, 2, 7)
	drawbox (450, 50, 500, 60, 7)
	drawbox (400, 50, 450, 60, 7)
	drawbox (350, 50, 400, 60, 7)
	drawbox (370, 52, 380, 58, 7)
	Font.Draw ("-", 422, 51, font6, 7)
	Font.Draw ("auto", 433, 52, font7, 7)
	Font.Draw ("+", 472, 52, font6, 7)
	Font.Draw ("input", 481, 52, font7, 7)
	drawoval (540, 55, 3, 3, 7)
	drawbox (540, 55, 540, 58, 7)
	Font.Draw ("Please enter a word or a sentence", 200, 380, font2, 7)
	locate (9, 15)
	get word : *

	deci := length (word) mod 2 %Equation for determining whether string entered is an even number and puts the number of decimals in deci

	%Simple if statement
	if deci = 0 then %Determines if string entered is an even number or not
	    Font.Draw ("The two middle letters are:", 100, 200, font2, 7)

	    %Simple if statement
	    if word (length (word) div 2) = " " then %If the character is a space it outputs (space) instead of a blank spot
		Font.Draw ("(space)", 310, 200, font2, 7)
	    else
		Font.Draw (word (length (word) div 2), 310, 200, font2, 7)
	    end if
	    %End of if

	    Font.Draw (" and ", 370, 200, font2, 7)

	    %Simple if statement
	    if word (length (word) div 2 + 1) = " " then %If the character is a space it outputs (space) instead of a blank spot
		Font.Draw ("(space)", 410, 200, font2, 7)
	    else
		Font.Draw (word (length (word) div 2 + 1), 410, 200, font2, 7)
	    end if
	    %End of if

	else
	    Font.Draw ("The middle letter is:", 100, 200, font2, 7)

	    %Simple if statement
	    if word (length (word) div 2 + 1) = " " then %If the character is a space it outputs (space) instead of a blank spot
		Font.Draw ("(space)", 275, 200, font2, 7)
	    else
		Font.Draw (word (length (word) div 2 + 1), 275, 200, font2, 7)
	    end if
	    %End of if

	end if
	%End of if

	Font.Draw ("Press any key for the menu", 190, 112, font2, 7)
	locate (23, 51)
	getch (key)
	cls
	%End of subprogram #2

    elsif x >= 480 and x <= 580 and y >= 30 and y <= 60 then
	quit
    else
	Font.Draw ("That isn't one of the selections, try again", 125, 40, font2, red)
    end if
    %End of if
end loop
%End of program
