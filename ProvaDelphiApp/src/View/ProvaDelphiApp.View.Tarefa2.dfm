object frmTarefa2: TfrmTarefa2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tarefa 2'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 97
    Width = 969
    Height = 59
    Align = alTop
    Caption = 'Thread 1'
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 965
      Height = 42
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object progress1: TProgressBar
        Left = 0
        Top = 0
        Width = 965
        Height = 42
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 156
    Width = 969
    Height = 59
    Align = alTop
    Caption = 'Thread 2'
    TabOrder = 1
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 965
      Height = 42
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object progress2: TProgressBar
        Left = 0
        Top = 0
        Width = 965
        Height = 42
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 969
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 11
      Top = 7
      Width = 112
      Height = 13
      Caption = 'Tempo Thread 1 em MS'
    end
    object Label2: TLabel
      Left = 11
      Top = 51
      Width = 112
      Height = 13
      Caption = 'Tempo Thread 2 em MS'
    end
    object edtThread1: TEdit
      Left = 11
      Top = 26
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtThread2: TEdit
      Left = 11
      Top = 70
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 160
      Top = 30
      Width = 100
      Height = 40
      Caption = 'TThread'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end
