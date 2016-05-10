%Devante Wilson
%February 14,2013
%Program displays two random number between 1&100
%in the form of an addition question, user guesses answer until they are correct

var ans, num1, num2 : int

loop
    randint (num1, 1, 100)
    randint (num2, 1, 100)
    loop
	put num1, " + ", num2, " = " ..
	get ans
	exit when ans = num1 + num2
	if ans not= num1 + num2 then
	    put "Please try again."
	end if
    end loop
    put "Yes that is correct."
end loop

