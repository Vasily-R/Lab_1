unit UProductCatalog;

interface

uses UProductdescription, UItemID, UMoney, sysUtils, Generics.Collections, Generics.Defaults;

type
  IProductCatalog = class
    procedure ProductCatalog; virtual; abstract;
    function getProductDescription(id: TItemID): TProductdescription; virtual; abstract;
  end;

  TProductCatalog = class(IProductCatalog)
  private
    descriptions: Tdictionary<TItemID, TProductdescription>;
  public
    procedure ProductCatalog; override;
    function getProductDescription(id: TItemID): TProductdescription; override;
  published
    constructor create;
  end;

implementation

{ TProductCatalog }

constructor TProductCatalog.create;
begin
  descriptions:=Tdictionary<TItemID, TProductdescription>.create;
  ProductCatalog;
end;

function TProductCatalog.getProductDescription(
  id: TItemID): TProductDescription;
begin
  result:=descriptions.Items[id];
end;

procedure TProductCatalog.ProductCatalog;
var
  id1,id2:TItemID;
  price:TMoney;
  desc:TProductDescription;
begin
  id1:=100;
  id2:=200;
  price:=3;
  desc:=TProductdescription.create;
  desc.ProductDescription(id1,price,'товар1');
  descriptions.Add(id1,desc);
  desc.ProductDescription(id2,price,'товар2');
  descriptions.Add(id2,desc);
end;

end.
