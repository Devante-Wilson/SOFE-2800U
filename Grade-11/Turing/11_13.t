%Devante Wilson
%Feb 19,2013
%Displays chart with the squares (x^2) and cubes (x^3) of numbers from 5 to 40

var row : int := 0
var key : string (1)

put "   Number" : 20, "Square" : 20, "Cube"
put "---------------------------------------------"

for num : 5 .. 40
    put num : 5, num ** 2 : 20, num ** 3 : 20
    row := row + 1

    if row = 20 then
	put "Press any key to see the rest of the chart"
	getch (key)
	cls
	row := 0
    end if
end for
