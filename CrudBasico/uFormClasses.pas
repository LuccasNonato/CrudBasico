unit uFormClasses;

interface

uses 
  UDm.Con,FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,System.SysUtils, FireDAC.Comp.DataSet;
type
   TPessoa = class
   private
   public
     ID_CLIENTE   : Integer;
     CPF_CNPJ     : string;
     RAZAO_SOCIAL : string;
     FANTASIA     : string;
     TIPO_FJ      : string;
     NOME         : string;
     EMAIL        : string;
     SITE         : string;
     ENDERECO     : string;
     COMPLEMENTO  : string;
     NUMERO       : string;
     IE           : string;
     DT_EXCLUIDO  : TDate;
     BAIRRO       : string;
   end;

   procedure insere(CPF_CNPJ : string;
                    RAZAO_SOCIAL : string; 
                    FANTASIA : string; TIPO_FJ : string; 
                    NOME : string; EMAIL : string; 
                    SITE : string; ENDERECO : string; 
                    COMPLEMENTO : string; 
                    NUMERO : string; 
                    IE : string);


implementation

procedure insere(CPF_CNPJ : string;
                 RAZAO_SOCIAL : string; 
                 FANTASIA : string; TIPO_FJ : string; 
                 NOME : string; EMAIL : string; 
                 SITE : string; ENDERECO : string; 
                 COMPLEMENTO : string; 
                 NUMERO : string; 
                 IE : string);
                 
var Qry : TFDQuery;
begin
   Qry := TFDQuery.CREATE( NIL );
   Qry.Connection := Dm.conCon;

   Dm.conCon.StartTransaction;
   try

      Qry.Active := False;
      Qry.SQL.Text := ' INSERT INTO CLIENTE(razao_social, fantasia, cpf_cnpj, tipo_fj, Nome, email, site, endereco, complemento, numero, ie) ' +
                                    '  VALUES (' +
                                    QuotedStr( RAZAO_SOCIAL ) + ',' +
                                    QuotedStr( FANTASIA ) + ',' +
                                    QuotedStr( CPF_CNPJ ) + ',' +
                                    QuotedStr( TIPO_FJ ) + ',' +
                                    QuotedStr( NOME ) + ',' +
                                    QuotedStr( EMAIL ) + ',' +
                                    QuotedStr( SITE ) + ',' +
                                    QuotedStr( ENDERECO ) + ',' +
                                    QuotedStr( COMPLEMENTO ) + ',' +
                                    QuotedStr( NUMERO ) + ',' +
                                    QuotedStr( IE ) + ')';
;
      Qry.ExecSQL;
      Dm.conCon.Commit;
   except
      on Exc: Exception do
      begin
         Dm.conCon.Rollback;
      end;
   end;
   FreeAndNil(Qry);
end;

end.
