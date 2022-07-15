unit ProvaDelphiApp.Model.Tarefa3;

interface

uses
  ProvaDelphiApp.Model.Interfaces, Datasnap.DBClient, Vcl.Forms, Data.DB;

type
  TModelTarefa3 = class(TInterfacedObject, iModelTarefa3)
  private
    FParent: TForm;
    FDataSet: TClientDataSet;
  public
    constructor Create(Parent: TForm);
    Destructor Destroy; override;
    class function New(Parent: TForm): iModelTarefa3;
    function CriarDataSet: iModelTarefa3;
    function PopularDataSet: iModelTarefa3;
    function CriarDataSource: TDataSource;
    function GetDataSet: TClientDataSet;
    function Somar(DataSet: TClientDataSet): Currency;
    function Dividir(DataSet: TClientDataSet): Currency;
  end;

implementation

uses
  System.Classes, System.SysUtils;

{ TModelTarefa3 }

constructor TModelTarefa3.Create(Parent: TForm);
begin
  FParent := Parent;
end;

function TModelTarefa3.CriarDataSet: iModelTarefa3;
begin
  Result := Self;

  if FDataSet = nil then
    FDataSet := TClientDataSet.Create(FParent);

  FDataSet.Close;
  FDataSet.FieldDefs.Clear;
  FDataSet.FieldDefs.Add('ID', ftInteger);
  FDataSet.FieldDefs.Add('NOME', ftString, 50);
  FDataSet.FieldDefs.Add('VALOR', ftCurrency);
  FDataSet.CreateDataSet;
end;

function TModelTarefa3.CriarDataSource: TDataSource;
begin
  Result := TDataSource.Create(FParent);
end;

destructor TModelTarefa3.Destroy;
begin

  inherited;
end;

function TModelTarefa3.Dividir(DataSet: TClientDataSet): Currency;
var
  VlrAtual, NextVlr, AuxVlr: Currency;
begin
  AuxVlr := 0;
  DataSet.First;
  while DataSet.RecNo < DataSet.RecordCount do
  begin
    VlrAtual := DataSet.FieldByName('VALOR').AsCurrency;
    DataSet.Next;
    NextVlr := DataSet.FieldByName('VALOR').AsCurrency;

    if VlrAtual > 0 then
      AuxVlr := AuxVlr + (NextVlr / VlrAtual)
    else
      AuxVlr := AuxVlr + NextVlr;
  end;
  Result := AuxVlr;
end;

function TModelTarefa3.GetDataSet: TClientDataSet;
begin
  Result := FDataSet;
end;

class function TModelTarefa3.New(Parent: TForm): iModelTarefa3;
begin
  Result := Self.Create(Parent);
end;

function TModelTarefa3.PopularDataSet: iModelTarefa3;
begin
  Result := Self;
  if FDataSet <> nil then
  begin
    while FDataSet.RecordCount < 10 do
    begin
      FDataSet.Append;
      FDataSet.FieldByName('ID').AsInteger := FDataSet.RecordCount + 1;
      FDataSet.FieldByName('NOME').AsString := 'Projeto ' + IntToStr(FDataSet.RecordCount + 1);
      //FDataSet.FieldByName('VALOR').AsCurrency := Random(100);
      FDataSet.FieldByName('VALOR').AsCurrency := (FDataSet.RecordCount + 1) * 10;
      FDataSet.Post;
    end;
  end;
end;

function TModelTarefa3.Somar(DataSet: TClientDataSet): Currency;
var
  SomaVlr: Currency;
begin
  SomaVlr := 0;
  DataSet.First;
  while not DataSet.Eof do
  begin
    SomaVlr := SomaVlr + DataSet.FieldByName('VALOR').AsCurrency;
    DataSet.Next;
  end;
  Result := SomaVlr;
end;

end.
