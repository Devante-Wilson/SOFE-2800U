VERSION 5.00
Begin VB.Form frmClock 
   BackColor       =   &H00C0C000&
   Caption         =   "Form1"
   ClientHeight    =   5595
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6375
   LinkTopic       =   "Form1"
   ScaleHeight     =   5595
   ScaleWidth      =   6375
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrClock 
      Interval        =   1000
      Left            =   360
      Top             =   960
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "&Exit"
      Height          =   855
      Left            =   2400
      TabIndex        =   1
      Top             =   4000
      Width           =   1575
   End
   Begin VB.TextBox txtClock 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "BankGothic Lt BT"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   550
      Left            =   2000
      TabIndex        =   0
      Text            =   "blank"
      Top             =   1000
      Width           =   2500
   End
End
Attribute VB_Name = "frmClock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

End Sub

Private Sub Timer1_Timer()

End Sub

Private Sub cmdExit_Click()
End
End Sub

Private Sub tmrClock_Timer()
txtClock.Text = Time
End Sub
