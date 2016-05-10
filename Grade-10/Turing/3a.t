%Devante Wilson
%October 7,2011
%Asks user for temperature in fahrenheit then outputs it i celsius

%----------Variable Table----------
var f, c : real

%----------Main Program----------
put "Please enter a temperature in Fahrenheit"
get f
c := (5 / 9) * (f - 32)
put ""
put "The temperature you entered is equal to ", c : 0 : 2, " degrees celsius"
