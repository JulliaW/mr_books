unit cadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmCadastroProduto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdName: TDBEdit;
    DBEdCodigo: TDBEdit;
    DBEdGenero: TDBEdit;
    DBEdAutor: TDBEdit;
    DBEdEdicao: TDBEdit;
    DBEdIsbn: TDBEdit;
    DBEdNPaginas: TDBEdit;
    DBEdQuantidade: TDBEdit;
    DBEdValor: TDBEdit;
    DBGrid1: TDBGrid;
    btnCadastrar: TImage;
    btnSalvar: TImage;
    btnAlterar: TImage;
    btnExcluir: TImage;
    btnCancelar: TImage;
    btnConsultaProduto: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultaProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

{$R *.dfm}

uses conexao, consultaProduto;

procedure TfrmCadastroProduto.btnAlterarClick(Sender: TObject);
begin
dmMrBooks.queryProduto.edit;
btnCadastrar.Enabled:=true;
btnCancelar.Enabled:= true;
btnAlterar.Enabled:=true;
btnExcluir.Enabled:= true;
btnSalvar.Enabled:= true;
end;

procedure TfrmCadastroProduto.btnCadastrarClick(Sender: TObject);
begin
dmMrBooks.queryProduto.append;
btnCadastrar.Enabled:=true;
btnCancelar.Enabled:= true;
btnAlterar.Enabled:=true;
btnExcluir.Enabled:= true;
btnSalvar.Enabled:= true;
end;

procedure TfrmCadastroProduto.btnCancelarClick(Sender: TObject);
begin
dmMrBooks.queryProduto.cancel;
btnCadastrar.Enabled:=true;
btnCancelar.Enabled:= false;
btnAlterar.Enabled:=true;
btnExcluir.Enabled:= true;
btnSalvar.Enabled:= true;
end;

procedure TfrmCadastroProduto.btnConsultaProdutoClick(Sender: TObject);
begin
frmConsultaProduto.Show;
end;

procedure TfrmCadastroProduto.btnExcluirClick(Sender: TObject);
begin
dmMrBooks.queryProduto.delete;
btnCadastrar.Enabled:=true;
btnCancelar.Enabled:= true;
btnAlterar.Enabled:=true;
btnExcluir.Enabled:= true;
btnSalvar.Enabled:= true;
end;

procedure TfrmCadastroProduto.btnSalvarClick(Sender: TObject);
begin
dmMrBooks.queryProduto.post;
btnCadastrar.Enabled:=true;
btnCancelar.Enabled:= true;
btnAlterar.Enabled:=true;
btnExcluir.Enabled:= true;
btnSalvar.Enabled:= true;
end;

procedure TfrmCadastroProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
frmCadastroProduto:=nil;
end;

end.
