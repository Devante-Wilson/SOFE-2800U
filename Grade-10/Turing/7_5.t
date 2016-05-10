%Devante Wilson
%October 24, 2011
%Asks user for two words and puts them in alphabetical order

%----------Variable Table----------
var w1, w2 : string

%----------Main Program----------
put "Please enter your first word."
get w1
put ""
put "Please enter your second word."
get w2
if w1 < w2 then
    put w1, " ", w2
elsif w2 < w1 then
    put w2, " ", w1
end if
