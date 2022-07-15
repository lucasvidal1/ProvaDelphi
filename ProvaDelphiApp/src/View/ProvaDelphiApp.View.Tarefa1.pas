unit ProvaDelphiApp.View.Tarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmTarefa1 = class(TForm)
    lblColunas: TLabel;
    memoColunas: TMemo;
    lblTabelas: TLabel;
    memoTabelas: TMemo;
    lblCondicoes: TLabel;
    memoCondicoes: TMemo;
    lblSQLGerado: TLabel;
    memoSQLGerado: TMemo;
    btnGerarSQL: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGerarSQLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTarefa1: TfrmTarefa1;

implementation

{$R *.dfm}

uses ProvaDelphiApp.Controller.Tarefa1;

procedure TfrmTarefa1.btnGerarSQLClick(Sender: TObject);
begin
  memoSQLGerado.Lines.Text := TControllerTarefa1.New
                                .Colunas(memoColunas.Lines.Text)
                                .Tabelas(memoTabelas.Lines.Text)
                                .Condicoes(memoCondicoes.Lines.Text)
                                .GerarSQL.GetSQL;
end;

procedure TfrmTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmTarefa1 := nil;
end;

end.
