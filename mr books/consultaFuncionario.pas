unit consultaFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmConsultaFuncionario = class(TForm)
    lblconsultacliente: TLabel;
    rdgConsultaFuncionario: TRadioGroup;
    edtConsultaFuncionario: TEdit;
    btnConsultaFuncionario: TImage;
    DBGrid1: TDBGrid;
    procedure btnConsultaFuncionarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaFuncionario: TfrmConsultaFuncionario;

implementation

{$R *.dfm}

uses conexao;

procedure TfrmConsultaFuncionario.btnConsultaFuncionarioClick(Sender: TObject);
begin
if rdgConsultaFuncionario.ItemIndex = 0 then
begin
dmMrBooks.queryFuncionarioConsulta.Close;
dmMrBooks.queryFuncionarioConsulta.SQL.Clear;
dmMrBooks.queryFuncionarioConsulta.SQL.Add('select * from cadastro_funcionario where nome_funcionario LIKE :Pnome');
dmMrBooks.queryFuncionarioConsulta.Parameters.ParamByName('Pnome').Value:= '%'+edtConsultaFuncionario.Text+'%';
dmMrBooks.queryFuncionarioConsulta.Open;
if dmMrBooks.queryFuncionarioConsulta.RecordCount = 0 then
showmessage('Nenhum funcion�rio encontrado');
end
else
if rdgConsultaFuncionario.ItemIndex = 1 then
begin
dmMrBooks.queryFuncionarioConsulta.Close;
dmMrBooks.queryFuncionarioConsulta.SQL.Clear;
dmMrBooks.queryFuncionarioConsulta.SQL.Add('select * from cadastro_funcionario where cod_funcionario =:Pcod');
dmMrBooks.queryFuncionarioConsulta.Parameters.ParamByName('Pcod').Value:= +strtoint(edtConsultaFuncionario.Text);
dmMrBooks.queryFuncionarioConsulta.Open;
if dmMrBooks.queryFuncionarioConsulta.RecordCount = 0 then
showmessage('Nenhum funcion�rio encontrado');
end
else
showmessage('Selecione uma op��o');
end;

end.
