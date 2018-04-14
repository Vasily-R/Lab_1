unit USale;

interface

uses
  UPayment, UMoney, USalesLineItem, UProductDescription, SysUtils,
  Generics.Collections, Generics.Defaults;

type
  TSale = class
  private
    lineitems: TList<TSalesLineItem>;
    date: TDate;
    Complite: boolean; // isComplite;
    Payment: TPayment;
  published
    constructor create;
  public
    function getBalace: TMoney;
    procedure becomeComplete;
    function isComplite: boolean;
    procedure makeLineItem(desc: TProductDescription; quantity: integer);
    function getTotal: TMoney;
    procedure makePayment(cachTendered: TMoney);
  end;

implementation

{ TSale }

procedure TSale.becomeComplete;
begin
  Complite := true;
end;

constructor TSale.create;
begin
  lineitems := TList<TSalesLineItem>.create;
  Complite := false;
  Payment := TPayment.create;
end;

function TSale.getBalace: TMoney;
begin
  result := Payment.getAmount - getTotal;
end;

function TSale.getTotal: TMoney;
var
  total, subTotal: TMoney;
  SalesLineItem: TSalesLineItem;
begin
  total := 0;
  subTotal := 0;
  for SalesLineItem in lineitems do
  begin
    subTotal := SalesLineItem.GetSubtotal;
    total := total + subTotal;
  end;
  result := total;
end;

function TSale.isComplite: boolean;
begin
  result := Complite;
end;

procedure TSale.makeLineItem(desc: TProductDescription; quantity: integer);
var
  SalesLineItem: TSalesLineItem;
  i: integer;
begin
  SalesLineItem := TSalesLineItem.create;
  SalesLineItem.SalesLineItem(desc, quantity);
  i := lineitems.Add(SalesLineItem);
end;

procedure TSale.makePayment(cachTendered: TMoney);
begin
  Payment := TPayment.create;
  Payment.Payment(cachTendered);
end;

end.
