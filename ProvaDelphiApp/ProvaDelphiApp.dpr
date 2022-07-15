program ProvaDelphiApp;

uses
  Vcl.Forms,
  ProvaDelphiApp.View.Principal in 'src\View\ProvaDelphiApp.View.Principal.pas' {frmPrincipal},
  ProvaDelphiApp.View.Tarefa1 in 'src\View\ProvaDelphiApp.View.Tarefa1.pas' {frmTarefa1},
  ProvaDelphiApp.View.Tarefa2 in 'src\View\ProvaDelphiApp.View.Tarefa2.pas' {frmTarefa2},
  ProvaDelphiApp.View.Tarefa3 in 'src\View\ProvaDelphiApp.View.Tarefa3.pas' {frmTarefa3},
  ProvaDelphiApp.Utilitarios in 'src\Util\ProvaDelphiApp.Utilitarios.pas',
  ProvaDelphiApp.Controller.Interfaces in 'src\Controller\ProvaDelphiApp.Controller.Interfaces.pas',
  ProvaDelphiApp.Controller.Tarefa1 in 'src\Controller\ProvaDelphiApp.Controller.Tarefa1.pas',
  ProvaDelphiApp.Model.Interfaces in 'src\Model\ProvaDelphiApp.Model.Interfaces.pas',
  ProvaDelphiApp.Model.Tarefa1 in 'src\Model\ProvaDelphiApp.Model.Tarefa1.pas',
  ProvaDelphiApp.Thread.Progresso in 'src\Thread\ProvaDelphiApp.Thread.Progresso.pas',
  ProvaDelphiApp.Controller.Tarefa3 in 'src\Controller\ProvaDelphiApp.Controller.Tarefa3.pas',
  ProvaDelphiApp.Model.Tarefa3 in 'src\Model\ProvaDelphiApp.Model.Tarefa3.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
