%Devante Wilson
%October 14,2013
%Asks user for capital of Canada and tells them if they're wrong or right

%----------Variable Table----------
var capital : string

%----------Main Program----------
put "What is the capital of Canada?"
locate (3, 1)
get capital
if capital = "Ottawa" or capital = "ottawa" or capital = "OTTAWA"
	then
    put ""
    put "You are correct, good job. :D"
else
    put ""
    put "Sorry, you are wrong. >:|"
end if
