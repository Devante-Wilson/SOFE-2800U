VERSION 5.00
Begin VB.Form frmFortune1 
   Caption         =   "Fortune Cookie #1"
   ClientHeight    =   6600
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6885
   LinkTopic       =   "Form1"
   ScaleHeight     =   6600
   ScaleWidth      =   6885
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   735
      Left            =   4560
      TabIndex        =   3
      Top             =   4560
      Width           =   1455
   End
   Begin VB.CommandButton cmdClearForm 
      Caption         =   "Clear Form"
      Height          =   735
      Left            =   4560
      TabIndex        =   2
      Top             =   3480
      Width           =   1455
   End
   Begin VB.CommandButton cmdFortune2 
      Caption         =   "Fortune #2"
      Height          =   735
      Left            =   4560
      TabIndex        =   1
      Top             =   2400
      Width           =   1455
   End
   Begin VB.CommandButton cmdFortune1 
      Caption         =   "Fortune #1"
      Height          =   735
      Left            =   4560
      TabIndex        =   0
      Top             =   1320
      Width           =   1455
   End
End
Attribute VB_Name = "frmFortune1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

End Sub

Private Sub cmdClearForm_Click()
Cls
End Sub

Private Sub cmdExit_Click()
End
End Sub

Private Sub cmdFortune1_Click()
Cls
Print "Dragons of good fortune will dance on your keyboard."
End Sub

Private Sub cmdFortune2_Click()
Cls
Print "Reality expands to fill the available fantasies."
End Sub

Private Sub cmdFortune3_Click()
Cls
Print "You will do bad on your next test if you don't study tonight."
End Sub
