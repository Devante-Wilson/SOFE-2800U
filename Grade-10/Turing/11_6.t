%Devante Wilson
%November 8, 2011
%User does a multiple choice quiz, program asks them again until they get the question right

%----------Variable Table----------
var ques1, ques2, ques3 : string

%----------Main Program----------

%Question # 1
loop
    put "What is the capital of Canada?"
    get ques1
    if ques1 = "ottawa" then
	put "That's correct."
	delay (1000)
	cls
	exit
    else
	case ques1 of
	    label "Toronto", "toronto" :
		put "Sorry that is incorrect."
	    label "Newmarket", "newmarket" :
		put "Nope that's not right."
	    label "Ontario", "ontario" :
		put "Unfortunately that is incorrect."
	    label "Quebec", "quebec" :
		put "Sorry you're wrong."
	end case
    end if
end loop

%Question # 2
loop
    put "What is the answer to the equation (5 + 3)* 4 - 2 ?"
    get ques2
    if ques2 = "16" then
	put "That's correct."
	delay (1000)
	cls
	exit
    else
	case ques2 of
	    label "32" :
		put "Sorry that is incorrect."
	    label "15" :
		put "No that isn't correct."
	    label "11" :
		put "Sorry you did it wrong."
	    label "30" :
		put "Remember B.E.D.M.A.S."
	end case
    end if
end loop

%Question # 3
loop
    put "What is the answer to this question 1²+ 2 ?"
    get ques3
    if ques3 = "3" then
	put "That's correct."
	delay (1000)
	cls
	exit
    else
	case ques3 of
	    label "2" :
		put "Sorry that is incorrect."
	    label "1" :
		put "No that isn't correct."
	    label "0" :
		put "Sorry you did it wrong."
	    label "4" :
		put "Try Again."
	end case
    end if
end loop
