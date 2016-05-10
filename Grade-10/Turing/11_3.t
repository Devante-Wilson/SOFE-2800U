%Devante Wilson
%November 4, 2011
%Program displays 2 numbers between 1 and 10 and makes an addition question, user has to guess answer

%----------Variable Table----------
var num1, num2, num3, answer : int

%----------Main Program----------
loop
    randint (num1, 1, 100)
    randint (num2, 1, 100)
    put "Solve this addition problem ", num1, " + ", num2
    num3 := num1 + num2
    get answer
    exit when answer = num3
end loop
