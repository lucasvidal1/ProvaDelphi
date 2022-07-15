unit uspComponentesRegistro;

interface

uses
  System.Classes;

procedure Register;

implementation

uses uspQuery;

procedure Register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

end.
