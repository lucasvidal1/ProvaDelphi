unit ProvaDelphiApp.Model.Tarefa1;

interface

uses
  ProvaDelphiApp.Model.Interfaces,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.Phys,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, uspQuery;

type
  TModelTarefa1 = class(TInterfacedObject, iModelTarefa1)
  private
    FColunas: String;
    FTabelas: String;
    FCondicoes: String;
    FspQuery: TspQuery;
  public
    constructor Create;
    Destructor Destroy; override;
    class function New: iModelTarefa1;
    function Colunas(Value: String): iModelTarefa1;
    function Tabelas(Value: String): iModelTarefa1;
    function Condicoes(Value: String): iModelTarefa1;
    function GerarSQL: iModelTarefa1;
    function GetSQL: String;
  end;

implementation

{ TModelTarefa1 }

function TModelTarefa1.Colunas(Value: String): iModelTarefa1;
begin
  Result := Self;
  FColunas := Value;
end;

function TModelTarefa1.Condicoes(Value: String): iModelTarefa1;
begin
  Result := Self;
  FCondicoes := Value;
end;

constructor TModelTarefa1.Create;
begin
  FspQuery := TspQuery.Create(nil);
end;

destructor TModelTarefa1.Destroy;
begin
  FspQuery.Free;
  inherited;
end;

function TModelTarefa1.GerarSQL: iModelTarefa1;
begin
  Result := Self;
  FspQuery.spColunas.Text := FColunas;
  FspQuery.spTabelas.Text := FTabelas;
  FspQuery.spCondicoes.Text := FCondicoes;
  FspQuery.GeraSQL;
end;

function TModelTarefa1.GetSQL: String;
begin
  Result := FspQuery.SQL.Text;
end;

class function TModelTarefa1.New: iModelTarefa1;
begin
  Result := Self.Create;
end;

function TModelTarefa1.Tabelas(Value: String): iModelTarefa1;
begin
  Result := Self;
  FTabelas := Value;
end;

end.
