object frmTarefa1: TfrmTarefa1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tarefa 1'
  ClientHeight = 551
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblColunas: TLabel
    Left = 48
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lblTabelas: TLabel
    Left = 312
    Top = 32
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object lblCondicoes: TLabel
    Left = 576
    Top = 32
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object lblSQLGerado: TLabel
    Left = 48
    Top = 238
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object memoColunas: TMemo
    Left = 48
    Top = 51
    Width = 200
    Height = 150
    TabOrder = 0
  end
  object memoTabelas: TMemo
    Left = 312
    Top = 51
    Width = 200
    Height = 150
    TabOrder = 1
  end
  object memoCondicoes: TMemo
    Left = 576
    Top = 51
    Width = 200
    Height = 150
    TabOrder = 2
  end
  object memoSQLGerado: TMemo
    Left = 48
    Top = 257
    Width = 873
    Height = 256
    TabOrder = 3
  end
  object btnGerarSQL: TButton
    Left = 824
    Top = 112
    Width = 97
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = btnGerarSQLClick
  end
end
