unit UItaxCalculatorAdapter;

interface

uses SysUtils, Generics.Collections, Generics.Defaults, USale, UTaxLineItem;

type
  TITaxCalculatorAdapter = class
  public
    function getTaxes (Sale:TSale): TList<TTaxLineItem>; virtual; abstract;
  end;

implementation



end.
