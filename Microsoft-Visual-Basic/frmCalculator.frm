VERSION 5.00
Begin VB.Form frmCalculator 
   BackColor       =   &H00C0C000&
   Caption         =   "Calculator"
   ClientHeight    =   5790
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6375
   LinkTopic       =   "Form1"
   ScaleHeight     =   5790
   ScaleWidth      =   6375
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdExit 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Lithos Pro Light"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3600
      TabIndex        =   18
      Top             =   4800
      Width           =   1215
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear"
      BeginProperty Font 
         Name            =   "Lithos Pro Light"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1200
      TabIndex        =   17
      Top             =   4800
      Width           =   1215
   End
   Begin VB.CommandButton cmdDiv 
      Caption         =   "Integer Division"
      BeginProperty Font 
         Name            =   "News Gothic Std"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4800
      TabIndex        =   16
      Top             =   3360
      Width           =   1095
   End
   Begin VB.CommandButton cmdMod 
      Caption         =   "Modulus"
      BeginProperty Font 
         Name            =   "News Gothic Std"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3360
      TabIndex        =   15
      Top             =   3360
      Width           =   1095
   End
   Begin VB.CommandButton cmdSqrt 
      Caption         =   "Square Root of the Sum"
      BeginProperty Font 
         Name            =   "News Gothic Std"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   480
      TabIndex        =   14
      Top             =   3360
      Width           =   1095
   End
   Begin VB.CommandButton cmdExponent 
      Caption         =   "Exponent of the Sum"
      BeginProperty Font 
         Name            =   "News Gothic Std"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1920
      TabIndex        =   13
      Top             =   3360
      Width           =   1095
   End
   Begin VB.CommandButton cmdQuotient 
      Caption         =   "/"
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
      Left            =   4440
      TabIndex        =   12
      Top             =   2400
      Width           =   735
   End
   Begin VB.CommandButton cmdProduct 
      Caption         =   "x"
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
      Left            =   3360
      TabIndex        =   11
      Top             =   2400
      Width           =   735
   End
   Begin VB.CommandButton cmdDifference 
      Caption         =   "_"
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
      Left            =   2280
      TabIndex        =   10
      Top             =   2400
      Width           =   735
   End
   Begin VB.CommandButton cmdSum 
      Caption         =   "+"
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
      Left            =   1200
      TabIndex        =   9
      Top             =   2400
      Width           =   735
   End
   Begin VB.TextBox txtSign2 
      Height          =   375
      Left            =   3960
      TabIndex        =   8
      Top             =   1440
      Width           =   495
   End
   Begin VB.TextBox txtSign 
      Height          =   375
      Left            =   1800
      TabIndex        =   7
      Top             =   1440
      Width           =   495
   End
   Begin VB.TextBox txtValue 
      Height          =   375
      Left            =   4680
      TabIndex        =   6
      Top             =   1440
      Width           =   1335
   End
   Begin VB.TextBox txtValueB 
      Height          =   375
      Left            =   2520
      TabIndex        =   5
      Top             =   1440
      Width           =   1215
   End
   Begin VB.TextBox txtValueA 
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label lblX 
      Alignment       =   2  'Center
      Caption         =   "Answer"
      BeginProperty Font 
         Name            =   "Corbel"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4920
      TabIndex        =   3
      Top             =   960
      Width           =   855
   End
   Begin VB.Label lblB 
      Alignment       =   2  'Center
      Caption         =   "Value 2"
      BeginProperty Font 
         Name            =   "Corbel"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2760
      TabIndex        =   2
      Top             =   960
      Width           =   855
   End
   Begin VB.Label lblA 
      Alignment       =   2  'Center
      Caption         =   "Value 1"
      BeginProperty Font 
         Name            =   "Corbel"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   480
      TabIndex        =   1
      Top             =   960
      Width           =   975
   End
   Begin VB.Label lblTitle 
      Alignment       =   2  'Center
      BackColor       =   &H0080FF80&
      Caption         =   "Mathematical Equations and Expressions"
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1080
      TabIndex        =   0
      Top             =   120
      Width           =   4095
   End
End
Attribute VB_Name = "frmCalculator"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdClear_Click()
txtValueA.Text = ""
txtValueB.Text = ""
txtValue.Text = ""
txtSign.Text = ""
txtSign2.Text = ""
End Sub

Private Sub cmdDifference_Click()
txtSign.Text = "-"
txtSign2.Text = "="

A = txtValueA.Text
B = txtValueB.Text

X = Val(A) - Val(B)

txtValue.Text = X
End Sub

Private Sub cmdDiv_Click()
txtSign.Text = ""
txtSign2.Text = "="

A = txtValueA.Text
B = txtValueB.Text

X = Val(A) \ Val(B)

txtValue.Text = X
End Sub

Private Sub cmdExit_Click()
End
End Sub

Private Sub cmdExponent_Click()
txtSign.Text = "+"
txtSign2.Text = "="

A = txtValueA.Text
B = txtValueB.Text

X = (Val(A) + (B)) ^ 2

txtValue.Text = X
End Sub

Private Sub cmdMod_Click()
txtSign.Text = ""
txtSign2.Text = "="

A = txtValueA.Text
B = txtValueB.Text

X = Val(A) Mod (Val(B))

txtValue.Text = X
End Sub

Private Sub cmdProduct_Click()
txtSign.Text = "x"
txtSign2.Text = "="

A = txtValueA.Text
B = txtValueB.Text

X = Val(A) * Val(B)

txtValue.Text = X
End Sub

Private Sub cmdQuotient_Click()
txtSign.Text = "/"
txtSign2.Text = "="

A = txtValueA.Text
B = txtValueB.Text

X = Val(A) / Val(B)

txtValue.Text = X
End Sub

Private Sub cmdSqrt_Click()
txtSign.Text = "Sqrt"
txtSign2.Text = "="

A = txtValueA.Text
B = txtValueB.Text

X = Sqr(Val(A) + Val(B))

txtValue.Text = X
End Sub

Private Sub cmdSum_Click()
txtSign.Text = "+"
txtSign2.Text = "="

A = txtValueA.Text
B = txtValueB.Text

X = Val(A) + Val(B)

txtValue.Text = X
End Sub

