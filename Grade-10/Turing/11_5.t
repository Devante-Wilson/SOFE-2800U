%Devante Wilson
%November 7,2011
%user enters length and width of a rectangle and program draws it at (10,10)

%----------Variable Table----------
var l, w : int
var answer : string (1)

%----------Main Program----------
loop
put "Please enter the length of a rectangle less than 630"
put "Please enter the width of a rectangle less than 470"
    get l
    get w
    drawfillbox (10, 10, l, w, 7)
    put "Do you want to exit?       y/n"
    get answer
    if answer = "y" or answer = "Y" then
	exit
	else
	cls
    end if
end loop
