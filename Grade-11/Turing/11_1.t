%Devante Wilson
%February 14,2013
%Asks user to guess my age, keeps running until they get it right

var age : int

age := 16

loop
    put "Please guess my age."
    get age
    if age = 16 then
	put "you are correct"
    else
	put "Sorry try again"
    end if
    exit when age = 16
end loop
