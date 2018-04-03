unit USalesLineItem;

interface

uses
  UProductDescription,
  UMoney;

type
  TSalesLineItem = class
  private
    quantity: integer;
    description: TProductDescription;
  published
  public
    Procedure SalesLineItem(desc: TProductDescription; quantity: integer);
    Function GetSubtotal: TMoney;
  end;

implementation

{ TSalesLineItem }

function TSalesLineItem.GetSubtotal: TMoney;
begin
  result := description.getPrice() * quantity;
end;

procedure TSalesLineItem.SalesLineItem(desc: TProductDescription;
  quantity: integer);
begin
  self.description := desc;
  self.quantity := quantity;
end;

end.
