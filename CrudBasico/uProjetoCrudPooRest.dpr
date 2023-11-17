program uProjetoCrudPooRest;

uses
  Vcl.Forms,
  Cadastro.Pai in 'Cadastro.Pai.pas' {CadastroPai},
  UDm.Con in 'UDm.Con.pas' {Dm: TDataModule},
  uFormClasses in 'uFormClasses.pas',
  UFormCadastroPrincipal in 'UFormCadastroPrincipal.pas' {uFormCadastroPaiPrincipal},
  uLibrary in 'uLibrary.pas',
  uFormPrincipalMainMenu in 'uFormPrincipalMainMenu.pas' {uFormPrincipalMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuFormPrincipalMenu, uFormPrincipalMenu);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TuFormCadastroPaiPrincipal, uFormCadastroPaiPrincipal);
  Application.Run;
end.
