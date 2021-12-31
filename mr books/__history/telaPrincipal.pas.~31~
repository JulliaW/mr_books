unit telaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tfrmprincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    Image6: TImage;
    Image8: TImage;
    Image1: TImage;
    btnProduto: TImage;
    btnCompras: TImage;
    btnCliente: TImage;
    btnFuncionario: TImage;
    procedure btnProdutoClick(Sender: TObject);
    procedure btnComprasClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnFuncionarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprincipal: Tfrmprincipal;

implementation

{$R *.dfm}

uses cadastroProduto, cadastroCompra, cadastroCliente, cadastroFuncionario,
  login;

procedure Tfrmprincipal.btnClienteClick(Sender: TObject);
begin
if frmcadastrocliente=nil then
   frmcadastrocliente:=Tfrmcadastrocliente.Create(Self);
      frmcadastrocliente.Show;

        if frmcompra<>nil then
         frmcompra.Close;

    {  if frmcadastrocliente<>nil then
      frmcadastrocliente.Close;    }

       if frmcadastroproduto<>nil then
       frmcadastroproduto.Close;

       if frmfuncionario<>nil then
      frmfuncionario.Close;
end;

procedure Tfrmprincipal.btnComprasClick(Sender: TObject);
begin
if frmcompra=nil then
   frmcompra:=Tfrmcompra.Create(Self);
      frmcompra.Show;

    // if frmcompra<>nil then
    //  frmcompra.Close;

      if frmcadastrocliente<>nil then
      frmcadastrocliente.Close;

       if frmcadastroproduto<>nil then
       frmcadastroproduto.Close;

       if frmfuncionario<>nil then
      frmfuncionario.Close;
end;

procedure Tfrmprincipal.btnFuncionarioClick(Sender: TObject);
begin
   if frmfuncionario=nil then
    frmfuncionario:=Tfrmfuncionario.Create(Self);
      frmfuncionario.Show;

        if frmcompra<>nil then
        frmcompra.Close;

      if frmcadastrocliente<>nil then
      frmcadastrocliente.Close;

       if frmcadastroproduto<>nil then
       frmcadastroproduto.Close;

  

end;

procedure Tfrmprincipal.btnProdutoClick(Sender: TObject);
begin
if frmCadastroProduto=nil then
    frmCadastroProduto:=TfrmCadastroProduto.Create(Self);
      frmCadastroProduto.Show;

     if frmcompra<>nil then
      frmcompra.Close;

      if frmcadastrocliente<>nil then
      frmcadastrocliente.Close;

  //     if frmcadastroproduto<>nil then
  //   frmcadastroproduto.Close;

       if frmfuncionario<>nil then
      frmfuncionario.Close;


end;

end.
