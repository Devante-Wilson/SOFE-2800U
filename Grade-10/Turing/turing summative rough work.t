loop
get q1
case q1 of
label "d","D":
Font.Draw ("You are correct, on to the next question.",135,80, font3,7)
label "b","B":
Font.Draw ("Sorry, that is incorrect.",135,80, font3,7)
label "c","C":
Font.Draw ("Nope, wrong answer.",135,80, font3,7)
label "a","A":
Font.Draw ("Sorry, try again.",135,80, font3,7)
end case
end loop

%%%%%
loop
get q1
if q1 = "d" then
cls
end if
end loop
