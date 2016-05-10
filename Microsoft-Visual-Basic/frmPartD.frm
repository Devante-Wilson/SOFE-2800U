VERSION 5.00
Begin VB.Form frmPartD 
   Caption         =   "Test of Precision"
   ClientHeight    =   5595
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5880
   LinkTopic       =   "Form1"
   ScaleHeight     =   5595
   ScaleWidth      =   5880
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDivide 
      Caption         =   "Caption Print 1/3"
      Height          =   615
      Left            =   3960
      TabIndex        =   0
      Top             =   2280
      Width           =   1455
   End
End
Attribute VB_Name = "frmPartD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdDivide_Click()
Dim test1 As Single
Dim test2 As Double

test1 = 0.333333333333333
test2 = 0.333333333333333

Print "Single Precision is = "; test1
Print "Double Precision is = "; test2
End Sub

