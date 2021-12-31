unit cadastroCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmCadastroCompra = class(TForm)
    lblconsultacliente: TLabel;
    btnConsultaProduto: TImage;
    Label1: TLabel;
    btnConsultaCliente: TImage;
    rdgConsultaProduto: TRadioGroup;
    edtConsultaProduto: TEdit;
    rdgconsultacliente: TRadioGroup;
    edtconsultacliente: TEdit;
    lbbResultado: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dbedtcliente: TDBEdit;
    dbedtcpf: TDBEdit;
    dbedttel: TDBEdit;
    dbedtprod: TDBEdit;
    DBEdit5: TDBEdit;
    edtQuant: TEdit;
    btnCalcular: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnConsultaClienteClick(Sender: TObject);
    procedure btnConsultaProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCompra: TfrmCadastroCompra;

implementation

{$R *.dfm}

uses telaprincipal, conexao;
var
calcular, valor, qtd: double;

procedure TfrmCadastroCompra.btnCalcularClick(Sender: TObject);
begin
valor:= strtofloat(DBEdit5.Text);
Qtd:= strtofloat(edtQuant.Text);
calcular:= valor * Qtd;
lbbResultado.Items.Add('----------------------------------');
lbbResultado.Items.Add('Cliente: '+dbedtcliente.Text);
lbbResultado.Items.Add('Cpf: '+dbedtcpf.Text);
lbbResultado.Items.Add('Telefone: '+dbedttel.Text);
lbbResultado.Items.Add('Produto: '+dbedtprod.Text);
lbbResultado.Items.Add('Valor total: '+floattostr(calcular));
end;

procedure TfrmCadastroCompra.btnConsultaClienteClick(Sender: TObject);
begin
if rdgConsultaCliente.ItemIndex = 0 then
begin
dmMrBooks.queryClienteConsulta.Close;
dmMrBooks.queryClienteConsulta.SQL.Clear;
dmMrBooks.queryClienteConsulta.SQL.Add('select * from cadastro_cliente where nome_cliente LIKE :Pnome');
dmMrBooks.queryClienteConsulta.Parameters.ParamByName('Pnome').Value:= '%'+edtConsultaCliente.Text+'%';
dmMrBooks.queryClienteConsulta.Open;
if dmMrBooks.queryClienteConsulta.RecordCount = 0 then
showmessage('Nenhum cliente encontrado');
end
else
if rdgConsultaCliente.ItemIndex = 1 then
begin
dmMrBooks.queryClienteConsulta.Close;
dmMrBooks.queryclienteconsulta.SQL.Clear;
dmMrBooks.queryClienteConsulta.SQL.Add('select * from cadastro_cliente where cod_cliente =:Pcod');
dmMrBooks.queryClienteConsulta.Parameters.ParamByName('Pcod').Value:= +strtoint(edtConsultaCliente.Text);
dmMrBooks.queryClienteConsulta.Open;
if dmMrBooks.queryClienteConsulta.RecordCount = 0 then
showmessage('Nenhum cliente encontrado');
end
else
showmessage('Selecione uma opção');
end;

procedure TfrmCadastroCompra.btnConsultaProdutoClick(Sender: TObject);
begin
if rdgConsultaProduto.ItemIndex = 0 then
begin
dmMrBooks.queryProdutoConsulta.Close;
dmMrBooks.queryProdutoConsulta.SQL.Clear;
dmMrBooks.queryProdutoConsulta.SQL.Add('select * from cadastro_produto where titulo_livro LIKE :Pnome');
dmMrBooks.queryProdutoConsulta.Parameters.ParamByName('Pnome').Value:= '%'+edtConsultaProduto.Text+'%';
dmMrBooks.queryProdutoConsulta.Open;
if dmMrBooks.queryProdutoConsulta.RecordCount = 0 then
showmessage('Nenhum produto encontrado');
end
else
if rdgConsultaProduto.ItemIndex = 1 then
begin
dmMrBooks.queryProdutoConsulta.Close;
dmMrBooks.queryProdutoConsulta.SQL.Clear;
dmMrBooks.queryProdutoConsulta.SQL.Add('select * from cadastro_produto where cod_produto =:Pcod');
dmMrBooks.queryProdutoConsulta.Parameters.ParamByName('Pcod').Value:= +strtoint(edtConsultaProduto.Text);
dmMrBooks.queryProdutoConsulta.Open;
if dmMrBooks.queryProdutoConsulta.RecordCount = 0 then
showmessage('Nenhum produto encontrado');
end
else
showmessage('Selecione uma opção');
end;

procedure TfrmCadastroCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmCadastroCompra:=nil;
end;

end.
