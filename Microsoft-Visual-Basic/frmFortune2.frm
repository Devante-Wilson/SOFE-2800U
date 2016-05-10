VERSION 5.00
Begin VB.Form frmFortune2 
   BackColor       =   &H0080C0FF&
   Caption         =   "Fortune Cookie #2"
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
      TabIndex        =   4
      Top             =   5040
      Width           =   1335
   End
   Begin VB.CommandButton cmdClearForm 
      Caption         =   "Clear Form"
      Height          =   735
      Left            =   4560
      TabIndex        =   3
      Top             =   3960
      Width           =   1335
   End
   Begin VB.CommandButton cmdFortune3 
      Caption         =   "Fortune #3"
      Height          =   735
      Left            =   4560
      TabIndex        =   2
      Top             =   2880
      Width           =   1335
   End
   Begin VB.CommandButton cmdFortune2 
      Caption         =   "Fortune #2"
      Height          =   735
      Left            =   4560
      TabIndex        =   1
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton cmdFortune1 
      Caption         =   "Fortune #1"
      Height          =   735
      Left            =   4560
      TabIndex        =   0
      Top             =   720
      Width           =   1335
   End
End
Attribute VB_Name = "frmFortune2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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
