unit uFormCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cadastro.Pai, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uFormClasses,
  Vcl.Mask, Vcl.DBCtrls;

type
  TCadastroClientes = class(TCadastroPai)
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
    ds1: TDataSource;
    lbl3: TLabel;
    dbedtFANTASIA: TDBEdit;
    lbl4: TLabel;
    dbedtCPF_CNPJ: TDBEdit;
    lbl5: TLabel;
    dbedtTIPO_FJ: TDBEdit;
    lbl6: TLabel;
    dbedtNOME: TDBEdit;
    lbl7: TLabel;
    dbedtEMAIL: TDBEdit;
    lbl8: TLabel;
    dbedtSITE: TDBEdit;
    lbl9: TLabel;
    dbedtENDERECO: TDBEdit;
    lbl10: TLabel;
    dbedtCOMPLEMENTO: TDBEdit;
    lbl11: TLabel;
    dbedtNUMERO: TDBEdit;
    lbl12: TLabel;
    lbl14: TLabel;
    dbedtBAIRRO: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroClientes: TCadastroClientes;

implementation

{$R *.dfm}

procedure TCadastroClientes.btnNovoClick(Sender: TObject);
var Pessoa: TPessoa;
begin
  inherited;
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

     dbedtNOME.Enabled;
     dbedtRAZAO_SOCIAL.Enabled;
     dbedtCPF_CNPJ.Enabled;
     dbedtFANTASIA.Enabled;
     dbedtTIPO_FJ.Enabled;
     dbedtEMAIL.Enabled;
     dbedtSITE.Enabled;
     dbedtENDERECO.Enabled;
     dbedtCOMPLEMENTO.Enabled;
     dbedtNUMERO.Enabled;
     dbedtIE.Enabled;

  finally
    Pessoa.Free;
  end;
end;

end.

