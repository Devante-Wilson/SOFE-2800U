VERSION 5.00
Begin VB.Form frmInt 
   Caption         =   "Integers"
   ClientHeight    =   5595
   ClientLeft      =   1860
   ClientTop       =   2130
   ClientWidth     =   6375
   LinkTopic       =   "Form1"
   ScaleHeight     =   5595
   ScaleWidth      =   6375
End
Attribute VB_Name = "frmInt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Form_Click()
Dim person As String
Dim age As Integer
Dim height As Integer
Dim weight As Integer

'Assign values to all variables
person = "Ralph"
age = 10
height = 46
weight = 85

'Display the results
Print Spc(20); "The age of the"; person; "is"; age
Print Spc(20); "The height of the"; person; "is"; height
Print Spc(20); "The weight of the"; person; " is "; weight
End Sub


