{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit Uprincipal;

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
    btnMultiplicar: TButton;
    txtResultado: TEdit;
    btnDivisao: TButton;
    procedure btnSubitracaoClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
    procedure txtNum1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure calcularResultado(operacao: String);
    function validarCampos(): Boolean;
    procedure habilitarBotoes(habilitado: Boolean);
    procedure registrarLog(acao: string);
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
  resultado := 0;
  num1 := StrToFloat(txtNum1.Text);
  num2 := StrToFloat(txtNum2.Text);

  if operacao = 'somar'       then resultado := num1 + num2;
  if operacao = 'subtrair'    then resultado := num1 - num2;
  if operacao = 'multiplicar' then resultado := num1 * num2;
  if operacao = 'dividir'     then resultado := num1 / num2;

  txtResultado.Text := FloatToStr(resultado);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin 
   registrarLog('-------------------------------');
   registrarLog('Aplicação iniciada')
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 registrarLog('-------------------------------');
   registrarLog('Aplicação encerrada')
end;


procedure TForm1.habilitarBotoes(habilitado: Boolean);
begin
    btnSoma.Enabled := habilitado;
    btnSubitracao.Enabled := habilitado;
    btnDivisao.Enabled := habilitado;
    btnMultiplicar.Enabled := habilitado;
 
end;

procedure TForm1.registrarLog(acao: string);
var 
  arquivo: TextFile;
begin
  try
    AssignFile(arquivo, 'Logs.txt');

    if FileExists('logs.txt') then
       Append(arquivo)
    else
      Rewrite(arquivo);

      writeln(arquivo,'[' + DateTimeToStr(now())+'] - '  + acao);
      
  finally
      CloseFile(arquivo);
  end;
end;

procedure TForm1.txtNum1Change(Sender: TObject);
begin
    if validarCampos then
      habilitarBotoes(true)
    else
      habilitarBotoes(false)
end;

function TForm1.validarCampos: Boolean;
begin
      if (txtNum1.Text = '') or (txtNum2.Text = '') then
        result := false
      else
      try
        strToFloat(txtNum1.Text);
        strToFloat(txtNum2.Text);

        result := true;
      except
        on ex: EConvertError do 
          Begin
            result := false;
          End;
      end;
      
end;

procedure TForm1.btnSomaClick(Sender: TObject);
begin
    if validarCampos then
      begin
         calcularResultado('somar')
         //registrarLog('Soma, num1=' + txtNum1.Text + ', num2=' + txtNum2.Text + ', resultado=' + txtResultado.Text);
          registrarLog('Soma, num1=' + txtNum1.Text + ', num2=' + txtNum2.Text + ', resultado=' + txtResultado.Text);


      end;
end;

procedure TForm1.btnSubitracaoClick(Sender: TObject);
begin
     if validarCampos then
       calcularResultado('subtrair')
end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
begin
    if validarCampos then
      calcularResultado('multiplicar')
end;

procedure TForm1.btnDivisaoClick(Sender: TObject);
begin
  if validarCampos then
      Begin
        if txtNum2.text = '0' then
          ShowMessage('Número não pode ser dividir por zero!')
        else
          calcularResultado('dividir')
      End;
end;

end.
