%Devante Wilson
%November 1,2011
%User enters a shape and displays it

%----------Variable Table----------
var shape : string

%----------Main Program----------
put "Enter a shape"
put ""
get shape
case shape of
    label "Circle", "circle" :
	drawfilloval (240, 320, 30, 30, red)
    label "Square", "square" :
	drawfillbox (200, 230, 200, 230, blue)
    label "Star", "star" :
	drawfillstar (240, 320, 270, 350, 6)
end case

