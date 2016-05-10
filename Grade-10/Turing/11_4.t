%Devante Wilson
%November 4, 2011
%1st user enters a number between 1-10 and second user has to guess it until they get it right

%----------Variable Table----------
var num1, num2, answer : int

%----------Main Program----------
put "User 1 please enter a number between 1-10. User 2 don't look."
get num1
cls
loop
    put "User 2, try to guess user 1's number."
    answer := num1
    get num2
    exit when num2 = answer
end loop

