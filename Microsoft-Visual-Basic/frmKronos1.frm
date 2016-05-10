VERSION 5.00
Begin VB.Form frmKronos1 
   Caption         =   "Project Kronos #1"
   ClientHeight    =   5595
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5880
   LinkTopic       =   "Form1"
   ScaleHeight     =   5595
   ScaleWidth      =   5880
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtWeekday 
      Alignment       =   2  'Center
      Height          =   495
      Left            =   2760
      TabIndex        =   7
      Top             =   3360
      Width           =   1695
   End
   Begin VB.TextBox txtDay 
      Alignment       =   2  'Center
      Height          =   495
      Left            =   2760
      TabIndex        =   6
      Top             =   2520
      Width           =   1695
   End
   Begin VB.TextBox txtMonth 
      Alignment       =   2  'Center
      Height          =   495
      Left            =   2760
      TabIndex        =   5
      Top             =   1680
      Width           =   1695
   End
   Begin VB.TextBox txtYear 
      Alignment       =   2  'Center
      Height          =   495
      Left            =   2760
      TabIndex        =   4
      Top             =   840
      Width           =   1695
   End
   Begin VB.CommandButton cmdWeekday 
      Caption         =   "Weekday"
      Height          =   495
      Left            =   720
      TabIndex        =   3
      Top             =   3360
      Width           =   1095
   End
   Begin VB.CommandButton cmdDay 
      Caption         =   "Day"
      Height          =   495
      Left            =   720
      TabIndex        =   2
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton cmdMonth 
      Caption         =   "Month"
      Height          =   495
      Left            =   720
      TabIndex        =   1
      Top             =   1680
      Width           =   1095
   End
   Begin VB.CommandButton cmdYear 
      Caption         =   "Year"
      Height          =   495
      Left            =   720
      TabIndex        =   0
      Top             =   840
      Width           =   1095
   End
End
Attribute VB_Name = "frmKronos1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdDay_Click()
Cls
txtDay.Text = Day(Date)
End Sub

Private Sub cmdMonth_Click()
Cls
txtMonth.Text = Month(Date)
End Sub

Private Sub cmdWeekday_Click()
Cls
txtWeekday.Text = Weekday(Date)
End Sub

Private Sub cmdYear_Click()
Cls
txtYear.Text = Year(Date)
End Sub

