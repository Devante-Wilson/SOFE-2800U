/*
 Devante Wilson
 April 26, 2013
 The program is a number system converter, using only subroutines (Procedures and Functions).
 It converts between any of the three main number systems; decimal, binary, and hexadecimal.
 Use functions for binary to decimal and decimal to hex
 */

/*
 ---------------------------------------
 --------------Variable Table-----------
 ---------------------------------------
 */
var font1 := Font.New ("Adobe Heiti Std R:8")
var font2 := Font.New ("Adobe Heiti Std R:5")
var font3 := Font.New ("Agency FB:15:bold,italic")
var font4 := Font.New ("Bauhaus 93:20")
var font5 := Font.New ("BankGothic Lt BT:12")
var x, y, buttonnumber, buttonupdown : int
var num1, DTB2 : int
var num1c, num2c, num2 : string
/*
 ----------------------------------------
 -------------Graphics Table-------------
 ----------------------------------------
 */

setscreen ("graphics:640;480")

proc Graphic    %Procedure for graphics to put in the subprograms (instead of pasting block of code a bunch of times)
    %Computer Screen (Intro)
    % monitor frame
    drawfillbox (50, 50, 590, 450, 29)
    drawbox (50, 50, 590, 450, 7)
    % monitor screen
    drawfillbox (80, 80, 560, 420, 52)
    drawbox (80, 80, 560, 420, 7)
    % black stem
    drawfillbox (220, 20, 420, 50, 7)
    % gray platform
    drawfillbox (100, 5, 540, 20, 29)
    drawbox (100, 5, 540, 20, 7)
    % model decal
    Font.Draw ("HP L1750", 80, 55, font1, 7)
    % power button w/ symbol
    drawbox (520, 50, 560, 60, 7)
    drawoval (540, 55, 3, 3, 7)
    drawline (540, 55, 540, 58, 7)
    % power light
    drawfilloval (510, 55, 2, 2, brightgreen)
    % input button w/ + symbol
    drawbox (450, 50, 500, 60, 7)
    Font.Draw ("+", 472, 52, font1, 7)
    Font.Draw ("input", 481, 52, font2, 7)
    % auto button w/ - symbol
    drawbox (400, 50, 450, 60, 7)
    Font.Draw ("-", 422, 51, font1, 7)
    Font.Draw ("auto", 433, 52, font2, 7)
    % 1st button
    drawbox (350, 50, 400, 60, 7)
    drawbox (370, 52, 380, 58, 7)
    % hp logo
    drawbox (300, 425, 333, 445, 7)
    drawfilloval (317, 435, 8, 8, 7)
    Font.Draw ("hp", 310, 430, font3, 29)
end Graphic     %End of procedure for the graphics

Graphic
Font.Draw ("Please choose a conversion", 150, 380, font4, 7)
%Buttons
drawfillbox (125, 200, 225, 225, 29)
drawbox (125, 200, 225, 225, 7)
Font.Draw ("Dec to Bin", 130, 210, font5, 7)
drawfillbox (125, 150, 225, 175, 29)
drawbox (125, 150, 225, 175, 7)
Font.Draw ("Bin to Dec", 130, 160, font5, 7)
drawfillbox (260, 200, 360, 225, 29)
drawbox (260, 200, 360, 225, 7)
Font.Draw ("Bin to Hex", 265, 210, font5, 7)
drawfillbox (260, 150, 360, 175, 29)
drawbox (260, 150, 360, 175, 7)
Font.Draw ("Hex to Bin", 265, 160, font5, 7)
drawfillbox (395, 200, 495, 225, 29)
drawbox (395, 200, 495, 225, 7)
Font.Draw ("Dec to Hex", 400, 210, font5, 7)
drawfillbox (395, 150, 495, 175, 29)
drawbox (395, 150, 495, 175, 7)
Font.Draw ("Hex to Dec", 400, 160, font5, 7)
proc exit_button
    drawfillbox (440, 100, 540, 125, 29)
    drawbox (440, 100, 540, 125, 7)
    Font.Draw ("Exit", 470, 110, font5, brightred)
end exit_button
exit_button
proc menu_return
    drawfillbox (100, 100, 200, 125, 29)
    drawbox (100, 100, 200, 125, 7)
    Font.Draw ("Menu", 130, 110, font5, blue)
