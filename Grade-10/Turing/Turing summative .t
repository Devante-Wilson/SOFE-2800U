%Devante Wilson
%Friday, November 18, 2011

%----------Description----------
%Similar to who wants to be a millionaire;
%multiple choice game where user guesses the answer to questions except they keeps guessing until they're correct.
%At the end of the game, the program tells the user how many times it took them to answer each question.
%The user gets one "shout out" to the audience that gives them a graph which will show the most logical option (one per game for any question)

%----------------------------------
%----------Variable Table----------
%----------------------------------
var q1, q2, q3, q4, q5 : string (1)
var font1, font2, font3, font4 : int
var key, key2 : string (1)
var winID : int
var pic : int := Pic.FileNew ("J:/millionaire.jpg")

%----------------------------------
%----------Graphics Table----------
%----------------------------------
setscreen ("graphics:700,600")
font1 := Font.New ("Calibri:15")
font2 := Font.New ("Algerian:16")
font3 := Font.New ("Agency FB:14")
font4 := Font.New ("Calibri:14")

%---------------------------------
%----------Main Program-----------
%---------------------------------
winID := Window.Open ("position:middle,center, graphics:700;600, Title:millionaire.jpg")
Pic.Draw (pic, 0, 0, 0)
Font.Draw ("Press Any Key To Continue", 200, 175, font2, 9)
delay (250)
Font.Draw ("Press Any Key To Continue", 200, 175, font2, white)
delay (250)
Font.Draw ("Press Any Key To Continue", 200, 175, font2, 9)
delay (250)
Font.Draw ("Press Any Key To Continue", 200, 175, font2, white)
delay (250)
Font.Draw ("Press Any Key To Continue", 200, 175, font2, 9)
delay (250)
Font.Draw ("Press Any Key To Continue", 200, 175, font2, white)
delay (250)
Font.Draw ("Press Any Key To Continue", 200, 175, font2, 9)
delay (250)
Font.Draw ("Press Any Key To Continue", 200, 175, font2, white)
delay (250)
Font.Draw ("Press Any Key To Continue", 200, 175, font2, 9)
getch (key)
cls
drawfillbox (0, 0, 700, 642, 11)
Font.Draw ("Instructions:", 250, 570, font1, 7)
Font.Draw ("This is a multiple choice game where you have to answer a series of questions.", 0, 540, font4, 7)
Font.Draw ("To answer each question, simply press the letter of the question that it applies to.", 0, 515, font4, 7)
Font.Draw ("For example: what is the answer to 1+1? - a. 2 - b. 4", 55, 490, font4, 7)
Font.Draw ("You would enter the (a) key for the answer 2.", 0, 460, font4, 7)
Font.Draw ("You will get an option to ask the audience for a 'shout out' once per game for any question.", 0, 435, font4, 7)
Font.Draw ("To access this shout out, simply press the (s) key any time during the game.", 0, 410, font4, 7)
Font.Draw ("At the end of the game, I will tell you the amount of times it took to answer each question.", 0, 375, font4, 7)
Font.Draw ("And you will get an option to play again if you want to.", 0, 350, font4, 7)
Font.Draw ("Have fun!", 0, 320, font4, 7)
Font.Draw ("Press any key to Play", 0, 260, font4, 7)
getch (key)
cls

%----------Question # 1----------
drawfillbox (0, 0, 700, 600, 10)
Font.Draw ("Question # 1", 15, 575, font2, 7)
drawbox (130, 100, 570, 375, 7)
drawline (330, 100, 330, 275, 7)
drawline (130, 275, 570, 275, 7)
drawline (130, 190, 570, 190, 7)
Font.Draw ("Which character was first played by Arnold Schwarzenegger in a 1984 film?", 135, 330, font3, 7)
Font.Draw ("a. The Demonstrator", 135, 245, font3, 7)
Font.Draw ("b. The Instigator", 135, 165, font3, 7)
Font.Draw ("c. The Investigator", 335, 245, font3, 7)
Font.Draw ("d. The Terminator", 335, 165, font3, 7)
%-----Loop-----
%-----Case-----
loop
    get q1
    case q1 of
	label "d", "D" :
	    Font.Draw ("You are correct, on to the next question.", 135, 80, font3, 7)
	    delay (3000)
	    cls
	label "b", "B" :
	    Font.Draw ("Sorry, that is incorrect.", 135, 80, font3, 7)
	label "c", "C" :
	    Font.Draw ("Nope, wrong answer.", 135, 80, font3, 7)
	label "a", "A" :
	    Font.Draw ("Sorry, try again.", 135, 80, font3, 7)
    end case
    cls
