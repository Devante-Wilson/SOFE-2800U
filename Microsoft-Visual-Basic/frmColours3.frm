VERSION 5.00
Begin VB.Form frmColours3 
   BackColor       =   &H00808080&
   Caption         =   "Colours 3"
   ClientHeight    =   4590
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6885
   LinkTopic       =   "Form1"
   ScaleHeight     =   4590
   ScaleWidth      =   6885
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd2 
      Caption         =   "Done"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4200
      TabIndex        =   12
      Top             =   3720
      Width           =   1215
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "Change Colors"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2520
      TabIndex        =   11
      Top             =   3720
      Width           =   1215
   End
   Begin VB.TextBox txt6 
      Height          =   615
      Left            =   4920
      TabIndex        =   10
      Top             =   1920
      Width           =   1095
   End
   Begin VB.TextBox txt5 
      Height          =   615
      Left            =   3480
      TabIndex        =   9
      Top             =   1920
      Width           =   1095
   End
   Begin VB.TextBox txt4 
      Height          =   615
      Left            =   2040
      TabIndex        =   8
      Top             =   1920
      Width           =   1095
   End
   Begin VB.TextBox txt3 
      Height          =   615
      Left            =   4920
      TabIndex        =   7
      Top             =   960
      Width           =   1095
   End
   Begin VB.TextBox txt2 
      Height          =   615
      Left            =   3480
      TabIndex        =   6
      Top             =   960
      Width           =   1095
   End
   Begin VB.TextBox txt1 
      Height          =   615
      Left            =   2040
      TabIndex        =   5
      Top             =   960
      Width           =   1095
   End
   Begin VB.Label lbl6 
      BackColor       =   &H00808080&
      Caption         =   "Enter RGB color values into the boxes above. Values can range from 0 to 255"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2040
      TabIndex        =   13
      Top             =   2760
      Width           =   3975
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00FF0000&
      Caption         =   "B"
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5040
      TabIndex        =   4
      Top             =   360
      Width           =   735
   End
   Begin VB.Label lblG 
      Alignment       =   2  'Center
      BackColor       =   &H0080FF80&
      Caption         =   "G"
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3600
      TabIndex        =   3
      Top             =   360
      Width           =   735
   End
   Begin VB.Label lbl1 
      Alignment       =   2  'Center
      BackColor       =   &H008080FF&
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Top             =   360
      Width           =   735
   End
   Begin VB.Label lbl5 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Button Colors"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   600
      TabIndex        =   1
      Top             =   2040
      Width           =   1095
   End
   Begin VB.Label lbl4 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Form Colors"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   600
      TabIndex        =   0
      Top             =   1080
      Width           =   1095
   End
End
Attribute VB_Name = "frmColours3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd1_Click()
R = txt1.Text
G = txt2.Text
B = txt3.Text
frmColours3.BackColor = RGB(R, G, B)

R2 = txt4.Text
G2 = txt5.Text
B2 = txt6.Text

txt4.BackColor = R(R2)
txt5.BackColor = G(G2)
txt6.BackColor = B(B2)
End Sub

Private Sub cmd2_Click()
End
End Sub
