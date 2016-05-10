%Devante Wilson
%November 4, 2011
%Displays a circle on the screen in a random colour

%----------Variable Table----------
var Colour : int

%----------Main Program----------
setscreen ("graphics")
randint (Colour, 1, 16)
drawfilloval (240, 320, 20, 20, Colour)