end loop
delay (2000)

%----------Question # 2----------
drawfillbox (0, 0, 700, 600, 14)
Font.Draw ("Question # 2", 15, 575, font2, 7)
drawbox (130, 100, 570, 375, 7)
drawline (330, 100, 330, 275, 7)
drawline (130, 275, 570, 275, 7)
drawline (130, 190, 570, 190, 7)
Font.Draw ("Which word follows 'North' and 'South' to give the names of two continents?", 135, 330, font3, 7)
Font.Draw ("a. Africa", 135, 245, font3, 7)
Font.Draw ("b. Asia", 135, 165, font3, 7)
Font.Draw ("c. Australia", 335, 245, font3, 7)
Font.Draw ("d. America", 335, 165, font3, 7)
%-----Loop-----
%-----Case-----
loop
    get q2
    case q2 of
	label "d", "D" :
	    Font.Draw ("You are correct again, next question.", 135, 80, font3, 7)
	    delay (3000)
	    cls
	label "b", "B" :
	    Font.Draw ("Sorry, that is incorrect.", 135, 80, font3, 7)
	label "c", "C" :
	    Font.Draw ("Nope, wrong answer.", 135, 80, font3, 7)
	label "a", "A" :
	    Font.Draw ("Sorry, try again.", 135, 80, font3, 7)
    end case
    cls
end loop
delay (2000)

%----------Question # 3----------
drawfillbox (0, 0, 700, 600, 12)
Font.Draw ("Question # 3", 15, 575, font2, 7)
drawbox (130, 100, 570, 375, 7)
drawline (330, 100, 330, 275, 7)
drawline (130, 275, 570, 275, 7)
drawline (130, 190, 570, 190, 7)
Font.Draw ("In which country would you expect to be greeted with the word 'bonjour'?", 135, 330, font3, 7)
Font.Draw ("a. Italy", 135, 245, font3, 7)
Font.Draw ("b. Spain", 135, 165, font3, 7)
Font.Draw ("c. Wales", 335, 245, font3, 7)
Font.Draw ("d. France", 335, 165, font3, 7)
%-----Loop-----
%-----Case-----
loop
    get q3
    case q3 of
	label "d", "D" :
	    Font.Draw ("You are correct.", 135, 80, font3, 7)
	    delay (3000)
	    cls
	label "b", "B" :
	    Font.Draw ("Sorry, that is incorrect.", 135, 80, font3, 7)
	label "c", "C" :
	    Font.Draw ("Nope, wrong answer.", 135, 80, font3, 7)
	label "a", "A" :
	    Font.Draw ("Sorry, try again.", 135, 80, font3, 7)
    end case
    cls
end loop
delay (2000)
%----------Concluding Screen----------
drawfillbox (0, 0, 700, 642, 11)
Font.Draw ("Congradulations!", 300, 565, font2, 7)
Font.Draw ("Would you like to play again?", 200, 465, font1, 7)
delay (250)
Font.Draw ("Would you like to play again?", 200, 465, font1, white)
delay (250)
Font.Draw ("Would you like to play again?", 200, 465, font1, 7)
delay (250)
Font.Draw ("Would you like to play again?", 200, 465, font1, white)
delay (250)
Font.Draw ("Would you like to play again?", 200, 465, font1, 7)
delay (250)
Font.Draw ("Would you like to play again?", 200, 465, font1, white)
delay (250)
Font.Draw ("Would you like to play again?", 200, 465, font1, 7)
delay (250)
Font.Draw ("Would you like to play again?", 200, 465, font1, white)
delay (250)
Font.Draw ("Would you like to play again?", 200, 465, font1, 7)
getch (key2)
