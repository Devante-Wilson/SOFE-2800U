%Devante Wilson
%February 20, 2013

%Mortgage Bank Program
%A introduction screen shows displays the bank logo.
%Program asks the user to enter their account informaton such as credit/debit card number, username, and password in a web page like screen.
%It then asks them the amount of money they require for their mortgage.
%The bank then assigns an interest rate and the amount of money they need to pay per year.
%The program displays a table showing the balance they owe at the beginning of each year,
%the amount of interest due at the end of the year, and then the new balance after the payment is received.
%The table ends when the mortgage is paid in full
%A screen will then display showing the user that the calculation is complete.
%It will then ask if there is another user wanting to enter their info or whether the bank should close for the day.
%A final closing screen shows up telling the user the bank will be open tomorrow

setscreen ("graphics:704;528")

%----------Variable Table----------
var logo := Font.New ("Arial Unicode MS:77:bold")
var logo2 := Font.New ("Adobe Heiti Std R:50:bold")
var logo3 := Font.New ("Agency FB:45:underline")
var logo4 := Font.New ("Agency FB:36")
var logo5 := Font.New ("calibri:15")
var logo6 := Font.New ("calibri:10")
var logo7 := Font.New ("calibri:30:bold")
var logo8 := Font.New ("Adobe Heiti Std R:60")
var logo9 := Font.New ("Adobe Heiti Std R:40:bold")
var logo10 := Font.New ("calibri:12")
var user, pass, card : string
var mort, year, interesto, tmort, yrpay, closingb, openingb, rate : real
var key : string (1)
%End of variable table

