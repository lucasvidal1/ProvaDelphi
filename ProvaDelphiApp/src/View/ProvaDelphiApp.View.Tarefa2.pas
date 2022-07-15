unit ProvaDelphiApp.View.Tarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  Vcl.Graphics,
  Vcl.Controls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, System.Classes,
  Vcl.Forms, System.Threading, ProvaDelphiApp.Thread.Progresso;

type
  TfrmTarefa2 = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    progress1: TProgressBar;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    progress2: TProgressBar;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtThread1: TEdit;
    edtThread2: TEdit;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FThread1: TThreadProgresso;
    FThread2: TThreadProgresso;
  public
    { Public declarations }
  end;

var
  frmTarefa2: TfrmTarefa2;

implementation

{$R *.dfm}

procedure TfrmTarefa2.Button1Click(Sender: TObject);
var
  Intervalo1: Integer;
  Intervalo2: Integer;
begin
  if TryStrToInt(edtThread1.Text, Intervalo1) and
    TryStrToInt(edtThread2.Text, Intervalo2) then
  begin
    if FThread1 <> nil then
    begin
      if not FThread1.Finished then
        FThread1.Terminate;
      FThread1 := nil;
    end;

    if FThread2 <> nil then
    begin
      if not FThread2.Finished then
        FThread2.Terminate;
      FThread2 := nil;
    end;

    FThread1 := TThreadProgresso.Create(Intervalo1, progress1);
    FThread1.Start;

    FThread2 := TThreadProgresso.Create(Intervalo2, progress2);
    FThread2.Start;
  end;
end;

procedure TfrmTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FThread1 <> nil then
  begin
    if not FThread1.Finished then
      FThread1.Terminate;
    FThread1 := nil;
  end;

  if FThread2 <> nil then
  begin
    if not FThread2.Finished then
      FThread2.Terminate;
    FThread2 := nil;
  end;

  Action := caFree;
  frmTarefa2 := nil;
end;

end.
