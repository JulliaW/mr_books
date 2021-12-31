unit consultaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmConsultaCliente = class(TForm)
    lblconsultacliente: TLabel;
    rdgconsultacliente: TRadioGroup;
    edtconsultacliente: TEdit;
    btnConsultaCliente: TImage;
    DBGrid1: TDBGrid;
    procedure btnConsultaClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation

{$R *.dfm}

uses conexao;

procedure TfrmConsultaCliente.btnConsultaClienteClick(Sender: TObject);
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
dmMrBooks.queryClienteConsulta.SQL.Clear;
dmMrBooks.queryClienteConsulta.SQL.Add('select * from cadastro_cliente where cod_cliente =:Pcod');
dmMrBooks.queryClienteConsulta.Parameters.ParamByName('Pcod').Value:= +strtoint(edtConsultaCliente.Text);
dmMrBooks.queryClienteConsulta.Open;
if dmMrBooks.queryClienteConsulta.RecordCount = 0 then
showmessage('Nenhum cliente encontrado');
end
else
showmessage('Selecione uma op��o');
end;

end.
