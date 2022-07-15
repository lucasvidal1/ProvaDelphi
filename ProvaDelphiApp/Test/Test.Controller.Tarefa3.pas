unit Test.Controller.Tarefa3;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, Vcl.Forms, ProvaDelphiApp.Controller.Interfaces,
  ProvaDelphiApp.Model.Interfaces, Data.DB, Datasnap.DBClient,
  ProvaDelphiApp.Controller.Tarefa3;

type
  // Test methods for class TControllerTarefa3

  TestTControllerTarefa3 = class(TTestCase)
  strict private
    FForm: TForm;
    FDataSet: TClientDataSet;
    FControllerTarefa3: TControllerTarefa3;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestSomar;
    procedure TestDividir;
  end;

implementation

uses
  System.SysUtils;

procedure TestTControllerTarefa3.SetUp;
begin
  FForm := TForm.Create(nil);
  FControllerTarefa3 := TControllerTarefa3.Create(FForm);
  FDataSet := FControllerTarefa3.GetDataSet;
end;

procedure TestTControllerTarefa3.TearDown;
begin
  FDataSet.Free;
  FDataSet := nil;

  FForm.Free;
  FForm := nil;

  FControllerTarefa3.Free;
  FControllerTarefa3 := nil;
end;

procedure TestTControllerTarefa3.TestSomar;
var
  ReturnValue: Currency;
  ExpectedValue: Currency;
begin
  ExpectedValue := 550.00;

  ReturnValue := StrToFloat(FormatFloat('#0.00', FControllerTarefa3.Somar(FDataSet)));

  CheckEquals(ExpectedValue, ReturnValue, 'A fun��o TestSomar falhou.')
end;

procedure TestTControllerTarefa3.TestDividir;
var
  ReturnValue: Currency;
  ExpectedValue: Currency;
begin
  ExpectedValue := 11.83;

  ReturnValue := StrToFloat(FormatFloat('#0.00', FControllerTarefa3.Dividir(FDataSet)));

  CheckEquals(ExpectedValue, ReturnValue, 'A fun��o TestDividir falhou.')
end;

initialization

  RegisterTest(TestTControllerTarefa3.Suite);
end.

