%Devante Wilson
%February 19,2013
%Involves two users, first user enters a number between 1 and 100
%then the second has to guess their number until they are correct

var num, ans : int

put "User one please enter a number between 1 and 10, user two no peaking!"
get num
cls
loop
    put "User two, please guess their number."
    get ans
    cls
    if ans = num then
	put "Yes, that is their number."
	exit when ans = num
    else
	put "Please try again."
    end if
end loop
