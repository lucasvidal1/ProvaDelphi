unit ProvaDelphiApp.Controller.Tarefa3;

interface

uses
  ProvaDelphiApp.Controller.Interfaces, Datasnap.DBClient, Vcl.Forms, Data.DB,
  ProvaDelphiApp.Model.Interfaces;

type
  TControllerTarefa3 = class(TInterfacedObject, iControllerTarefa3)
  private
    FParent: TForm;
    FModelTarefa3: iModelTarefa3;
  public
    constructor Create(Parent: TForm);
    Destructor Destroy; override;
    class function New(Parent: TForm): iControllerTarefa3;
    function GetDataSource: TDataSource;
    function GetDataSet: TClientDataSet;
    function Somar(DataSet: TClientDataSet): Currency;
    function Dividir(DataSet: TClientDataSet): Currency;
  end;

implementation

uses
  ProvaDelphiApp.Model.Tarefa3;

{ TControllerTarefa3 }

constructor TControllerTarefa3.Create(Parent: TForm);
begin
  FParent := Parent;
  FModelTarefa3 := TModelTarefa3.New(FParent);
end;

function TControllerTarefa3.GetDataSource: TDataSource;
begin
  Result := FModelTarefa3.CriarDataSource;
end;

destructor TControllerTarefa3.Destroy;
begin

  inherited;
end;

function TControllerTarefa3.Dividir(DataSet: TClientDataSet): Currency;
begin
  Result := FModelTarefa3.Dividir(DataSet);
end;

function TControllerTarefa3.GetDataSet: TClientDataSet;
begin
  Result := FModelTarefa3.CriarDataSet.PopularDataSet.GetDataSet;
end;

class function TControllerTarefa3.New(Parent: TForm): iControllerTarefa3;
begin
  Result := Self.Create(Parent);
end;

function TControllerTarefa3.Somar(DataSet: TClientDataSet): Currency;
begin
  Result := FModelTarefa3.Somar(DataSet);
end;

end.
