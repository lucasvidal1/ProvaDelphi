unit ProvaDelphiApp.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu: TMainMenu;
    MenuTarefa: TMenuItem;
    SubMenuTarefa1: TMenuItem;
    SubMenuTarefa2: TMenuItem;
    SubMenuTarefa3: TMenuItem;
    procedure SubMenuTarefa1Click(Sender: TObject);
    procedure SubMenuTarefa2Click(Sender: TObject);
    procedure SubMenuTarefa3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  ProvaDelphiApp.View.Tarefa1, ProvaDelphiApp.View.Tarefa2,
  ProvaDelphiApp.View.Tarefa3, ProvaDelphiApp.Utilitarios,
  System.UITypes;

{$R *.dfm}

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmTarefa1 <> nil then
  begin
    MessageDlg('Formulário Tarefa 1 está aberto, feche-o antes.', mtWarning,
      [mbOK], 0);
    Abort;
  end;

  if frmTarefa2 <> nil then
  begin
    MessageDlg('Formulário Tarefa 2 está aberto, feche-o antes.', mtWarning,
      [mbOK], 0);
    Abort;
  end;

  if frmTarefa3 <> nil then
  begin
    MessageDlg('Formulário Tarefa 3 está aberto, feche-o antes.', mtWarning,
      [mbOK], 0);
    Abort;
  end;
end;

procedure TfrmPrincipal.SubMenuTarefa1Click(Sender: TObject);
begin
  CriaForm(Self, TfrmTarefa1, TObject(frmTarefa1));
end;

procedure TfrmPrincipal.SubMenuTarefa2Click(Sender: TObject);
begin
  CriaForm(Self, TfrmTarefa2, TObject(frmTarefa2));
end;

procedure TfrmPrincipal.SubMenuTarefa3Click(Sender: TObject);
begin
  CriaForm(Self, TfrmTarefa3, TObject(frmTarefa3));
end;

end.
