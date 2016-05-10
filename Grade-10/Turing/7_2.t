%Devante Wilson
%October 14,2011
%Asks user for math equation and tells them if they are right or wrong

%----------Variable Table----------
var answer : string

%----------Main Program----------
put "What is the answer to the following equation 5 + 3 * 3?"
put ""
get answer
if answer = "14"
	then
    put ""
    put "You are correct."
else
    put "Sorry that answer is incorrect."
end if
