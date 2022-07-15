object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'ProvaDelphiApp'
  ClientHeight = 591
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 16
    Top = 8
    object MenuTarefa: TMenuItem
      Caption = 'Tarefa'
      object SubMenuTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = SubMenuTarefa1Click
      end
      object SubMenuTarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = SubMenuTarefa2Click
      end
      object SubMenuTarefa3: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = SubMenuTarefa3Click
      end
    end
  end
end
