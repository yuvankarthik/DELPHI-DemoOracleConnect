object fmConnectORA: TfmConnectORA
  Left = 0
  Top = 0
  Caption = 'Demo Oracle Connect'
  ClientHeight = 286
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 5
    Width = 60
    Height = 13
    Caption = 'SQL TEXT : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 190
    Width = 259
    Height = 13
    Caption = 'SQL Result : (only first row first column result)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object memoSQLText: TMemo
    Left = 16
    Top = 23
    Width = 433
    Height = 110
    TabOrder = 0
  end
  object btnExecuteQuery: TButton
    Left = 16
    Top = 139
    Width = 433
    Height = 40
    Caption = 'Execute Query'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnExecuteQueryClick
  end
  object memoResult: TMemo
    Left = 16
    Top = 209
    Width = 433
    Height = 69
    TabOrder = 2
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'OracleConnection'
    DriverName = 'Oracle'
    Params.Strings = (
      'DriverUnit=Data.DBXOracle'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver170.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=17.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXOracleMetaDataCommandFactory,DbxOracle' +
        'Driver170.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXOracleMetaDataCommandFac' +
        'tory,Borland.Data.DbxOracleDriver,Version=17.0.0.0,Culture=neutr' +
        'al,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverORACLE'
      'LibraryName=dbxora.dll'
      'LibraryNameOsx=libsqlora.dylib'
      'VendorLib=oci.dll'
      'VendorLibWin64=oci.dll'
      'VendorLibOsx=libociei.dylib'
      'Password=password'
      'MaxBlobSize=-1'
      'OSAuthentication=False'
      'MultipleTransactions=False'
      'TrimChar=False'
      'DriverName=Oracle'
      'Database=orcl'
      'User_Name=demoapp'
      'log=log'
      'RowsetSize=20'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OS Authentication=False'
      'Multiple Transaction=False'
      'Trim Char=False'
      'Decimal Separator=.'
      'HostName=localhost')
    Top = 256
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Top = 216
  end
end
