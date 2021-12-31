unit consultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmConsultaProduto = class(TForm)
    lblconsultacliente: TLabel;
    btnConsultaProduto: TImage;
    rdgConsultaProduto: TRadioGroup;
    edtConsultaProduto: TEdit;
    DBGrid1: TDBGrid;
    procedure btnConsultaProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaProduto: TfrmConsultaProduto;

implementation

{$R *.dfm}

uses conexao;

procedure TfrmConsultaProduto.btnConsultaProdutoClick(Sender: TObject);
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

end.