end menu_return
/*--------------------------------------
 --------Procedures & Functions---------
 ---------------------------------------
 */

%----------Decimal to Binary------------
proc DecBin (DTB : int)
    DTB2 := DTB     %Assigned another variable equal to the formal parameter to manipulate during the procedure
    loop    %Loop to apply calculations repeatively until the result = 0
	if DTB2 mod 2 = 1 then      %Simple if checks for a certain number of decimal places
	    put "1" ..
	else
	    put "0" ..
	end if
	DTB2 := DTB2 div 2   %Number entered is now assigned to find the result
	exit when DTB2 = 0
    end loop
end DecBin

%----------Binary to Decimal------------
fcn BinDec (BTD : string) : int
    var BTD2, b : int := 0
    for decreasing a : length (BTD) .. 1    %Counted loop checks each character's position
	if BTD (a) = "1" then       %Simple if to apply calculations based on the bit and position
	    BTD2 := (2 ** (b) + BTD2)
	    b += 1      %b gets 1 added to itself as
	elsif BTD (a) = "0" then
	    b += 1
	else
	    Font.Draw ("Not a base 2 number!", 125, 250, font5, red)
	end if
    end for
    result BTD2
end BinDec
%----------Binary to Hexadecimal--------

%----------Hexadecimal to Binary--------

%----------Decimal to Hexadecimal-------

%----------Hexadecimal to Decimal-------

/*--------------------------------------
 ------------Main Program---------------
 ---------------------------------------
 */
loop         %Loop for menu button
    loop         %Loop for main program in case the user doesn't select a valid sub program
	buttonwait ("down", x, y, buttonnumber, buttonupdown)         %buttonwait for selecting the program

	if x >= 125 and x <= 225 and y >= 200 and y <= 225 then         %Complex if determines what subprogram button is pressed
	    cls
	    Graphic         %Calling procedure for the block of code for graphics
	    menu_return
	    exit_button
	    Font.Draw ("Please enter a Base 10 number:", 125, 380, font5, 7)
	    Font.Draw ("The Binary equivalent is: ", 125, 308, font5, 7)
	    loop         %Loop for strintok
		locate (9, 17)
		get num1c
		exit when strintok (num1c)
		Font.Draw ("Not a base 10 number!", 125, 250, font5, red)
	    end loop
	    %End of loop
	    num1 := strint (num1c)
	    locate (11, 45)
	    DecBin (num1)
	    exit
	elsif x >= 125 and x <= 225 and y >= 150 and y <= 175 then
	    cls
	    Graphic
	    menu_return
	    exit_button
	    Font.Draw ("Please enter a Base 2 number:", 125, 380, font5, 7)
	    Font.Draw ("The Decimal equivalent is: ", 125, 308, font5, 7)
	    locate (9, 17)
	    get num2
	    locate (11, 45)
	    put BinDec (num2)
	    exit
	elsif x >= 260 and x <= 360 and y >= 200 and y <= 225 then
	    cls
	    Graphic
	    menu_return
	    exit_button
	    exit
	elsif x >= 260 and x <= 360 and y >= 150 and y <= 175 then
	    cls
	    Graphic
	    menu_return
	    exit_button
	    exit
	elsif x >= 395 and x <= 495 and y >= 200 and y <= 225 then
	    cls
	    Graphic
	    menu_return
	    exit_button
	    exit
	elsif x >= 395 and x <= 495 and y >= 150 and y <= 175 then
	    cls
	    Graphic
	    menu_return
	    exit_button
	    exit
	elsif x >= 440 and x <= 540 and y >= 100 and y <= 125 then
	    quit
	else
	    Font.Draw ("That isn't one of the selections, try again", 125, 300, font5, red)
	end if
	%End of complex if
    end loop
    %End of loop
    buttonwait ("down", x, y, buttonnumber, buttonupdown)         %Mouse where to see when the user wants to choose another conversion
    if x >= 440 and x <= 540 and y >= 100 and y <= 125 then
	quit
    elsif x >= 440 and x <= 540 and y >= 100 and y <= 125 then
    else
    end if
    %End of simple if
end loop
%End of loop
