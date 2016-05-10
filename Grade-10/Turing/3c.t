%Devante Wilson
%October 7,2011
%Asks user for the cost and weight of an item then displays the cost per unit of that item

%----------Variable Table----------
var Mass, Cost, unit_cost : real
var item : string

%----------Main Program----------
put "What is the name of the item?"
get item : *
put "What is the mass of ", item, " in grams?"
get Mass
put "What is the cost in dollars"
get Cost
unit_cost := Cost / Mass
put "The unit cost of ", item, " is $ ", unit_cost : 0 : 2
