unit UAbsoluteDiscountPricingStrategy;

interface

uses UISalePricingStrategy, USale, UMoney;

type
  TAbsoluteDiscountPricingStrategy = class (TISalePricingStrategy)
  private
    discount:TMoney;
    threshold:TMoney;
    pdt:TMoney;
  public
    function getTotal (s:TSale):TMoney; override;
  end;

implementation

{ TAbsoluteDiscountPricingStrategy }

function TAbsoluteDiscountPricingStrategy.getTotal(s: TSale): TMoney;
begin
  //
end;

end.
