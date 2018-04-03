unit UProductCatalog;

interface

uses
  UItemID, UProductDescription, UMoney,
  SysUtils, Generics.Collections, Generics.defaults;

type
  TProductCatalog = class
  private
    descriptions: Tdictionary<TItemID, TProductDescription>;
  public
    procedure ProductCatalog;
    function getProductDescription(id: TItemID): TProductDescription;
  published
    Constructor create;
  end;

implementation

{ TProductCatalog }

constructor TProductCatalog.create;
begin
  descriptions := Tdictionary<TItemID, TProductDescription>.create;
  ProductCatalog;
end;

function TProductCatalog.getProductDescription(id: TItemID)
  : TProductDescription;
begin
  result := descriptions.Items[id];
end;

procedure TProductCatalog.ProductCatalog;
var
  id1, id2: TItemID;
  price: TMoney;
  desc: TProductDescription;
begin
  id1 := 100;
  id2 := 200;
  price := 3;
  desc := TProductDescription.create;
  desc.ProductDescription(id1, price, 'Товар 1');
  descriptions.Add(id1, desc);
  desc.ProductDescription(id2, price, 'Товар 2');
  descriptions.Add(id2, desc);
end;

end.
