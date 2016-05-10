%Devante Wilson
%November 2,2011
%Tells user the average amount of calories burned per 10 min of continuous activity

%----------Variable Table----------
var act : string

%----------Main Program----------
put "   Please enter one the following activities."
put "           Bicycling"
put "           Jogging"
put "           Swimming"
put "           Walking"
locate (7,1)
get act
case act of
    label "Bicycling" :
	put "That activity burns ", 97 * 5, " calories in 10min on average."
    label "Jogging" :
	put "That activity burns ", 102 * 2, " calories in 10min on average."
    label "Swimming" :
	put "That activity burns ", 70 * 10, " calories in 10min on average."
    label "Walking" :
	put "That activity burns ", 35 * 2, " calories in 10min on average."
end case
