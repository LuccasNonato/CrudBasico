unit uFormMainPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TBiblioteca = class(TForm)
    mm1: TMainMenu;
    Cadastro1: TMenuItem;
    Pessoas1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Biblioteca: TBiblioteca;

implementation

{$R *.dfm}

end.
