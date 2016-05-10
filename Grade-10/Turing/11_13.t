%Devante Wilson
%November 9, 2011
%Prints the whole numbers from 5 to 40 squared and cubed

%----------Variable Table----------
var row : int := 0
var key : string (1)

%----------Main Program----------
put "   Number          Squared              Cubed"
for count : 5 .. 40
    put count : 5, count ** 2 : 20, count ** 3 : 20
    row := row + 1
    if row = 20 then
	put "Press any key to continue."
	getch (key)
	cls
	row := 0
    end if
end for
