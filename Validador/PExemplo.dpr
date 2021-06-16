program PExemplo;

uses
  Vcl.Forms,
  UExemplo in 'UExemplo.pas' {Form8},
  validador.interfaces in 'validador.interfaces.pas',
  Validador in 'Validador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
