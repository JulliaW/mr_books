unit telaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Image2: TImage;
    Image1: TImage;
    Image6: TImage;
    btnFuncionario: TImage;
    btnProduto: TImage;
    btnCompras: TImage;
    btnCliente: TImage;
    Image8: TImage;
    btnSair: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnComprasClick(Sender: TObject);
    procedure btnFuncionarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  tela: string;

implementation

{$R *.dfm}

uses cadastroCliente, cadastroProduto, cadastroCompra, cadastroFuncionario;



procedure TfrmPrincipal.btnClienteClick(Sender: TObject);
begin

//Cliente
  tela:='cliente';
  if(tela = 'compras') then
  begin
    frmCompra.Close;
  end;
  frmCompra.Next;

  frmCadastroCliente.Left := 192;
  frmCadastroCliente.top := 80;
  frmCadastroCliente.Show;
  //frmCompra.Close;
  //frmFuncionario.Close;
  //frmCadastroProduto.Close;
end;

procedure TfrmPrincipal.btnComprasClick(Sender: TObject);
begin

//Compras
   tela:='compras';
   if(tela = 'cliente') then
  begin
    frmCadastroCliente.Close;
  end;
  frmCompra.Next;

  frmCompra.Left := 192;
  frmCompra.top := 80;
  frmCompra.Show;
  //frmCadastroCliente.Close;
  //frmFuncionario.Close;
  //frmCadastroProduto.Close;
end;

procedure TfrmPrincipal.btnFuncionarioClick(Sender: TObject);
begin

//Funcionario

  frmFuncionario.Left := 192;
  frmFuncionario.top := 80;
  frmFuncionario.Show;
  //frmCadastroCliente.Close;
 // frmCompra.Close;
 // frmCadastroProduto.Close;
end;

procedure TfrmPrincipal.btnProdutoClick(Sender: TObject);
begin
if frmCadastroProduto=nil then
    frmCadastroProduto:=TfrmCadastroProduto.Create(Self);

//Produto

  //frmCadastroProduto.Left := 192;
 // frmCadastroProduto.top := 80;
  frmCadastroProduto.Show;
  //frmCadastroCliente.Close;
  //frmCompra.Close;
 // frmFuncionario.Close;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
Application.Terminate;
end;

end.
