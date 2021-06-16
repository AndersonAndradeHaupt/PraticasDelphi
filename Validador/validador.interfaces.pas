unit validador.interfaces;

interface

uses
  ACBRValidador;

type


  iValidador = interface
    ['{94E2C050-B9BD-41CF-A101-3E4CCDD218A5}']
    function ACBRValidador:TACBrValidador;
    function complemento(scomplemento :string) :iValidador;
    function documento(sdocumento :string) :iValidador;
    function TipoDocumento(stipo :TACBrValTipoDocto):iValidador;
    function Validar:Boolean;
    function Formatar:String;

  end;

implementation

end.
