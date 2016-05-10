%Devante Wilson
%October 24, 2011
%Gives user a menu to pick from then tells them the price of the item

%----------Variable Table----------
var item : int

%----------Main Program----------
put "           Please make a selection from the menu"
put ""
put "(1)    juice,muffin,coffee"
put "(2)    cereal,toast,milk"
put "(3)    egg,toast,coffee"
put "(4)    banana,granola,milk"
put "(5)    grapefruit,bacon,eggs,coffee"
locate (9, 1)
get item
if item = 1
	then
    put ""
    put "Item 1 is $2.50"
elsif item = 2
	then
    put ""
    put "Item 2 is $2.50"
elsif item = 3
	then
    put ""
    put "Item 3 is $3.00"
elsif item = 4
	then
    put ""
    put "Item 4 is $3.50"
elsif item = 5
	then
    put ""
    put "Item 5 is $5.00"
end if
