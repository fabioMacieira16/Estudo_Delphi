﻿unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnSoma: TButton;
    Label1: TLabel;
    txtNum1: TEdit;
    Label2: TLabel;
    txtNum2: TEdit;
    btnSubitracao: TButton;
    bntMultiplicacao: TButton;
    Label3: TLabel;
    txtResultado: TEdit;
    btnDivisao: TButton;
    procedure btnSubitracaoClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure bntMultiplicacaoClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
  private
    { Private declarations }
    procedure calcularResultado(operacao: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.calcularResultado(operacao: String);

var
  num1, num2, resultado: Double;

begin
  num1 := StrToFloat(txtNum1.Text);
  num2 := StrToFloat(txtNum2.Text);

  if operacao = 'somar'       then resultado := num1 + num2;
  if operacao = 'subtrair'    then resultado := num1 - num2;
  if operacao = 'multiplicar' then resultado := num1 * num2;
  if operacao = 'dividir'     then resultado := num1 / num2;

  txtResultado.Text := FloatToStr(resultado);
end;


procedure TForm1.btnSomaClick(Sender: TObject);
begin
     calcularResultado('somar')
end;

procedure TForm1.btnSubitracaoClick(Sender: TObject);
begin
     calcularResultado('subtrair')
end;

procedure TForm1.bntMultiplicacaoClick(Sender: TObject);
begin
    calcularResultado('multiplicar')
end;

procedure TForm1.btnDivisaoClick(Sender: TObject);
begin
  if txtNum2.text = '0' then
    ShowMessage('Número não pode ser dividir por zero!');
  else
  calcularResultado('dividir')
end;

end.
