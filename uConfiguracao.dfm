object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnEscolherImagem: TButton
    Left = 24
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 0
  end
  object edtCaminhoImagem: TEdit
    Left = 105
    Top = 249
    Width = 344
    Height = 23
    TabOrder = 1
    Text = 'Informe o caminha do imagem'
  end
  object btnSalvar: TButton
    Left = 455
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 2
  end
  object dlgOpenImage: TOpenDialog
    Left = 488
    Top = 112
  end
end
