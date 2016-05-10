%Devante Wilson
%November 2,2011
%User does a multiple choice quiz, program tells them if they are right or wrong

%----------Variable Table----------
var ques1, ques2 : string

%----------Main Program----------
put "What is the capital of Canada?"
locate (3, 1)
get ques1
case ques1 of
    label "Ottawa", "ottawa" :
	put "That is the correct answer."
    label "Toronto", "toronto" :
	put "Sorry that is incorrect. The answer is Ottawa."
    label "Newmarket", "newmarket" :
	put "Nope that's not right. The answer is Ottawa."
    label "Ontario", "ontario" :
	put "Unfortunately that is incorrect. The answer is Ottawa."
    label "Quebec", "quebec" :
	put "Sorry you're wrong. The answer is Ottawa."
end case
put ""
put "What is the answer to the equation (5 + 3)* 4 - 2 ?"
locate (7, 1)
get ques2
case ques2 of
    label "30" :
	put "Yes that is correct."
    label "32" :
	put "Sorry that is incorrect. The answer is 30."
    label "15" :
	put "No that isn't correct. The answer is 30."
    label "11" :
	put "Sorry you did it wrong. The answer is 30."
    label "16" :
	put "Remember B.E.D.M.A.S. The answer is 30."
end case
