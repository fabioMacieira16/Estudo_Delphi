unit uConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmConfiguracao = class(TForm)
    btnEscolherImagem: TButton;
    btnSalvar: TButton;
    edtCaminhoImagem: TEdit;
    dlgOpenImage: TOpenDialog;
    procedure btnEscolherImagemClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizarImagemPrincipal;
  end;

var
  frmConfiguracao: TfrmConfiguracao;

implementation

{$R *.dfm}

uses Uprincipal; // Agora usamos apenas na implementação

procedure TfrmConfiguracao.btnEscolherImagemClick(Sender: TObject);
begin
  dlgOpenImage.Filter := 'Imagens (*.jpg;*.png;*.bmp)|*.jpg;*.png;*.bmp';
  if dlgOpenImage.Execute then
  begin
    edtCaminhoImagem.Text := dlgOpenImage.FileName;
  end;
end;

procedure TfrmConfiguracao.btnSalvarClick(Sender: TObject);
var
  NovoCaminho: string;
begin
  if edtCaminhoImagem.Text <> '' then
  begin
    // Define o caminho para salvar a imagem dentro do diretório do projeto
    NovoCaminho := ExtractFilePath(ParamStr(0)) + 'logo.png';

    // Copia a imagem escolhida para o diretório do projeto
    CopyFile(PChar(edtCaminhoImagem.Text), PChar(NovoCaminho), False);

    // Atualiza a imagem na tela principal sem referenciar diretamente a unit
    AtualizarImagemPrincipal;

    ShowMessage('Imagem alterada com sucesso!');
  end
  else
  begin
    ShowMessage('Escolha uma imagem primeiro.');
  end;
end;

procedure TfrmConfiguracao.AtualizarImagemPrincipal;
begin
  if Assigned(frmPrincipal) then
  begin
    frmPrincipal.imgLogo.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'logo.png');
  end;
end;

end.

