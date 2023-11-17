unit uFormPrincipalMainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uLibrary;

type
  TuFormPrincipalMenu = class(TForm)
    mm1: TMainMenu;
    Cadastro1: TMenuItem;
    Pessoas1: TMenuItem;
    procedure Pessoas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFormPrincipalMenu: TuFormPrincipalMenu;

implementation

uses
  UFormCadastroPrincipal;

{$R *.dfm}

procedure TuFormPrincipalMenu.Pessoas1Click(Sender: TObject);
begin
    ShowModalForm(TuFormCadastroPaiPrincipal, uFormCadastroPaiPrincipal );
end;

end.
