unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLogin = class(TForm)
    telaPrincipal: TButton;
    procedure telaPrincipalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses telaPrincipal;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmLogin:=nil;
end;

procedure TfrmLogin.telaPrincipalClick(Sender: TObject);
begin
frmPrincipal.Show;
frmLogin.Hide;
end;

end.
