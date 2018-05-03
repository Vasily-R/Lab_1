unit UGoodAsGoldTaxProAdapter;

interface

uses SysUtils, Generics.Collections, Generics.Defaults, USale, UTaxLineItem, UITaxCalculatorAdapter;

type
  TGoodAsGoldTaxPro = class(TITaxCalculatorAdapter)
  public
    function getTaxes(Sale:TSale): TList<TTaxLineItem>; override;
  end;

implementation

{ TGoodAsGoldTaxPro }

function TGoodAsGoldTaxPro.getTaxes(Sale: TSale): TList<TTaxLineItem>;
begin
  //
end;

end.
