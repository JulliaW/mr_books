unit conexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmMrBooks = class(TDataModule)
    conexao: TADOConnection;
    queryCliente: TADOQuery;
    dsCliente: TDataSource;
    queryFuncionario: TADOQuery;
    dsFuncionario: TDataSource;
    queryProduto: TADOQuery;
    dsProduto: TDataSource;
    queryLogin: TADOQuery;
    dsLogin: TDataSource;
    queryClienteConsulta: TADOQuery;
    dsClienteConsulta: TDataSource;
    queryProdutoConsulta: TADOQuery;
    dsProdutoConsulta: TDataSource;
    queryFuncionarioConsulta: TADOQuery;
    dsFuncionarioConsulta: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMrBooks: TdmMrBooks;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
