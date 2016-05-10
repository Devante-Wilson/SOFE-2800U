VERSION 5.00
Begin VB.Form frmBoolean 
   BackColor       =   &H0080FF80&
   Caption         =   "Form1"
   ClientHeight    =   4095
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7875
   LinkTopic       =   "Form1"
   ScaleHeight     =   4095
   ScaleWidth      =   7875
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdTest 
      Caption         =   "Test Wordwrap Status"
      Height          =   1095
      Left            =   2040
      TabIndex        =   2
      Top             =   2400
      Width           =   4095
   End
   Begin VB.Label lblNoWrap 
      Height          =   855
      Left            =   4320
      TabIndex        =   1
      Top             =   600
      Width           =   2775
   End
   Begin VB.Label lblWrap 
      Height          =   855
      Left            =   720
      TabIndex        =   0
      Top             =   600
      Width           =   2655
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "frmBoolean"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label2_Click()

End Sub

Private Sub cmdTest_Click()
Dim wraptest As Boolean
wraptest = lblWrap.WordWrap
lblWrap.Caption = wraptest
wraptest = lblNoWrap.WordWrap
lblNoWrap.Caption = wraptest
End Sub
