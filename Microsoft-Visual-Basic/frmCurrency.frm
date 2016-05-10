VERSION 5.00
Begin VB.Form frmCurrency 
   Caption         =   "Test of Currency"
   ClientHeight    =   5595
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5880
   LinkTopic       =   "Form1"
   ScaleHeight     =   5595
   ScaleWidth      =   5880
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdLoan 
      Caption         =   "Show Loan"
      Height          =   735
      Left            =   3840
      TabIndex        =   0
      Top             =   2280
      Width           =   1215
   End
End
Attribute VB_Name = "frmCurrency"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdLoan_Click()
Dim Amount As Currency
Dim IntRate As Single
Dim SimpleInt As Currency

Amount = 10000000
IntRate = 0.08
SimpleInt = 8000000

Print "The amount of the loan is $"; Amount
Print "The interest rate is "; IntRate; "%"
Print "The simple interest for 1 year is $"; SimpleInt
End Sub
