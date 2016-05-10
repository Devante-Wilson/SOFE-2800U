%Devante Wilson
%November 8, 2011
%Prints users name 100 times all over screen in different colours

%----------Variable Table----------
var Colour, x, y, font : int
font := Font.New ("Calibri:12")

%----------Main Program----------
setscreen ("graphics")
for count : 1 .. 100
    randint (Colour, 1, 255)
    randint (x, 1, 600)
    randint (y, 1, 400)
    Font.Draw ("Devante", x, y, font, Colour)
end for
