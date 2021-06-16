unit UExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,validador;

type

  TForm8 = class(TForm)
    CONSULTAR: TButton;
    EDIE: TEdit;
    EDUF: TEdit;
    EDIEFORMATADO: TEdit;
    Button1: TButton;
    procedure CONSULTARClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}


procedure TForm8.Button1Click(Sender: TObject);
begin
  EDIEFORMATADO.Text :=
     TValidador.New
      .documento(EDIE.Text)
      .complemento(EDUF.Text)
      .TipoDocumento(TTipoDoc.InscEst)
        .Formatar;
end;

procedure TForm8.CONSULTARClick(Sender: TObject);
begin
  if TValidador.New
      .documento(EDIE.Text)
      .complemento(EDUF.Text)
      .TipoDocumento(TTipoDoc.InscEst)
        .Validar then
    ShowMessage('Válida');
end;

end.
