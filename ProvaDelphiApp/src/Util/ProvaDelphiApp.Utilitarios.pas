unit ProvaDelphiApp.Utilitarios;

interface

uses
  Vcl.Forms;

Procedure CriaForm(Parent: TForm; FormClasse: TFormClass; var NewForm: TObject);

implementation

Procedure CriaForm(Parent: TForm; FormClasse: TFormClass; var NewForm: TObject);
begin
  if (TForm(NewForm) = Nil) or (not TForm(NewForm).HandleAllocated) Then
    NewForm := FormClasse.Create(Parent)
  else
  begin
    if (TForm(NewForm).WindowState = WsMinimized) Then
      TForm(NewForm).WindowState := wsNormal;
  end;
  TForm(NewForm).Show;
end;

end.
