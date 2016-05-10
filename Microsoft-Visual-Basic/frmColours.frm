VERSION 5.00
Begin VB.Form frmColours 
   BackColor       =   &H0080C0FF&
   Caption         =   "Colours"
   ClientHeight    =   3600
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7080
   LinkTopic       =   "Form1"
   ScaleHeight     =   3600
   ScaleWidth      =   7080
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdexit 
      Caption         =   "Exit"
      Height          =   375
      Left            =   5040
      TabIndex        =   6
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton cmdColor 
      Caption         =   "Click to show color"
      Height          =   375
      Left            =   4080
      TabIndex        =   5
      Top             =   1800
      Width           =   2535
   End
   Begin VB.TextBox txtFore 
      Alignment       =   2  'Center
      Height          =   615
      Left            =   4080
      TabIndex        =   4
      Text            =   "Foreground Text"
      Top             =   600
      Width           =   2175
   End
   Begin VB.TextBox txtto 
      Height          =   615
      Left            =   1920
      TabIndex        =   1
      Top             =   1800
      Width           =   1335
   End
   Begin VB.TextBox txtone 
      Height          =   615
      Left            =   1920
      TabIndex        =   0
      Top             =   600
      Width           =   1335
   End
   Begin VB.Label lbltwo 
      Alignment       =   2  'Center
      BackColor       =   &H0080C0FF&
      Caption         =   "Click and enter Forecolor 0-15"
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Label lblone 
      Alignment       =   2  'Center
      BackColor       =   &H0080C0FF&
      Caption         =   "Click and then enter Backcolor 0 -15"
      Height          =   615
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   1455
   End
End
Attribute VB_Name = "frmColours"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdColor_Click()
A = txtone.Text
txtFore.BackColor = QBColor(A)

B = txtto.Text
txtFore.ForeColor = QBColor(B)
End Sub

Private Sub cmdexit_Click()
End
End Sub

Private Sub Label1_Click()

End Sub

Private Sub txtFore_Change()

End Sub
