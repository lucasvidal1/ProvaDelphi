unit ProvaDelphiApp.Thread.Progresso;

interface

uses
  System.Classes, Vcl.ComCtrls;

type
  TThreadProgresso = class(TThread)
  private
    FIntervalo: integer;
    FContador: integer;
    Fprogress: TProgressBar;
    procedure Contator;
  public
    constructor Create(Intervalo: integer; Progress: TProgressBar);
    procedure Execute; override;
  end;

implementation

{ TThreadProgresso }

procedure TThreadProgresso.Contator;
begin
  Inc(FContador);
  Fprogress.Position := FContador;

  if FContador = 100 then
    Terminate;
end;

constructor TThreadProgresso.Create(Intervalo: integer; Progress: TProgressBar);
begin
  inherited Create(True);
  FreeOnTerminate := True;
  FIntervalo := Intervalo;
  FContador := 0;
  Fprogress := Progress;
  Fprogress.Min := 0;
  Fprogress.Max := 100;
  Fprogress.Position := 0;
end;

procedure TThreadProgresso.Execute;
begin
  inherited;
  while not Terminated do
  begin
    Synchronize(Contator);
    Sleep(FIntervalo);
  end;
end;

end.
