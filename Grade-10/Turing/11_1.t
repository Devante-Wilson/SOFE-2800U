%Devante Wilson
%November 4, 2011
%Asks user to guess my age until they get it right

%----------Variable Table----------
var age : int

%----------Main Program----------
put "Try to guess how old i am (in years)"
get age
loop
    put "Sorry that's incorrect.Try again."
    get age
    exit when age = 15
end loop
