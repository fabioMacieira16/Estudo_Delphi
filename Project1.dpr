program Project1;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uConfiguracao in 'uConfiguracao.pas' {frmConfiguracao};

// Refer�ncia ao form de configura��o

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True; // Exibe a principal tela na barra de tarefas
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConfiguracao, frmConfiguracao);
  // Cria��o do formul�rio principal
  //Application.CreateForm(uConfiguracao, uConfiguracao);  // Cria��o do formul�rio principal
  Application.Run;
end.
