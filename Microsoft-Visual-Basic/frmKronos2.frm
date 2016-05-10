VERSION 5.00
Begin VB.Form frmKronos2 
   BackColor       =   &H00808000&
   Caption         =   "Form1"
   ClientHeight    =   5595
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5880
   LinkTopic       =   "Form1"
   ScaleHeight     =   5595
   ScaleWidth      =   5880
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtSecond 
      Alignment       =   2  'Center
      Height          =   615
      Left            =   2880
      TabIndex        =   7
      Top             =   3960
      Width           =   1575
   End
   Begin VB.TextBox txtMinute 
      Alignment       =   2  'Center
      Height          =   615
      Left            =   2880
      TabIndex        =   6
      Top             =   3000
      Width           =   1575
   End
   Begin VB.TextBox txtHour 
      Alignment       =   2  'Center
      Height          =   615
      Left            =   2880
      TabIndex        =   5
      Top             =   2040
      Width           =   1575
   End
   Begin VB.TextBox txtTime 
      Alignment       =   2  'Center
      Height          =   615
      Left            =   2880
      TabIndex        =   4
      Top             =   960
      Width           =   1575
   End
   Begin VB.CommandButton cmdSecond 
      Caption         =   "Second"
      Height          =   615
      Left            =   960
      TabIndex        =   3
      Top             =   3960
      Width           =   1215
   End
   Begin VB.CommandButton cmdMinute 
      Caption         =   "Minute"
      Height          =   615
      Left            =   960
      TabIndex        =   2
      Top             =   3000
      Width           =   1215
   End
   Begin VB.CommandButton cmdHour 
      Caption         =   "Hour"
      Height          =   615
      Left            =   960
      TabIndex        =   1
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton cmdTime 
      Caption         =   "Time"
      Height          =   615
      Left            =   960
      TabIndex        =   0
      Top             =   960
      Width           =   1215
   End
End
Attribute VB_Name = "frmKronos2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdHour_Click()
Cls
txtHour.Text = Hour(Time)
End Sub

Private Sub cmdMinute_Click()
Cls
txtMinute.Text = Minute(Time)
End Sub

Private Sub cmdSecond_Click()
Cls
txtSecond.Text = Second(Time)
End Sub

Private Sub cmdTime_Click()
Cls
txtTime.Text = Time
End Sub
