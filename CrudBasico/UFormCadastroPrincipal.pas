unit UFormCadastroPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cadastro.Pai, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, uFormClasses, REST.Types, REST.Response.Adapter, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, uLibrary, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMemo;

type
  TuFormCadastroPaiPrincipal = class(TCadastroPai)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    MemTable: TFDMemTable;
    edtConsCep: TEdit;
    lbl1: TLabel;
    cxMemo: TcxMemo;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtConsCepExit(Sender: TObject);
//    procedure habilitagrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFormCadastroPaiPrincipal: TuFormCadastroPaiPrincipal;

implementation

{$R *.dfm}


procedure TuFormCadastroPaiPrincipal.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Habilitar := False;
end;

procedure TuFormCadastroPaiPrincipal.btnGravarClick(Sender: TObject);
begin
  inherited;
  habilitar := False;
end;

procedure TuFormCadastroPaiPrincipal.btnNovoClick(Sender: TObject);
begin
  inherited;
  habilitar := True;
end;

procedure TuFormCadastroPaiPrincipal.edtConsCepExit(Sender: TObject);
var
    cep: String;
begin
  inherited;


    //
    cep := SomenteNumero(edtConsCep.Text);

    //Tamanho da string em cep
    if Length(cep) <> 8 then
    begin
        ShowMessage('CEP Invalido!');
        exit;
    end;

    //Executando requisição
     RESTRequest1.Resource := cep + '/json';
     RESTRequest1.Execute;

    //Verificando retorno 200 = sucesso
     if RESTRequest1.Response.StatusCode = 200 then
     begin
        //verificando se tem erro no retorno
        if RESTRequest1.Response.Content.IndexOf('erro') > 0 then
        begin
            ShowMessage('CEP não encontrado!');
        end
        else
        begin
          with MemTable do
          begin
              cxMemo.Lines.Clear;
              cxMemo.Lines.Add('Cep: ' + FieldByName('cep').AsString);
              cxMemo.Lines.Add('Rua: ' + FieldByName('logradouro').AsString);
              cxMemo.Lines.Add('Comple: ' + FieldByName('complemento').AsString);
              cxMemo.Lines.Add('Bairro: ' + FieldByName('bairro').AsString);
              cxMemo.Lines.Add('Cidade: ' + FieldByName('localidade').AsString);
              cxMemo.Lines.Add('UF: ' + FieldByName('uf').AsString);
              cxMemo.Lines.Add('IBGE: ' + FieldByName('ibge').AsString);
          end;
        end;
     end
     else
     begin
        ShowMessage('Erro ao consultar CEP.');
     end;


end;

//procedure TuFormCadastroPaiPrincipal.habilitagrid;
//begin
//    if (habilitar = True) then
//    begin
//      dbedtNOME.Enabled         := True;
//      dbedtRAZAO_SOCIAL.Enabled := True;
//      dbedtCPF_CNPJ.Enabled     := True;
//      dbedtFANTASIA.Enabled     := True;
//      dbedtTIPO_FJ.Enabled      := True;
//      dbedtEMAIL.Enabled        := True;
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
//      dbedtEMAIL.Enabled        := False;
//      dbedtSITE.Enabled         := False;
//      dbedtENDERECO.Visible     := False;
//      dbedtCOMPLEMENTO.Enabled  := False;
//      dbedtNUMERO.Enabled       := False;
//      dbedtIE.Enabled           := False;
//    end;
//
//end;

end.
