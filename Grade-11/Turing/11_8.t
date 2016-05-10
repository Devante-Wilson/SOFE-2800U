%Devante Wilson
%Feb 19,2013
%Prints my name 100 times all over the screen in different colours

setscreen ("graphics")

var font := Font.New ("calibri:12")
var col, x, y : int

for count : 1 .. 100
    randint (col, 1, 255)
    randint (x, 0, 640)
    randint (y, 0, 480)

    Draw.Text ("Devante", x, y, font, col)
end for
