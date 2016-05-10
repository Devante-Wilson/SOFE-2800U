%Devante Wilson
%November 3,2011
%Asks user for the cost and weight of an item then displays the cost per unit of that item

setscreen ("graphics:849,565")

%----------Variable Table----------
var Mass, Cost, unit_cost : real
var item : string
var font1, font2 : int
var winID : int
var pic : int := Pic.FileNew ("E:/grocery store.jpg")

%----------Graphics Table----------
winID := Window.Open ("position:middle,center, graphics:849;565, Title:grocery store.jpg")
Pic.Draw (pic, 0, 0, 0)
drawbox (250, 120, 650, 420, 7)
drawline (450, 120, 450, 420, 7)
drawline (250, 350, 650, 350, 7)
drawline (250, 270, 650, 270, 7)
drawline (250, 190, 650, 190, 7)

%----------Main Program----------
font1 := Font.New ("Calibri:10")
font2 := Font.New ("Georgia:18")
Font.Draw ("Food/Cost Calculator", 350, 450, font2, 7)
Font.Draw ("What is the name of the item?", 255, 392, font1, 7)
locate (11, 60)
get item : *
Font.Draw ("What is the mass of it in grams?", 255, 332, font1, 7)
locate (15, 60)
get Mass
Font.Draw ("What is the cost in dollars?", 255, 245, font1, 7)
locate (20, 60)
get Cost
unit_cost := Cost / Mass
Font.Draw ("Calculation", 315, 160, font1, 7)
Font.Draw ("The unit cost of the item", 468, 178, font1, 7)
Font.Draw ("is equal to", 468, 154, font1, 7)
locate (26, 69)
put "$ ", unit_cost : 0 : 2
