unit Cadastro.Pai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.VCLUI.Wait, UDm.Con, Vcl.Mask, Vcl.DBCtrls, uFormClasses, uLibrary;

type
  TCadastroPai = class(TForm)
    pnlCabecalho: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    FDQry: TFDQuery;
    FDQryID_CLIENTE: TIntegerField;
    FDQryRAZAO_SOCIAL: TWideStringField;
    FDQryFANTASIA: TWideStringField;
    FDQryCPF_CNPJ: TWideStringField;
    FDQryTIPO_FJ: TWideStringField;
    FDQryNOME: TWideStringField;
    FDQryEMAIL: TWideStringField;
    FDQrySITE: TWideStringField;
    FDQryENDERECO: TWideStringField;
    FDQryCOMPLEMENTO: TWideStringField;
    FDQryNUMERO: TWideStringField;
    FDQryIE: TWideStringField;
    FDQryDT_EXCLUIDO: TDateField;
    FDQryBAIRRO: TWideStringField;
    FDTrans: TFDTransaction;
    DataSource: TDataSource;
    lbl13: TLabel;
    dbedtRAZAO_SOCIAL: TDBEdit;
    Label3: TLabel;
    dbedtFANTASIA: TDBEdit;
    Label4: TLabel;
    dbedtCPF_CNPJ: TDBEdit;
    Label5: TLabel;
    dbedtTIPO_FJ: TDBEdit;
    Label6: TLabel;
    dbedtNOME: TDBEdit;
    Label7: TLabel;
    dbedtEMAIL: TDBEdit;
    Label8: TLabel;
    dbedtSITE: TDBEdit;
    Label9: TLabel;
    dbedtENDERECO: TDBEdit;
    Label10: TLabel;
    dbedtCOMPLEMENTO: TDBEdit;
    Label11: TLabel;
    dbedtNUMERO: TDBEdit;
    Label12: TLabel;
    dbedtIE: TDBEdit;
    Label14: TLabel;
    dbedtBAIRRO: TDBEdit;
    dbgrd1: TDBGrid;
    btnInsClass: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
//    procedure habilitagrid;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnInsClassClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var habilitar : Boolean;
  end;

var
  CadastroPai: TCadastroPai;

implementation

{$R *.dfm}

procedure TCadastroPai.btnCancelarClick(Sender: TObject);
begin
   habilitar := False;
   if fdQry.State in [dsEdit, dsInsert] then begin
    if MsgPerguntar('Deseja realmente cancelar?', False) then begin
      fdTrans.StartTransaction;
      fdQry.Cancel;
      fdTrans.RollbackRetaining;
    end;
  end;
end;

procedure TCadastroPai.btnExcluirClick(Sender: TObject);
begin
    if fdQry.RecordCount > 0 then begin
    if MsgPerguntar('Tem certeza que deseja excluir?', False) then begin
       fdQry.Edit;
       fdQry.FieldByName('DT_EXCLUIDO').AsDateTime := Date;
       fdTrans.StartTransaction;
       fdQry.Post;
       fdTrans.Commit;
       FDQry.Refresh;
       MsgInformacao('Pronto. Registro excluído com sucesso!');
    end;
  end;
end;

procedure TCadastroPai.btnGravarClick(Sender: TObject);
begin
   habilitar := False;
   if fdQry.State in [dsEdit, dsInsert] then begin
    if MsgPerguntar('Tem certeza?', False) then begin
      fdTrans.StartTransaction;
      fdQry.Post;
      fdTrans.CommitRetaining;
      MsgInformacao('Pronto.');
      FDQry.Refresh;
    end;
  end;
end;

procedure TCadastroPai.btnInsClassClick(Sender: TObject);
begin

   uFormClasses.insere(dbedtCPF_CNPJ.EditText,dbedtRAZAO_SOCIAL.EditText,dbedtFANTASIA.EditText,dbedtTIPO_FJ.EditText,dbedtNOME.EditText,dbedtEMAIL.EditText,
                       dbedtSITE.EditText,dbedtENDERECO.EditText,dbedtCOMPLEMENTO.EditText,dbedtNUMERO.EditText,dbedtIE.EditText);
   FDQry.Refresh;

end;

procedure TCadastroPai.btnNovoClick(Sender: TObject);
var Pessoa : TPessoa;
begin
  Pessoa := TPessoa.Create;
  try
     Pessoa.NOME          := dbedtNOME.EditText;
     Pessoa.RAZAO_SOCIAL  := dbedtRAZAO_SOCIAL.EditText;
     Pessoa.CPF_CNPJ      := dbedtCPF_CNPJ.EditText;
     Pessoa.FANTASIA      := dbedtFANTASIA.EditText;
     Pessoa.TIPO_FJ       := dbedtTIPO_FJ.EditText;
     Pessoa.EMAIL         := dbedtEMAIL.EditText;
     Pessoa.SITE          := dbedtSITE.EditText;
     Pessoa.ENDERECO      := dbedtENDERECO.EditText;
     Pessoa.COMPLEMENTO   := dbedtCOMPLEMENTO.EditText;
     Pessoa.NUMERO        := dbedtNUMERO.EditText;
     Pessoa.IE            := dbedtIE.EditText;

     habilitar := True;
  finally
    Pessoa.Free;
  end;

  if not (fdQry.State in [dsEdit, dsInsert]) then begin
    fdQry.Insert;
  end;
end;

procedure TCadastroPai.btnSairClick(Sender: TObject);
begin
   Self.Close;
end;

//procedure TCadastroPai.habilitagrid;
//begin
//    if (habilitar = True) then
//    begin
//      dbedtNOME.Enabled         := True;
//      dbedtRAZAO_SOCIAL.Enabled := True;
//      dbedtCPF_CNPJ.Enabled     := True;
//      dbedtFANTASIA.Enabled     := True;
//      dbedtTIPO_FJ.Enabled      := True;
//      dbedtEMAIL.Visible        := True;
//      dbedtSITE.Enabled         := True;
//      dbedtENDERECO.Enabled     := True;
//      dbedtCOMPLEMENTO.Enabled  := True;
//      dbedtNUMERO.Enabled       := True;
//      dbedtIE.Enabled           := True;
//    end
//    else
//    begin
//      dbedtNOME.Enabled         := False;
//      dbedtRAZAO_SOCIAL.Enabled := False;
//      dbedtCPF_CNPJ.Enabled     := False;
//      dbedtFANTASIA.Enabled     := False;
//      dbedtTIPO_FJ.Enabled      := False;
//      dbedtEMAIL.Visible        := False;
//      dbedtSITE.Enabled         := False;
//      dbedtENDERECO.Enabled     := False;
//      dbedtCOMPLEMENTO.Enabled  := False;
//      dbedtNUMERO.Enabled       := False;
//      dbedtIE.Enabled           := False;
//    end;
//
//end;

function MsgPerguntar(pMsg: String; pFocoBtnSim: Boolean = True): Boolean;
begin
  if pFocoBtnSim then begin
    Result := Application.MessageBox(PChar(pMsg), 'Pergunta', MB_ICONQUESTION + MB_YESNO) = IDYES;
  end
  else begin
    Result := Application.MessageBox(PChar(pMsg), 'Pergunta', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES;
  end;
end;

procedure MsgInformacao(pMsg: String);
begin
  Application.MessageBox(PChar(pMsg), 'Informação', MB_ICONINFORMATION + MB_OK);
end;

end.
