unit UTaxMasterAdapter;

interface

uses SysUtils, Generics.Collections, Generics.Defaults, USale, UTaxLineItem, UITaxCalculatorAdapter;

type
  TTaxMasterAdapter = class(TITaxCalculatorAdapter)
  public
    function getTaxes(Sale:TSale): TList<TTaxLineItem>; override;
  end;

implementation

{ TTaxMasterAdapter }

function TTaxMasterAdapter.getTaxes(Sale: TSale): TList<TTaxLineItem>;
begin
  //
end;

end.
