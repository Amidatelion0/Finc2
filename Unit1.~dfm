object Form1: TForm1
  Left = 263
  Top = 121
  Width = 463
  Height = 418
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 19
    Width = 18
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 16
    Top = 52
    Width = 31
    Height = 13
    Caption = 'NAMA'
  end
  object Label3: TLabel
    Left = 16
    Top = 84
    Width = 27
    Height = 13
    Caption = 'TELP'
  end
  object Label4: TLabel
    Left = 16
    Top = 116
    Width = 32
    Height = 13
    Caption = 'EMAIL'
  end
  object Label5: TLabel
    Left = 16
    Top = 147
    Width = 43
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label6: TLabel
    Left = 16
    Top = 178
    Width = 47
    Height = 13
    Caption = 'MEMBER'
  end
  object Label7: TLabel
    Left = 232
    Top = 179
    Width = 50
    Height = 13
    Caption = 'DISKON : '
  end
  object Label8: TLabel
    Left = 288
    Top = 179
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 72
    Top = 16
    Width = 369
    Height = 21
    Enabled = False
    MaxLength = 16
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 48
    Width = 369
    Height = 21
    Enabled = False
    MaxLength = 100
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 72
    Top = 144
    Width = 369
    Height = 21
    Enabled = False
    MaxLength = 255
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 72
    Top = 112
    Width = 369
    Height = 21
    Enabled = False
    MaxLength = 100
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 72
    Top = 80
    Width = 369
    Height = 21
    Enabled = False
    MaxLength = 20
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 72
    Top = 176
    Width = 145
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 5
    OnChange = ComboBox1Change
    Items.Strings = (
      'YES'
      'NO')
  end
  object Button1: TButton
    Left = 16
    Top = 208
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 102
    Top = 208
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = Clecker
  end
  object Button3: TButton
    Left = 190
    Top = 208
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 278
    Top = 208
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 365
    Top = 208
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 10
    OnClick = Button5Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 248
    Width = 425
    Height = 120
    DataSource = DataSource1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    Port = 3306
    Database = 'final'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\wamp\bin\mysql\mysql5.7.40\lib\libmysql.dll'
    Left = 480
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 480
    Top = 80
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 480
    Top = 48
  end
end
