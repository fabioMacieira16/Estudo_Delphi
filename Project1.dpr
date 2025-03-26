program Project1;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uConfiguracao in 'uConfiguracao.pas' {frmConfiguracao};

// Referência ao form de configuração

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True; // Exibe a principal tela na barra de tarefas
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConfiguracao, frmConfiguracao);
  // Criação do formulário principal
  //Application.CreateForm(uConfiguracao, uConfiguracao);  // Criação do formulário principal
  Application.Run;
end.
