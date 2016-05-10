VERSION 5.00
Begin VB.Form frmProverb 
   BackColor       =   &H00C0C000&
   Caption         =   "Proverb Teller"
   ClientHeight    =   5790
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7380
   LinkTopic       =   "Form1"
   ScaleHeight     =   5790
   ScaleWidth      =   7380
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtfortune 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1200
      TabIndex        =   8
      Text            =   "Pick a Proverb"
      Top             =   840
      Width           =   5175
   End
   Begin VB.OptionButton opt5 
      Caption         =   "Option 5"
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
      Left            =   1680
      TabIndex        =   5
      Top             =   4800
      Width           =   1335
   End
   Begin VB.OptionButton opt4 
      Caption         =   "Option 4"
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
      Left            =   1680
      TabIndex        =   4
      Top             =   4320
      Width           =   1335
   End
   Begin VB.OptionButton opt3 
      Caption         =   "Option 3"
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
      Left            =   1680
      TabIndex        =   3
      Top             =   3840
      Width           =   1335
   End
   Begin VB.OptionButton opt2 
      Caption         =   "Option 2"
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
      Left            =   1680
      TabIndex        =   2
      Top             =   3360
      Width           =   1335
   End
   Begin VB.OptionButton opt1 
      Caption         =   "Option 1"
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
      Left            =   1680
      TabIndex        =   1
      Top             =   2880
      Width           =   1335
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4920
      TabIndex        =   0
      Top             =   4440
      Width           =   1335
   End
   Begin VB.Line Line8 
      X1              =   5760
      X2              =   1920
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Line Line7 
      X1              =   1920
      X2              =   1920
      Y1              =   120
      Y2              =   600
   End
   Begin VB.Line Line6 
      X1              =   1920
      X2              =   5760
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line Line5 
      X1              =   5760
      X2              =   5760
      Y1              =   120
      Y2              =   600
   End
   Begin VB.Label lblTitle 
      Alignment       =   2  'Center
      Caption         =   "Proverb Teller"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1920
      TabIndex        =   7
      Top             =   120
      Width           =   3855
   End
   Begin VB.Label lblOption 
      Alignment       =   2  'Center
      Caption         =   "Choose an option to see a proverb!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1440
      TabIndex        =   6
      Top             =   2160
      Width           =   4695
   End
   Begin VB.Line Line4 
      X1              =   1440
      X2              =   3240
      Y1              =   5280
      Y2              =   5280
   End
   Begin VB.Line Line3 
      X1              =   1440
      X2              =   3240
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Line Line2 
      X1              =   3240
      X2              =   3240
      Y1              =   2640
      Y2              =   5280
   End
   Begin VB.Line Line1 
      X1              =   1440
      X2              =   1440
      Y1              =   2640
      Y2              =   5280
   End
End
Attribute VB_Name = "frmProverb"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdExit_Click()
End
End Sub

Private Sub opt5_Click()
txtfortune.Text = "Fortune cookies are never true"
End Sub

Private Sub opt4_Click()
txtfortune.Text = "Everyone has a purpose in life"
End Sub

Private Sub opt1_Click()
txtfortune.Text = "A STICH IN TIME SAVES NINE"
End Sub

Private Sub opt3_Click()
txtfortune.Text = "Education is the key to success"
End Sub

Private Sub opt2_Click()
txtfortune.Text = "Don't eat your cherries until you count them"
End Sub

