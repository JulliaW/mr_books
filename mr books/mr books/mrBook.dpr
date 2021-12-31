program mrBook;

uses
  Vcl.Forms,
  telaPrincipal in 'telaPrincipal.pas' {frmPrincipal},
  conexao in 'conexao.pas' {dmMrBooks: TDataModule},
  cadastroCliente in 'cadastroCliente.pas' {frmCadastroCliente},
  cadastroProduto in 'cadastroProduto.pas' {frmCadastroProduto},
  cadastroCompra in 'cadastroCompra.pas' {frmCompra},
  cadastroFuncionario in 'cadastroFuncionario.pas' {frmFuncionario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
