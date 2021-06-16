object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 201
  ClientWidth = 435
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 25
  object CONSULTAR: TButton
    Left = 8
    Top = 63
    Width = 417
    Height = 45
    Caption = 'CONSULTAR'
    TabOrder = 0
    OnClick = CONSULTARClick
  end
  object EDIE: TEdit
    Left = 8
    Top = 24
    Width = 202
    Height = 33
    TabOrder = 1
    TextHint = 'Digite o documento'
  end
  object EDUF: TEdit
    Left = 216
    Top = 24
    Width = 209
    Height = 33
    TabOrder = 2
    TextHint = 'Digite o complemento'
  end
  object EDIEFORMATADO: TEdit
    Left = 8
    Top = 160
    Width = 417
    Height = 33
    TabOrder = 3
    TextHint = 'Resultado...'
  end
  object Button1: TButton
    Left = 8
    Top = 109
    Width = 417
    Height = 45
    Caption = 'FORMATAR'
    TabOrder = 4
    OnClick = Button1Click
  end
end
