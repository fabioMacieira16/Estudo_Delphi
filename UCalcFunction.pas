unit UCalcFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnSoma: TButton;
    txtNum1: TEdit;
    txtNum2: TEdit;
    btnSubitracao: TButton;
    bntMultiplicacao: TButton;
    txtResultado: TEdit;
    btnDivisao: TButton;
  private
    { Private declarations }
     function calcularResultado(operacao: String): Double;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

function TForm1.calcularResultado(operacao: String): Double;
var
  num1, num2, resultado: Double;

begin

end;

end.
