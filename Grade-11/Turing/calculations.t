openb := money
interest := openb * rate
totalm := openb + interest
closeb := openb - interest
put "         Opening      Interest      Total         Yearly       Closing"
put "Year     Balance      Owed          Mortgage      Payment      Balance"
year := 0
openb := money
payment := 15000
loop
    interest := openb * rate
    year := year + 1
    totalm := openb + interest
    if totalm < payment then
	payment := totalm
    end if
    closeb := totalm - payment
    put year : 2, openb : 15 : 2, interest : 13 : 2, totalm : 13 : 2, payment : 13 : 2, closeb : 13 : 2
    exit when closeb = 0
    openb := closeb
end loop
