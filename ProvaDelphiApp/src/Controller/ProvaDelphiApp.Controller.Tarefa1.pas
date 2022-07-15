unit ProvaDelphiApp.Controller.Tarefa1;

interface

uses
  ProvaDelphiApp.Controller.Interfaces, ProvaDelphiApp.Model.Interfaces;

type
  TControllerTarefa1 = class(TInterfacedObject, iControllerTarefa1)
  private
    FColunas: String;
    FTabelas: String;
    FCondicoes: String;
    FModelTarefa1: iModelTarefa1;
  public
    constructor Create;
    Destructor Destroy; override;
    class function New: iControllerTarefa1;
    function Colunas(Value: String): iControllerTarefa1;
    function Tabelas(Value: String): iControllerTarefa1;
    function Condicoes(Value: String): iControllerTarefa1;
    function GerarSQL: iControllerTarefa1;
    function GetSQL: String;
  end;

implementation

{ TControllerTarefa1 }

uses ProvaDelphiApp.Model.Tarefa1;

function TControllerTarefa1.Colunas(Value: String): iControllerTarefa1;
begin
  Result := Self;
  FColunas := Value;
end;

function TControllerTarefa1.Condicoes(Value: String): iControllerTarefa1;
begin
  Result := Self;
  FCondicoes := Value;
end;

constructor TControllerTarefa1.Create;
begin
  FModelTarefa1 := TModelTarefa1.New;
end;

destructor TControllerTarefa1.Destroy;
begin

  inherited;
end;

function TControllerTarefa1.GerarSQL: iControllerTarefa1;
begin
  Result := Self;
  FModelTarefa1
    .Colunas(FColunas)
    .Tabelas(FTabelas)
    .Condicoes(FCondicoes)
    .GerarSQL;
end;

function TControllerTarefa1.GetSQL: String;
begin
  Result := FModelTarefa1.GetSQL;
end;

class function TControllerTarefa1.New: iControllerTarefa1;
begin
  Result := Self.Create;
end;

function TControllerTarefa1.Tabelas(Value: String): iControllerTarefa1;
begin
  Result := Self;
  FTabelas := Value;
end;

end.
