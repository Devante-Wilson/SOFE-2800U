%Devante Wilson
%November 09, 2011
%Displays 40 small circles in the middle of the screen from left to right

%----------Variable Table----------
var Colour, x : int

%----------Main Program----------
setscreen ("graphics")
for count : 10 .. 600 by 15
    randint (Colour, 1, 255)
    randint (x, 5, 600)
    drawfilloval (count, 200, 10, 10, Colour)
end for
