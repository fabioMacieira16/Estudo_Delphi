object Form1: TForm1
  Left = 0
  Top = 42
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 441
  ClientWidth = 422
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 72
    Width = 53
    Height = 15
    Caption = 'N'#250'mero 1'
  end
  object Label2: TLabel
    Left = 24
    Top = 144
    Width = 53
    Height = 15
    Caption = 'N'#250'mero 2'
  end
  object Label3: TLabel
    Left = 24
    Top = 272
    Width = 49
    Height = 15
    Caption = 'Resutado'
  end
  object btnSoma: TButton
    Left = 24
    Top = 216
    Width = 75
    Height = 25
    Caption = '+'
    Enabled = False
    TabOrder = 0
    OnClick = btnSomaClick
  end
  object txtNum1: TEdit
    Left = 24
    Top = 93
    Width = 369
    Height = 23
    TabOrder = 1
    OnChange = txtNum1Change
  end
  object txtNum2: TEdit
    Left = 24
    Top = 165
    Width = 369
    Height = 23
    TabOrder = 2
    OnChange = txtNum1Change
  end
  object btnSubitracao: TButton
    Left = 105
    Top = 216
    Width = 75
    Height = 25
    Caption = '-'
    Enabled = False
    TabOrder = 3
    OnClick = btnSubitracaoClick
  end
  object btnMultiplicar: TButton
    Left = 186
    Top = 216
    Width = 75
    Height = 25
    Caption = '*'
    Enabled = False
    TabOrder = 4
    OnClick = btnMultiplicarClick
  end
  object txtResultado: TEdit
    Left = 24
    Top = 293
    Width = 369
    Height = 23
    ReadOnly = True
    TabOrder = 5
  end
  object btnDivisao: TButton
    Left = 267
    Top = 216
    Width = 75
    Height = 25
    Caption = '/'
    Enabled = False
    TabOrder = 6
    OnClick = btnDivisaoClick
  end
end
