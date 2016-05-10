%Devante Wilson
%October 14,2011
%Asks user for a temperature in degrees celsius then displays category of temperture

%----------Variable Table----------
var temp : int

%----------Main Program----------
put "Please enter a temperture in degrees celsius."
locate (3, 1)
get temp
if temp < (-18)
	then
    put ""
    put temp, " degrees is very cold."
elsif temp >= (-18)
	then
    put ""
    put temp, " degrees is cold."
elsif temp = 0
	then
    put ""
    put temp, " degrees is the freezing point of water."
elsif temp > 0
	then
    put ""
    put temp, " degrees is very cool."
elsif temp > 10
	then
    put ""
    put temp, " degrees is moderate."
elsif temp > 20
	then
    put ""
    put temp, " degrees is warm."
elsif temp > 30
	then
    put ""
    put temp, " degrees is hot."
elsif temp > 40
	then
    put ""
    put temp, " degrees is extremely hot."
elsif temp = 100
	then
    put ""
    put temp, " degrees is the boiling point of water."
end if
