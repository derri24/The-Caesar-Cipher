object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1064#1080#1092#1088' '#1062#1077#1079#1072#1088#1103
  ClientHeight = 278
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 125
    Width = 96
    Height = 19
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 103
    Width = 153
    Height = 16
    Caption = #1046#1077#1083#1072#1077#1084#1086#1077' '#1089#1084#1077#1097#1077#1085#1080#1077': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EncryptButton: TButton
    Left = 8
    Top = 245
    Width = 129
    Height = 25
    Caption = #1047#1072#1096#1080#1092#1088#1086#1074#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = EncryptButtonClick
  end
  object DecryptButton: TButton
    Left = 158
    Top = 245
    Width = 129
    Height = 25
    Caption = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = DecryptButtonClick
  end
  object SpinEdit1: TSpinEdit
    Left = 167
    Top = 103
    Width = 120
    Height = 22
    MaxValue = 25
    MinValue = 1
    TabOrder = 2
    Value = 0
    OnChange = SpinEdit1Change
  end
  object Edit1: TMemo
    Left = 8
    Top = 8
    Width = 279
    Height = 89
    TabOrder = 3
    OnChange = Edit1Change
  end
  object ResultLabel: TMemo
    Left = 8
    Top = 150
    Width = 279
    Height = 89
    ReadOnly = True
    TabOrder = 4
  end
end
