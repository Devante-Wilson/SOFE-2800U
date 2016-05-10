VERSION 5.00
Begin VB.Form frmLongInt 
   Caption         =   "Using a Long Integer"
   ClientHeight    =   5595
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5880
   LinkTopic       =   "Form1"
   ScaleHeight     =   5595
   ScaleWidth      =   5880
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "frmLongInt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
Dim person As String
Dim street As String
Dim city As String
Dim state As String
Dim zip As Long

'Assign values to variables
person = "A.B. Waxworth"
street = "1234 Mittlebox Canyon"
city = "Lost Canyon"
state = "Oregon"
zip = 97654

'Display the result
Print Tab(5); person
Print Tab(5); street
Print Tab(5); city
Print Tab(5); state; zip
End Sub