%Intro Screen
loop
    drawfillbox (25, 260, 175, 410, 2)
    Draw.Text ("T", 33, 300, logo, white)
    Draw.Text ("D", 85, 300, logo, white)
    drawfillbox (90, 357, 105, 362, 2)
    Draw.Text ("Canada", 195, 300, logo2, 192)
    Draw.Text ("Trust", 445, 300, logo2, 192)
    Draw.Text ("Welcome to:", 225, 450, logo3, 7)
    Draw.Text ("Banking can be this comfortable", 80, 210, logo4, 7)
    Draw.Text ("Username", 100, 160, logo5, 7)
    Draw.Text ("(Hint:First name)", 100, 142, logo6, 7)
    Draw.Text ("Password", 100, 110, logo5, 7)
    Draw.Text ("(Hint:Last name)", 100, 92, logo6, 7)
    Draw.Text ("Card Number", 100, 60, logo5, 7)
    Draw.Text ("(Put student number or something)", 65, 42, logo6, 7)
    drawbox (270, 155, 390, 180, 7)
    drawbox (270, 95, 390, 120, 7)
    drawbox (270, 45, 390, 70, 7)
    locate (23, 35)
    get user
    locate (27, 35)
    get pass
    locate (30, 35)
    get card
    %Counted Loop (Loading bar; simply for aesthetics)
    for count : 0 .. 528 %Replaces the y2 value with the next number in the counter each loop
	drawfillbox (644, 0, 704, count, 54)
	delay (3)
    end for
    cls
    %End of intro screen

    %Mortgage input screen
    drawfillbox (0, 0, 704, 528, 15)
    drawfillbox (120, 0, 520, 528, 2)
    drawfillbox (130, 190, 510, 410, 11)
    Draw.Text ("Please select your mortgage amount", 165, 395, logo5, 7)
    drawfillbox (205, 420, 432, 521, white)
    drawfillbox (210, 425, 427, 516, 2)
    Draw.Text ("$", 220, 442, logo8, white)
    Draw.Text ("reen", 265, 485, logo7, white)
    Draw.Text ("machine", 265, 460, logo7, white)
    Draw.Text ("o", 228, 472, logo9, white)
    Draw.Text ("Mortgage Amount            Interest Rate            Payment per year", 145, 345, logo6, 7)
    Draw.Text ("$0-100,000                   3.5%                $15,000", 145, 315, logo10, 7)
    Draw.Text ("$100,001-200,000         5.5%                $20,000", 145, 280, logo10, 7)
    Draw.Text ("$200,001-300,000         6.5%                $30,000", 145, 245, logo10, 7)
    Draw.Text ("$300,001-500,000         7.5%                $45,000", 145, 210, logo10, 7)
    drawfillbox (50, 355, 110, 390, gray)
    drawfillbox (50, 295, 110, 330, gray)
    drawfillbox (50, 235, 110, 270, gray)
    drawfillbox (50, 175, 110, 210, gray)
    drawfillbox (530, 355, 590, 390, gray)
    drawfillbox (530, 295, 590, 330, gray)
    drawfillbox (530, 235, 590, 270, gray)
    drawfillbox (530, 175, 590, 210, gray)
    drawfillbox (165, 150, 225, 185, gray)
    Font.Draw ("1", 170, 155, logo7, 7)
    drawfillbox (165, 105, 225, 140, gray)
    Font.Draw ("4", 170, 110, logo7, 7)
    Font.Draw ("GHI", 190, 125, logo10, 7)
    drawfillbox (165, 60, 225, 95, gray)
    Font.Draw ("7", 170, 65, logo7, 7)
    Font.Draw ("PRS", 190, 80, logo10, 7)
    drawfillbox (165, 15, 225, 50, gray)
    Font.Draw ("*", 170, 20, logo7, 7)
    drawfillbox (235, 150, 295, 185, gray)
    Font.Draw ("2", 240, 155, logo7, 7)
    Font.Draw ("ABC", 260, 170, logo10, 7)
    drawfillbox (235, 105, 295, 140, gray)
    Font.Draw ("5", 240, 110, logo7, 7)
    Font.Draw ("JKL", 260, 125, logo10, 7)
    drawfillbox (235, 60, 295, 95, gray)
    Font.Draw ("8", 240, 65, logo7, 7)
    Font.Draw ("TUV", 260, 80, logo10, 7)
    drawfillbox (235, 15, 295, 50, gray)
    Font.Draw ("0", 240, 20, logo7, 7)
    Font.Draw ("QZ", 260, 35, logo10, 7)
    drawfillbox (305, 150, 365, 185, gray)
    Font.Draw ("3", 310, 155, logo7, 7)
    Font.Draw ("DEF", 330, 170, logo10, 7)
    drawfillbox (305, 105, 365, 140, gray)
    Font.Draw ("6", 310, 110, logo7, 7)
    Font.Draw ("MNO", 330, 125, logo10, 7)
    drawfillbox (305, 60, 365, 95, gray)
    Font.Draw ("9", 310, 65, logo7, 7)
    Font.Draw ("WXY", 330, 80, logo10, 7)
    drawfillbox (305, 15, 365, 50, gray)
    Font.Draw ("#", 320, 25, logo7, 7)
    drawfillbox (385, 150, 445, 185, brightred)
    Font.Draw ("Cancel", 390, 165, logo10, 7)
    drawfillbox (385, 105, 445, 140, 44)
    Font.Draw ("Clear", 390, 120, logo10, 7)
    drawfillbox (385, 60, 445, 95, brightgreen)
    Font.Draw ("Enter", 390, 75, logo10, 7)
    drawfillbox (385, 15, 445, 50, gray)
    %End of mortgage input screen

    %----------Main Program----------

    %Complex If Structure
    locate (10, 35)
    get mort
    if mort >= 0 and mort <= 100000 then %Assigns an amount to year, assigns an interest rate, and assigns a yearly payment to the mortgage amount entered
	year := 0
	rate := 0.035
	yrpay := 15000
	cls
    elsif mort >= 100001 and mort <= 200000 then
	year := 0
	rate := 0.055
	yrpay := 20000
	cls
    elsif mort >= 200001 and mort <= 300000 then
	year := 0
	rate := 0.065
	yrpay := 30000
	cls
    elsif mort >= 300001 and mort <= 500000 then
	year := 0
	rate := 0.075
	yrpay := 45000
	cls
    elsif mort < 0 or mort > 500000 then
	Draw.Text ("That is not a valid option, press a key to quit", 200, 195, logo6, brightred)
	getch (key)
	quit
    end if
    %End of complex if structure

    openingb := mort %Assigns the mortgage amount entered to opening balance

    %Complex If Structure
    if mort < 15000 then
	yrpay := openingb %In case the mortgage amount entered is lower than the static yearly payment amount assigned to it,
	%it makes the mortgage amount equal to that yearly payment
    elsif mort > 15000 and mort < 20000 then
	yrpay := openingb
    elsif mort > 20000 and mort < 30000 then
	yrpay := openingb
    elsif mort > 30000 and mort < 45000 then
	yrpay := openingb
    end if
    %End of complex if structure

    %Graphics that will be overlapped if in the graphics table
    put ""
    put ""
    put ""
    put ""
    put ""
    put ""
    Draw.Text ("Year", 50, 450, logo10, 2)
    Draw.Text ("Opening", 150, 450, logo10, 2)
    Draw.Text ("Balance($)", 150, 435, logo10, 2)
    Draw.Text ("Interest", 260, 450, logo10, 2)
    Draw.Text ("Owed($)", 260, 435, logo10, 2)
    Draw.Text ("Total", 370, 450, logo10, 2)
    Draw.Text ("Mortgage($)", 370, 435, logo10, 2)
    Draw.Text ("Yearly", 490, 450, logo10, 2)
    Draw.Text ("Payment($)", 490, 435, logo10, 2)
    Draw.Text ("Closing", 610, 450, logo10, 2)
    Draw.Text ("Balance($)", 610, 435, logo10, 2)

    %Conditional Loop
    loop
	Draw.Text ("$ Mortgage Summary $", 170, 480, logo3, 2)
	year := year + 1 %Year number increases by 1 each loop
	interesto := openingb * rate %Interest owed is equal to the opening balance multiplied by the interest rate assigned earlier
	tmort := openingb + interesto %Total mortgage amount is equal go the opening balance and the interest owed added togethter
	%Simple If Structure
	if tmort < yrpay then %If structure basically to eliminate the possibility of a negative
	    yrpay := tmort
	end if
	%End of simple if structure
	closingb := tmort - yrpay %Closing balance is equal to the difference between the total mortgage amount and the yearly payment
	put "       ", year, openingb : 20 : 2, interesto : 13 : 2, tmort : 15 : 2, yrpay : 15 : 2, closingb : 13 : 2
	openingb := closingb %The opening balance is replaced with closing balance from the previous year each loop
	drawbox (10, 30, 694, 465, 2)
	drawline (10, 430, 694, 430, 2)
	drawline (124, 30, 124, 465, 2)
	drawline (238, 30, 238, 465, 2)
	drawline (352, 30, 352, 465, 2)
	drawline (466, 30, 466, 465, 2)
	drawline (580, 30, 580, 465, 2)
	%Simple If Structure
	if closingb = 0 then %Prompts the user to continue whenever they are finished reading the mortgage table
	    Draw.Text ("Press any key to continue", 225, 6, logo5, 7)
	    locate (33, 57)
	    getch (key)
	    cls
	    exit
	end if
	%End of simple if structure
    end loop
    %End of loop

    %Closing screen
    drawfillbox (25, 260, 175, 410, 2)
    Draw.Text ("T", 33, 300, logo, white)
    Draw.Text ("D", 85, 300, logo, white)
    drawfillbox (90, 357, 105, 362, 2)
    Draw.Text ("Canada", 195, 300, logo2, 192)
    Draw.Text ("Trust", 445, 300, logo2, 192)
    Draw.Text ("Thank you for banking @", 200, 450, logo4, 7)

    %Simple if structure
    Draw.Text ("Is there another user to be entered? (y/n)", 20, 190, logo4, 7)
    locate (21, 86)
    getch (key)
    cls
    if key = "n" or key = "N" then
	drawfillbox (25, 260, 175, 410, 2)
	Draw.Text ("T", 33, 300, logo, white)
	Draw.Text ("D", 85, 300, logo, white)
	drawfillbox (90, 357, 105, 362, 2)
	Draw.Text ("Canada", 195, 300, logo2, 192)
	Draw.Text ("Trust", 445, 300, logo2, 192)
	Draw.Text ("Thank you again for banking @", 200, 450, logo4, 7)
	Draw.Text ("We will be open again tomorrow!", 80, 190, logo7, 7)
	exit
    end if
end loop




