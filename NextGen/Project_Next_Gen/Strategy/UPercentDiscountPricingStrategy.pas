unit UPercentDiscountPricingStrategy;

interface

uses UISalePricingStrategy, USale, UMoney;

type
  TPersentDiscountPricingStrategy = class (TISalePricingStrategy)
  private
    persentage:real;
  public
    function getTotal (s:TSale):TMoney; override;
  end;

implementation

{ TPersentDiscountPricingStrategy }

function TPersentDiscountPricingStrategy.getTotal(s: TSale): TMoney;
begin
  //
end;

end.
