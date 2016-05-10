%Devante Wilson
%November 2,2011
%Program calculates how much user makes depending on weekday

%----------Variable Table----------
var day : string
var wage, hours : real

%----------Main Program----------
put "Please enter the day you are working this week"
get day
put "Please enter how much you earn per hour (hourly wage)"
get wage
put "Please enter how many hours you work"
get hours
case day of
    label "Monday", "monday" :
	put "You will make $", hours * wage, " on a ", day
    label "Tuesday", "tuesday" :
	put "You will make $", hours * wage, " on a ", day
    label "Wednesday", "wednesday" :
	put "You will make $", hours * wage, " on a ", day
    label "Thursday", "thursday" :
	put "You will make $", hours * wage, " on a ", day
    label "Friday", "friday" :
	put "You will make $", hours * wage, " on a ", day
    label "Saturday", "saturday" :
	put "You will make $", hours * (wage * 1.5), " on a ", day
    label "Sunday", "sunday" :
	put "You will make $", hours * (wage * 1.5), " on a ", day
end case
