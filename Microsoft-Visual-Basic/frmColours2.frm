VERSION 5.00
Begin VB.Form frmColours2 
   Caption         =   "Colours 2"
   ClientHeight    =   3900
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6075
   LinkTopic       =   "Form1"
   ScaleHeight     =   3900
   ScaleWidth      =   6075
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd9 
      Caption         =   "DONE!"
      Height          =   615
      Left            =   4320
      TabIndex        =   8
      Top             =   2640
      Width           =   1335
   End
   Begin VB.CommandButton cmd8 
      Caption         =   "White"
      Height          =   615
      Left            =   2400
      TabIndex        =   7
      Top             =   2640
      Width           =   1455
   End
   Begin VB.CommandButton cmd7 
      Caption         =   "Magenta"
      Height          =   615
      Left            =   480
      TabIndex        =   6
      Top             =   2640
      Width           =   1455
   End
   Begin VB.CommandButton cmd6 
      Caption         =   "Cyan"
      Height          =   615
      Left            =   4320
      TabIndex        =   5
      Top             =   1560
      Width           =   1335
   End
   Begin VB.CommandButton cmd5 
      Caption         =   "Black"
      Height          =   615
      Left            =   2400
      TabIndex        =   4
      Top             =   1560
      Width           =   1455
   End
   Begin VB.CommandButton cmd4 
      Caption         =   "Yellow"
      Height          =   615
      Left            =   480
      TabIndex        =   3
      Top             =   1560
      Width           =   1455
   End
   Begin VB.CommandButton cmd3 
      Caption         =   "Blue"
      Height          =   615
      Left            =   4320
      TabIndex        =   2
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "Green"
      Height          =   615
      Left            =   2400
      TabIndex        =   1
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "Red"
      Height          =   615
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   1455
   End
End
Attribute VB_Name = "frmColours2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd1_Click()
frmColours2.BackColor = QBColor(4)
End Sub

Private Sub cmd2_Click()
frmColours2.BackColor = QBColor(2)
End Sub

Private Sub cmd3_Click()
frmColours2.BackColor = QBColor(1)
End Sub

Private Sub cmd4_Click()
frmColours2.BackColor = QBColor(14)
End Sub

Private Sub cmd5_Click()
frmColours2.BackColor = QBColor(0)
End Sub

Private Sub cmd6_Click()
frmColours2.BackColor = QBColor(3)
End Sub

Private Sub cmd7_Click()
frmColours2.BackColor = QBColor(5)
End Sub

Private Sub cmd8_Click()
frmColours2.BackColor = QBColor(15)
End Sub

Private Sub cmd9_Click()
End
End Sub
