%Devante Wilson
%0ctober 12,2011
%Asks user for weight in pounds and converts it to kilograms and grams

%----------Variable Table----------
var w, k, g : real

%----------Main Program------------
put "Please enter your weight in pounds"
get w
k := w * 0.453592
g := w * 453.59237
put ""
put w, " pounds is equal to ", k : 0 : 1, " kilograms."
put ""
put w, " pounds is equal to ", g : 0 : 1, " grams."

