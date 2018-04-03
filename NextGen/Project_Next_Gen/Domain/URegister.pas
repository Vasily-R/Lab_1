unit URegister;

interface

uses UProductCatalog, USale, UItemID, UProductDescription, UMoney;

type
  TRegister = class
  private
    catalog: TProductCatalog;
    currentSale: TSale;
  published
    constructor create(catalog: TProductCatalog);
  public
    procedure endSale;
    procedure enterItem(id: TItemID; quantity: integer);
    procedure makeNewSale;
    procedure makePayment(cachTendered: TMoney);
  end;

implementation

{ TRegister }

constructor TRegister.create(catalog: TProductCatalog);
begin
  self.catalog := catalog;
end;

procedure TRegister.endSale;
begin
  currentSale.becomeComplete;
end;

procedure TRegister.enterItem(id: TItemID; quantity: integer);
var
  desc: TProductDescription;
begin
  desc := TProductDescription.Create;
  desc := catalog.getProductDescription(id);
  currentSale.makeLineItem(desc, quantity);
end;

procedure TRegister.makeNewSale;
begin
  currentSale := TSale.create;
end;

procedure TRegister.makePayment(cachTendered: TMoney);
begin
  currentSale.makePayment(cachTendered);
end;

end.
