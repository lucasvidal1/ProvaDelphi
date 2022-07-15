unit ProvaDelphiApp.Controller.Interfaces;

interface

uses
  Data.DB, Datasnap.DBClient;

type
  iControllerTarefa1 = interface
    ['{7EE5E1B4-DC58-4F5C-A105-D1B77BE92919}']
    function Colunas(Value: String): iControllerTarefa1;
    function Tabelas(Value: String): iControllerTarefa1;
    function Condicoes(Value: String): iControllerTarefa1;
    function GerarSQL: iControllerTarefa1;
    function GetSQL: String;
  end;

  iControllerTarefa3 = interface
    ['{8462ADC0-C87E-4AD3-8A40-CDEE06B5BFA2}']
    function GetDataSource: TDataSource;
    function GetDataSet: TClientDataSet;
    function Somar(DataSet: TClientDataSet): Currency;
    function Dividir(DataSet: TClientDataSet): Currency;
  end;

implementation

end.
