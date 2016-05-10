%Devante Wilson
%February 19,2013
%Program accepts the length and width of a rectangle and displays it on the screen

var L, W : int
var key : string (1)

loop
    put "Please enter a length of a rectangle less than 630."
    get L
    put "Please enter a width of a rectangle less than 470."
    get W
    drawbox (10, 10, L + 10, W + 10, cyan)
    put "Do you want to do this again? (y/n)"
    getch (key)
    cls
    if key = "n" or key = "N" then
	exit
    end if
end loop
