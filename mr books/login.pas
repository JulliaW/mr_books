﻿unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmLogin = class(TForm)
    Label1: TLabel;
    edtLogin: TEdit;
    Label2: TLabel;
    edtSenha: TMaskEdit;
    Image1: TImage;
    btnlogin: TImage;
    btncancelar: TImage;
    procedure btnloginClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  status: string;

implementation

{$R *.dfm}

uses conexao, telaPrincipal;

procedure TfrmLogin.btncancelarClick(Sender: TObject);
begin
Application.Terminate;
close;
end;

procedure TfrmLogin.btnloginClick(Sender: TObject);
begin
dmMrBooks.queryLogin.Close;
dmMrBooks.queryLogin.SQL.Clear;
dmMrBooks.queryLogin.SQL.Add('select * from cadastro_funcionario where login_funcionario=:Plogin_funcionario and senha_funcionario=:Psenha_funcionario');
dmMrBooks.queryLogin.Parameters.Parambyname('Plogin_funcionario').Value:=edtlogin.Text;
dmMrBooks.queryLogin.Parameters.ParambyName('Psenha_funcionario').Value:=edtsenha.Text;
dmMrBooks.queryLogin.open;
if dmMrBooks.queryLogin.RecordCount = 1 then
  begin
  showmessage('Bem Vindo(a)! '+dmMrBooks.queryLogin.FieldByName('nome_funcionario').AsString);
  frmprincipal.caption:='Sistema Mr books - Bem Vindo(a) '+dmMrBooks.querylogin.FieldByName('nome_funcionario').AsString;
  status:= 'Autorizado';
  frmLogin.Close;
  end
  else
  begin
    showmessage('Usuario e senha invalidos!');
    close;
    Application.Terminate;
  end;
end;

procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if status = 'negado' then
canclose:= false
else
canclose:= true
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
status:='negado';
end;

end.
