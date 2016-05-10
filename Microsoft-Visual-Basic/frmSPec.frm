VERSION 5.00
Begin VB.Form frmSPec 
   Caption         =   "Single Precision"
   ClientHeight    =   5595
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5880
   LinkTopic       =   "Form1"
   ScaleHeight     =   5595
   ScaleWidth      =   5880
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "frmSPec"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
Dim precise As Single
Dim truncated As Integer
Dim rounded As Integer

precise = 50.33456
truncated = 50.33456

Print Tab(5); precise
Print Tab(5); truncated

precise = 5.5
rounded = 5.5

Print Tab(5); precise
Print Tab(5); rounded

precise = 503.88865
rounded = 503.88865

Print Tab(5); precise
Print Tab(5); rounded
End Sub
