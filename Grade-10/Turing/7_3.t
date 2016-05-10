%Devante Wilson
%October 14,2011
%Tells user if they are old enough to vote

%----------Variable Table----------
var Age, years : int

%----------Main Program----------
put "Please enter your age"
locate (3, 1)
get Age
if Age >= 18
	then
    put ""
    put "OLD ENOUGH TO VOTE."
else
    years := 18 - Age
    put ""
    put "Sorry, you will be able to vote in ", years, " year(s)."
end if
