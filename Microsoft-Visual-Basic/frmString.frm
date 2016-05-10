VERSION 5.00
Begin VB.Form frmString 
   BackColor       =   &H008080FF&
   Caption         =   "Form1"
   ClientHeight    =   6090
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7875
   LinkTopic       =   "Form1"
   ScaleHeight     =   6090
   ScaleWidth      =   7875
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdQuit 
      Caption         =   "Quit"
      Height          =   735
      Left            =   4440
      TabIndex        =   8
      Top             =   4560
      Width           =   1935
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display"
      Height          =   735
      Left            =   1800
      TabIndex        =   7
      Top             =   4560
      Width           =   2055
   End
   Begin VB.TextBox txtDisplay 
      Height          =   495
      Left            =   1680
      TabIndex        =   6
      Top             =   3840
      Width           =   4575
   End
   Begin VB.TextBox txtLast 
      Height          =   375
      Left            =   3840
      TabIndex        =   5
      Top             =   2640
      Width           =   3255
   End
   Begin VB.TextBox txtMiddle 
      Height          =   375
      Left            =   3840
      TabIndex        =   4
      Top             =   1560
      Width           =   3255
   End
   Begin VB.TextBox txtFirst 
      Height          =   405
      Left            =   3840
      TabIndex        =   3
      Top             =   480
      Width           =   3255
   End
   Begin VB.Line Line1 
      X1              =   480
      X2              =   7320
      Y1              =   3720
      Y2              =   3720
   End
   Begin VB.Label lblLast 
      Caption         =   "Last Name"
      Height          =   615
      Left            =   480
      TabIndex        =   2
      Top             =   2520
      Width           =   2775
   End
   Begin VB.Label lblMiddle 
      Caption         =   "Middle Initial"
      Height          =   615
      Left            =   480
      TabIndex        =   1
      Top             =   1440
      Width           =   2775
   End
   Begin VB.Label lblFirst 
      Caption         =   "First Name"
      Height          =   615
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   2775
   End
End
Attribute VB_Name = "frmString"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label2_Click()

End Sub

Private Sub Text2_Change()

End Sub

Private Sub cmdDisplay_Click()
Dim myname As String
myname = txtFirst.Text
myname = myname & " " & txtMiddle.Text
myname = myname & " " & txtLast.Text
txtDisplay.Text = myname
End Sub

Private Sub cmdQuit_Click()
End
End Sub
