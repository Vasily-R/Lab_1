unit UISalePricingStrategy;

interface

uses USale, UMoney;

type
  TISalePricingStrategy = class
  public
    function getTotal (s:TSale):TMoney; virtual; abstract;
  end;

implementation

end.
