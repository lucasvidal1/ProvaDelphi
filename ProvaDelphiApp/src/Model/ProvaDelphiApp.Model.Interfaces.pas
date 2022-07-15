unit ProvaDelphiApp.Model.Interfaces;

interface

uses
  Data.DB, Datasnap.DBClient;

type
  iModelTarefa1 = interface
    ['{BAF0A736-9AA4-413F-AD98-518C33056742}']
    function Colunas(Value: String): iModelTarefa1;
    function Tabelas(Value: String): iModelTarefa1;
    function Condicoes(Value: String): iModelTarefa1;
    function GerarSQL: iModelTarefa1;
    function GetSQL: String;
  end;

  iModelTarefa3 = interface
    ['{802D5325-8689-4565-B1FA-CEE1BB4AAC1E}']
    function CriarDataSet: iModelTarefa3;
    function PopularDataSet: iModelTarefa3;
    function CriarDataSource: TDataSource;
    function GetDataSet: TClientDataSet;
    function Somar(DataSet: TClientDataSet): Currency;
    function Dividir(DataSet: TClientDataSet): Currency;
  end;

implementation

end.
