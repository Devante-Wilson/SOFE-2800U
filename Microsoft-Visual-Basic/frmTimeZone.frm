VERSION 5.00
Begin VB.Form frmTimeZone 
   BackColor       =   &H00C00000&
   Caption         =   "Date, Time Zones and Functions"
   ClientHeight    =   8895
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10875
   LinkTopic       =   "Form1"
   ScaleHeight     =   8895
   ScaleWidth      =   10875
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picRome 
      Height          =   975
      Left            =   7320
      Picture         =   "frmTimeZone.frx":0000
      ScaleHeight     =   915
      ScaleWidth      =   1515
      TabIndex        =   19
      Top             =   6960
      Width           =   1575
   End
   Begin VB.PictureBox picBadenBaden 
      Height          =   975
      Left            =   4680
      Picture         =   "frmTimeZone.frx":0528
      ScaleHeight     =   915
      ScaleWidth      =   1515
      TabIndex        =   18
      Top             =   6960
      Width           =   1575
   End
   Begin VB.PictureBox picLondon 
      Height          =   975
      Left            =   2040
      Picture         =   "frmTimeZone.frx":0A89
      ScaleHeight     =   915
      ScaleWidth      =   1515
      TabIndex        =   17
      Top             =   6960
      Width           =   1575
   End
   Begin VB.PictureBox picHongKong 
      Height          =   855
      Left            =   7320
      Picture         =   "frmTimeZone.frx":1714
      ScaleHeight     =   795
      ScaleWidth      =   1515
      TabIndex        =   16
      Top             =   5160
      Width           =   1575
   End
   Begin VB.PictureBox picAmsterdam 
      Height          =   840
      Left            =   4680
      Picture         =   "frmTimeZone.frx":1DA1
      ScaleHeight     =   780
      ScaleWidth      =   1515
      TabIndex        =   15
      Top             =   5160
      Width           =   1575
   End
   Begin VB.PictureBox picMarkham 
      Height          =   855
      Left            =   2040
      Picture         =   "frmTimeZone.frx":2324
      ScaleHeight     =   795
      ScaleWidth      =   1635
      TabIndex        =   14
      Top             =   5160
      Width           =   1695
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "Exit"
      Height          =   615
      Left            =   9360
      TabIndex        =   13
      Top             =   7200
      Width           =   975
   End
   Begin VB.CommandButton cmdRome 
      Caption         =   "Rome"
      Height          =   375
      Left            =   7320
      TabIndex        =   12
      Top             =   6600
      Width           =   1575
   End
   Begin VB.CommandButton cmdBadenBaden 
      Caption         =   "Baden Baden"
      Height          =   375
      Left            =   4680
      TabIndex        =   11
      Top             =   6600
      Width           =   1575
   End
   Begin VB.CommandButton cmdLondon 
      Caption         =   "London"
      Height          =   375
      Left            =   2040
      TabIndex        =   10
      Top             =   6600
      Width           =   1575
   End
   Begin VB.CommandButton cmdHongKong 
      Caption         =   "Hong Kong"
      Height          =   375
      Left            =   7320
      TabIndex        =   9
      Top             =   4800
      Width           =   1575
   End
   Begin VB.CommandButton cmdAmsterdam 
      Caption         =   "Amsterdam"
      Height          =   375
      Left            =   4680
      TabIndex        =   8
      Top             =   4800
      Width           =   1575
   End
   Begin VB.CommandButton cmdMarkham 
      Caption         =   "Markham"
      Height          =   375
      Left            =   2040
      TabIndex        =   7
      Top             =   4800
      Width           =   1695
   End
   Begin VB.TextBox txt2 
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2880
      TabIndex        =   6
      Text            =   "Click a button for the time and date in that city"
      Top             =   3360
      Width           =   5295
   End
   Begin VB.CommandButton cmdDate 
      Caption         =   "Show Date"
      Height          =   495
      Left            =   7440
      TabIndex        =   5
      Top             =   1800
      Width           =   1335
   End
   Begin VB.TextBox txtTime 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Bell Gothic Std Light"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3720
      TabIndex        =   4
      Top             =   2160
      Width           =   1575
   End
   Begin VB.TextBox txtDate 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Bell Gothic Std Light"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3720
      TabIndex        =   3
      Top             =   1560
      Width           =   1575
   End
   Begin VB.TextBox txt1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2880
      TabIndex        =   0
      Text            =   "Date, Time Zones and Functions"
      Top             =   480
      Width           =   5295
   End
   Begin VB.Label lblTime1 
      Alignment       =   2  'Center
      Caption         =   "Time"
      BeginProperty Font 
         Name            =   "Bell Gothic Std Black"
         Size            =   14.25
         Charset         =   0
         Weight          =   900
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label lblDate1 
      Alignment       =   2  'Center
      Caption         =   "Date"
      BeginProperty Font 
         Name            =   "Bell Gothic Std Black"
         Size            =   14.25
         Charset         =   0
         Weight          =   900
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2160
      TabIndex        =   1
      Top             =   1560
      Width           =   1215
   End
End
Attribute VB_Name = "frmTimeZone"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Text2_Change()

End Sub

Private Sub cmdAmsterdam_Click()
Cls
txtTime.Text = Format(TimeSerial(Hour(Now) + 6, Minute(Now), Second(Now)), "Medium Time")
End Sub

Private Sub cmdBadenBaden_Click()
Cls
txtTime.Text = Format(TimeSerial(Hour(Now) + 6, Minute(Now), Second(Now)), "Medium Time")
End Sub

Private Sub cmdDate_Click()
Cls
txtDate.Text = Date$
End Sub

Private Sub cmdExit_Click()
End
End Sub

Private Sub Text4_Change()

End Sub

Private Sub cmdHongKong_Click()
Cls
txtTime.Text = Format(TimeSerial(Hour(Now) + 13, Minute(Now), Second(Now)), "Medium Time")
End Sub

Private Sub cmdLondon_Click()
Cls
txtTime.Text = Format(TimeSerial(Hour(Now) + 5, Minute(Now), Second(Now)), "Medium Time")
End Sub

Private Sub cmdMarkham_Click()
Cls
txtTime.Text = Format(Time$, "Medium Time")
End Sub

Private Sub lblDate_Click()

End Sub

Private Sub lblTime_Click()

End Sub

Private Sub cmdRome_Click()
Cls
txtTime.Text = Format(TimeSerial(Hour(Now) + 6, Minute(Now), Second(Now)), "Medium Time")
End Sub

Private Sub picAmsterdam_Click()
Cls
txtTime.Text = Format(TimeSerial(Hour(Now) + 6, Minute(Now), Second(Now)), "Medium Time")
End Sub

Private Sub picBadenBaden_Click()
Cls
txtTime.Text = Format(TimeSerial(Hour(Now) + 6, Minute(Now), Second(Now)), "Medium Time")
End Sub

Private Sub picHongKong_Click()
Cls
txtTime.Text = Format(TimeSerial(Hour(Now) + 13, Minute(Now), Second(Now)), "Medium Time")
End Sub

Private Sub picLondon_Click()
Cls
txtTime.Text = Format(TimeSerial(Hour(Now) + 5, Minute(Now), Second(Now)), "Medium Time")
End Sub

Private Sub picMarkham_Click()
Cls
txtTime.Text = Format(Time$, "Medium Time")
End Sub

Private Sub picRome_Click()
Cls
txtTime.Text = Format(TimeSerial(Hour(Now) + 6, Minute(Now), Second(Now)), "Medium Time")
End Sub
