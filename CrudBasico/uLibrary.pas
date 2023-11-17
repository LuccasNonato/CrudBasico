unit uLibrary;

interface
uses System.SysUtils, Vcl.Forms, FireDAC.Comp.Client, System.Classes, frxClass,
  Winapi.Windows;
type
  TNav = (tFirst, tPrior, tNext, tLast, tNil);
  procedure AtualizaFDQuery(const pFDQuery: TFDQuery; pSQL: string);
  procedure ShowModalForm(pClass: TComponentClass; pForm: TForm);
  procedure ShowForm(pClass: TComponentClass; pForm: TForm);

  procedure MsgAtencao(pMsg: String);
  procedure MsgInformacao(pMsg: String);
  function MsgPerguntar(pMsg: String; pFocoBtnSim: Boolean = True): Boolean;
  procedure MsgErro(pMsg: String);
  function SomenteNumero(str : string) : string;

implementation

procedure AtualizaFDQuery(const pFDQuery: TFDQuery; pSQL: string);
begin
  pFDQuery.Close;
  if Trim(pSQL) <> '' then begin
    pFDQuery.SQL.Clear;
    pFDQuery.SQL.Text := pSQL;
  end;
  pFDQuery.Open;
  pFDQuery.FetchAll;
end;

procedure ShowModalForm(pClass: TComponentClass; pForm: TForm);
begin
  try
    Application.CreateForm(pClass, pForm);
    pForm.ShowModal;
  finally
    FreeAndNil(pForm);
  end;
end;

procedure ShowForm(pClass: TComponentClass; pForm: TForm);
begin
  try
    Application.CreateForm(pClass, pForm);
    pForm.Show;
  finally
  end;
end;


procedure MsgAtencao(pMsg: String);
begin
  Application.MessageBox(PChar(pMsg), 'Atenção', MB_ICONWARNING + MB_OK);
end;

procedure MsgInformacao(pMsg: String);
begin
  Application.MessageBox(PChar(pMsg), 'Informação', MB_ICONINFORMATION + MB_OK);
end;

function MsgPerguntar(pMsg: String; pFocoBtnSim: Boolean = True): Boolean;
begin
  if pFocoBtnSim then begin
    Result := Application.MessageBox(PChar(pMsg), 'Pergunta', MB_ICONQUESTION + MB_YESNO) = IDYES;
  end
  else begin
    Result := Application.MessageBox(PChar(pMsg), 'Pergunta', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES;
  end;
end;

procedure MsgErro(pMsg: String);
begin
  Application.MessageBox(PChar(pMsg), 'Erro', MB_ICONERROR + MB_OK);
end;

function SomenteNumero(str : string) : string;
var
    x : integer;
begin
    Result := '';
    for x := 0 to Length(str) - 1 do
        if (str.Chars[x] In ['0'..'9']) then
            Result := Result + str.Chars[x];
end;


end.
