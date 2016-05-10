%Devante Wilson
%October 24, 2011
%Tells user their average in four courses

%----------Variable Table----------
var n, s1, s2, s3, s4 : string
var a, b, c, d, e : real

%----------Main Program----------
setscreen ("graphics: 800,550")
put "Enter your name please"
get n : *
put ""
put "Enter your first subject"
get s1 : *
put "Enter the first subject mark"
get a
put ""
put "Enter your second subject"
get s2 : *
put "Enter the second subject mark"
get b
put ""
put "Enter your third subject"
get s3 : *
put "Enter the third subject mark"
get c
put ""
put "Enter your fourth subject"
get s4 : *
put "Enter the fourth subject mark"
get d
cls
put "   Enter your name:            ", n
put "   Enter your mark for ", s1, ":  ", a
put "   Enter your mark for ", s2, ":  ", b
put "   Enter your mark for ", s3, ":  ", c
put "   Enter your mark for ", s4, ":  ", d
e := (a + b + c + d) / 4
put ""
put n, ", your average for ", s1, ", ", s2, ", ", s3, " and ", s4, " is ", e : 0 : 1, " percent."
