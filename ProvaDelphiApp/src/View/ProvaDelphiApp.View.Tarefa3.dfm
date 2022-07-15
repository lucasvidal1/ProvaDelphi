object frmTarefa3: TfrmTarefa3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tarefa 3'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 96
    Height = 13
    Caption = 'Valores por projeto:'
  end
  object Label2: TLabel
    Left = 808
    Top = 293
    Width = 44
    Height = 13
    Caption = 'Total R$:'
  end
  object Label3: TLabel
    Left = 808
    Top = 341
    Width = 85
    Height = 13
    Caption = 'Total divis'#245'es R$:'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 43
    Width = 897
    Height = 238
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        ReadOnly = False
        Title.Caption = 'IdProjeto'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'NomeProjeto'
        Width = 650
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 100
        Visible = True
      end>
  end
  object edtSoma: TEdit
    Left = 808
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtDivisao: TEdit
    Left = 808
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnObterTotal: TButton
    Left = 672
    Top = 310
    Width = 122
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 3
    OnClick = btnObterTotalClick
  end
  object btnObterDivisao: TButton
    Left = 672
    Top = 358
    Width = 122
    Height = 25
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 4
    OnClick = btnObterDivisaoClick
  end
end
