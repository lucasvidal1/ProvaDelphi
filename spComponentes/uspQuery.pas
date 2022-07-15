unit uspQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TspQuery = class(TFDQuery)
  private
    FCondicoes: TStringList;
    FColunas: TStringList;
    FTabelas: TStringList;
    procedure SetCondicoes(const Value: TStringList);
    procedure SetColunas(const Value: TStringList);
    procedure SetTabelas(const Value: TStringList);
    function GetCondicoes: String;
    function GetColunas: String;
    function GetTabelas: String;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure GeraSQL;
  published
    { Published declarations }
    property spCondicoes: TStringList read FCondicoes write SetCondicoes;
    property spColunas: TStringList read FColunas write SetColunas;
    property spTabelas: TStringList read FTabelas write SetTabelas;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

{ TspQuery }

constructor TspQuery.Create(AOwner: TComponent);
begin
  inherited;
  FCondicoes := TStringList.Create;
  FColunas := TStringList.Create;
  FTabelas := TStringList.Create;
end;

destructor TspQuery.Destroy;
begin
  FCondicoes.Free;
  FColunas.Free;
  FTabelas.Free;
  inherited;
end;

procedure TspQuery.GeraSQL;
var
  vSQL: String;
begin
  vSQL := 'select ' + GetColunas + ' from ' + GetTabelas + GetCondicoes;
  self.SQL.Text := vSQL;
end;

function TspQuery.GetColunas: String;
begin
  Result := '*';
  if Trim(FColunas.Text) <> '' then
    Result := Trim(FColunas.Text);
end;

function TspQuery.GetCondicoes: String;
begin
  Result := '';
  if Trim(FCondicoes.Text) <> '' then
    Result := ' where ' + Trim(FCondicoes.Text);
end;

function TspQuery.GetTabelas: String;
begin
  Result := '';
  if Trim(self.spTabelas.Text) = '' then
    raise Exception.Create('Informe uma tabela para a geração do SQL.');

  if ((Pos(',', self.spTabelas.Text) > 0) or (self.spTabelas.Count > 1)) then
    raise Exception.Create
      ('É permitido informar apenas uma tabela para a geração do SQL.');

  Result := Trim(FTabelas.Text);
end;

procedure TspQuery.SetColunas(const Value: TStringList);
begin
  FColunas.Text := Value.Text;
end;

procedure TspQuery.SetCondicoes(const Value: TStringList);
begin
  FCondicoes.Text := Value.Text;
end;

procedure TspQuery.SetTabelas(const Value: TStringList);
begin
  FTabelas.Text := Value.Text;
end;

end.
