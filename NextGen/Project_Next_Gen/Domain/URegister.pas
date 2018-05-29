unit URegister;

interface

uses UProductCatalog,USale,UItemID,UProductDescription,UMoney;
type
  IRegister = class
    procedure endsale; virtual; abstract;
    procedure enteritem(id: TItemID; quantity: integer); virtual; abstract;
    procedure makenewsale; virtual; abstract;
    procedure makepayment(cashtendered: TMoney); virtual; abstract;
  end;

  TRegister = class(IRegister)
  private
    catalog: TProductCatalog;
    currentSale: TSale;
  published
    constructor create(catalog: TProductCatalog);
  public
    procedure endsale; override;
    procedure enteritem(id: TItemID; quantity: integer); override;
    procedure makenewsale; override;
    procedure makepayment(cashtendered: TMoney); override;
  end;

implementation

{ TRegister }

constructor TRegister.create(catalog: TProductCatalog);
begin
  self.catalog:=catalog;
end;

procedure TRegister.endsale;
begin
  currentSale.becomeComplete;
end;

procedure TRegister.enteritem(id: TItemID; quantity: integer);
var
  desc:TProductDescription;
begin
  desc:=TProductDescription.Create;
  desc:=Catalog.getProductDescription(id);
  CurrentSale.makelineitem(desc,quantity);
end;

procedure TRegister.makenewsale;
begin
  currentSale:=Tsale.create;
end;

procedure TRegister.makepayment(cashtendered: TMoney);
begin
  currentSale.makePayment(cashTendered);
end;

end.
