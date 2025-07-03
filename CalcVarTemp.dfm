object FormCalcVarTemp: TFormCalcVarTemp
  Left = 430
  Top = 206
  Width = 300
  Height = 268
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Estudo de Varia'#231#227'o de tempo.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 40
    Width = 193
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'INICIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 88
    Width = 193
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'FINAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 56
    Top = 152
    Width = 193
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'DIFEREN'#199'A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dtpDateInit: TDateTimePicker
    Left = 56
    Top = 56
    Width = 97
    Height = 21
    Date = 37567.397998553200000000
    Time = 37567.397998553200000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = dtpDateInitChange
  end
  object dtpTimeInit: TDateTimePicker
    Left = 152
    Top = 56
    Width = 97
    Height = 21
    Date = 37567.397998553200000000
    Time = 37567.397998553200000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = dtkTime
    ParentFont = False
    TabOrder = 1
    OnChange = dtpTimeInitChange
  end
  object dtpTimeEnd: TDateTimePicker
    Left = 152
    Top = 104
    Width = 97
    Height = 21
    Date = 37567.397998553200000000
    Time = 37567.397998553200000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = dtkTime
    ParentFont = False
    TabOrder = 2
    OnChange = dtpTimeEndChange
  end
  object dtpDateEnd: TDateTimePicker
    Left = 56
    Top = 104
    Width = 97
    Height = 21
    Date = 37567.397998553200000000
    Time = 37567.397998553200000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnChange = dtpDateEndChange
  end
  object mskedtDifer: TMaskEdit
    Left = 56
    Top = 168
    Width = 191
    Height = 21
    EditMask = '####:##:##;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '0001:00:01'
    OnExit = mskedtDiferExit
  end
end
