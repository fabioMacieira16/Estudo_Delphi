unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    imgLogo: TImage;
    btnConfigurar: TButton;
    procedure btnConfigurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uConfiguracao; // Agora usamos apenas na implementação

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  CaminhoImagem: string;
begin
  CaminhoImagem := ExtractFilePath(ParamStr(0)) + 'logo.png';
  if FileExists(CaminhoImagem) then
  begin
    imgLogo.Picture.LoadFromFile(CaminhoImagem);
  end;
end;

procedure TfrmPrincipal.btnConfigurarClick(Sender: TObject);
begin
  frmConfiguracao := TfrmConfiguracao.Create(Self);
  try
    frmConfiguracao.ShowModal;
  finally
    FreeAndNil(frmConfiguracao);
  end;
end;

end.

