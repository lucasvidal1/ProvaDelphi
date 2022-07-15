program ProvaDelphiAppTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  Test.Controller.Tarefa1 in 'Test.Controller.Tarefa1.pas',
  ProvaDelphiApp.Controller.Interfaces in '..\src\Controller\ProvaDelphiApp.Controller.Interfaces.pas',
  ProvaDelphiApp.Controller.Tarefa1 in '..\src\Controller\ProvaDelphiApp.Controller.Tarefa1.pas',
  ProvaDelphiApp.Model.Interfaces in '..\src\Model\ProvaDelphiApp.Model.Interfaces.pas',
  ProvaDelphiApp.Model.Tarefa1 in '..\src\Model\ProvaDelphiApp.Model.Tarefa1.pas',
  Test.Controller.Tarefa3 in 'Test.Controller.Tarefa3.pas',
  ProvaDelphiApp.Controller.Tarefa3 in '..\src\Controller\ProvaDelphiApp.Controller.Tarefa3.pas',
  ProvaDelphiApp.Model.Tarefa3 in '..\src\Model\ProvaDelphiApp.Model.Tarefa3.pas',
  Test.Model.Tarefa1 in 'Test.Model.Tarefa1.pas',
  Test.Model.Tarefa3 in 'Test.Model.Tarefa3.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

