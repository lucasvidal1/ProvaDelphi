unit ProvaDelphiApp.View.Tarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TfrmTarefa3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    edtSoma: TEdit;
    edtDivisao: TEdit;
    btnObterTotal: TButton;
    btnObterDivisao: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnObterTotalClick(Sender: TObject);
    procedure btnObterDivisaoClick(Sender: TObject);
  private
    FDataSourceGrid: TDataSource;
    FDataSetGrid: TClientDataSet;
  public
    { Public declarations }
  end;

var
  frmTarefa3: TfrmTarefa3;

implementation

{$R *.dfm}

uses ProvaDelphiApp.Controller.Tarefa3;

procedure TfrmTarefa3.btnObterDivisaoClick(Sender: TObject);
begin
  edtDivisao.Text := CurrToStrF(TControllerTarefa3.New(Self).Dividir(FDataSetGrid), ffCurrency, 2);
end;

procedure TfrmTarefa3.btnObterTotalClick(Sender: TObject);
begin
  edtSoma.Text := CurrToStrF(TControllerTarefa3.New(Self).Somar(FDataSetGrid), ffCurrency, 2);
end;

procedure TfrmTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDataSourceGrid <> nil then
    FreeAndNil(FDataSourceGrid);
  if FDataSetGrid <> nil then
    FreeAndNil(FDataSetGrid);
  Action := caFree;
  frmTarefa3 := nil;
end;

procedure TfrmTarefa3.FormCreate(Sender: TObject);
begin
  FDataSourceGrid := TControllerTarefa3.New(Self).GetDataSource;
  FDataSetGrid := TControllerTarefa3.New(Self).GetDataSet;
  FDataSourceGrid.DataSet := FDataSetGrid;
  DBGrid1.DataSource := FDataSourceGrid;
end;

end.
