unit Validador;

interface

uses
   ACBrBase, ACBrValidador,validador.interfaces;

 type

  TTipoDoc = class
   private
    Fcpf:TACBrValTipoDocto;
    Fcnpj :TACBrValTipoDocto;
    Fpis :TACBrValTipoDocto;
    FInscEst :TACBrValTipoDocto;
    FNumCheque :TACBrValTipoDocto;
    FCEP :TACBrValTipoDocto;
    FCartaoCredito :TACBrValTipoDocto;
    FSuframa :TACBrValTipoDocto;
    FGTIN  :TACBrValTipoDocto;
    FRenavam  :TACBrValTipoDocto;
    FEmail :TACBrValTipoDocto;
    FCNH :TACBrValTipoDocto;
    FPrefixoGTIN:TACBrValTipoDocto;
    FCAEPF:TACBrValTipoDocto;
    FPlacaMercosul :TACBrValTipoDocto;
    FCNS :TACBrValTipoDocto;
  public
    class function CPF: TACBrValTipoDocto;
    class function CNPJ: TACBrValTipoDocto;
    class function Pis: TACBrValTipoDocto;
    class function InscEst :TACBrValTipoDocto;
    class function NumCheque :TACBrValTipoDocto;
    class function CEP :TACBrValTipoDocto;
    class function CartaoCredito :TACBrValTipoDocto;
    class function Suframa :TACBrValTipoDocto;
    class function GTIN  :TACBrValTipoDocto;
    class function Renavam  :TACBrValTipoDocto;
    class function Email :TACBrValTipoDocto;
    class function CNH :TACBrValTipoDocto;
    class function PrefixoGTIN:TACBrValTipoDocto;
    class function CAEPF:TACBrValTipoDocto;
    class function PlacaMercosul :TACBrValTipoDocto;
    class function CNS :TACBrValTipoDocto;
 end;

  TValidador = class(TInterfacedObject , iValidador)
  private
    Fcomponente: TACBrValidador;
    Fdocumento: string;
    Fcomplemento: string;
    FTipoDocumento :TACBrValTipoDocto;
    procedure Setcomponente(const Value: TACBrValidador);
    procedure Setcomplemento(const Value: string);

  public
    constructor Create;
    destructor Destroy; override;

    class function New : iValidador;

    function ACBRValidador:TACBrValidador;

    function complemento(scomplemento :string) :iValidador;
    function documento(sdocumento :string) :iValidador;
    function TipoDocumento(Stipo :TACBrValTipoDocto):iValidador;
    function Validar:Boolean;
    function Formatar:String;

    property componente :TACBrValidador read Fcomponente write Setcomponente;

end;



implementation

uses
  Vcl.Dialogs;


{ TValidador }



function TValidador.ACBRValidador: TACBrValidador;
begin
  result := Fcomponente;
end;

constructor TValidador.Create;
begin
  Fcomponente := TACBrValidador.Create(nil);
end;

destructor TValidador.Destroy;
begin
  Fcomponente.Free;
  inherited;
end;

class function TValidador.New: iValidador;
begin
  result := self.Create;
end;

procedure TValidador.Setcomplemento(const Value: string);
begin
  Fcomplemento := Value;
end;

procedure TValidador.Setcomponente(const Value: TACBrValidador);
begin
  Fcomponente := Value;
end;

function TValidador.TipoDocumento(Stipo: TACBrValTipoDocto): iValidador;
begin
  result := self;
  FTipoDocumento := stipo;
end;

function TValidador.Validar: Boolean;
begin
  Fcomponente.TipoDocto :=  TACBrValTipoDocto(FTipoDocumento);
  Fcomponente.Documento   := Fdocumento ;
  Fcomponente.Complemento := Fcomplemento ;
  result  := Fcomponente.Validar ;

  if Fcomponente.MsgErro <> '' then
    showmessage(Fcomponente.MsgErro);

end;

function TValidador.complemento(scomplemento :string): iValidador;
begin
  result := self;
  Fcomplemento := scomplemento;
end;

function TValidador.documento(sdocumento:string): iValidador;
begin
  result := self;
  Fdocumento := sdocumento;
end;

function TValidador.Formatar: String;
begin
  Fcomponente.TipoDocto :=  TACBrValTipoDocto(FTipoDocumento);
  Fcomponente.Documento   := Fdocumento ;
  Fcomponente.Complemento := Fcomplemento ;
  result  := Fcomponente.Formatar ;
end;

{ TTipoDocumento }

class function TTipoDoc.CAEPF: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docCAEPF);
end;

class function TTipoDoc.CartaoCredito: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docCartaoCredito);
end;

class function TTipoDoc.CEP: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docCEP);
end;

class function TTipoDoc.CNH: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docCNH);
end;

class function TTipoDoc.CNPJ: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docCNPJ);
end;

class function TTipoDoc.CNS: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docCNs);
end;

class function TTipoDoc.CPF: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docCPF);
end;

class function TTipoDoc.Email: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docEmail);
end;

class function TTipoDoc.GTIN: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docGTIN);
end;

class function TTipoDoc.InscEst: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docInscEst);
end;

class function TTipoDoc.NumCheque: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docNumCheque);
end;

class function TTipoDoc.Pis: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docPIS);
end;

class function TTipoDoc.PlacaMercosul: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docPlacaMercosul);
end;

class function TTipoDoc.PrefixoGTIN: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docPrefixoGTIN);
end;

class function TTipoDoc.Renavam: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docRenavam);
end;

class function TTipoDoc.Suframa: TACBrValTipoDocto;
begin
  result := TACBrValTipoDocto(docSuframa);
end;

end.
