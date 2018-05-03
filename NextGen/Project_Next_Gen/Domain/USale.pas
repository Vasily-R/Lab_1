unit USale;

interface

uses USalesLineItem, UPayment, UMoney,UProductDescription, SysUtils, Generics.Collections, Generics.Defaults;

type
  ISale = class
    function getBalance: TMoney; virtual; abstract;
    procedure becomeComplete; virtual; abstract;
    function isComplete: boolean; virtual; abstract;
    procedure makeLineItem(desc: TProductDescription; quantity: integer); virtual; abstract;
    function getTotal: TMoney; virtual; abstract;
    procedure makePayment(cashTendered: TMoney); virtual; abstract;
  end;

  TSale = class(ISale)
  private
    lineitems: Tlist<TSalesLineItem>;
    data: TDate;
    Complete: boolean;
    payment: TPayment;
  published
    constructor create;
  public
    function getBalance: TMoney; override;
    procedure becomeComplete; override;
    function isComplete: boolean; override;
    procedure makeLineItem(desc: TProductDescription; quantity: integer); override;
    function getTotal: TMoney; override;
    procedure makePayment(cashTendered: TMoney); override;
  end;

implementation

uses UItaxCalculatorAdapter;

{ TSale }

procedure TSale.becomeComplete;
begin
  Complete:=true;
end;

constructor TSale.create;
begin
  lineitems:=Tlist<TSalesLineItem>.create;
  Complete:=false;
  Payment:=TPayment.Create;
end;

function TSale.getBalance: TMoney;
begin
  result:=Payment.getAmount - getTotal;
end;

function TSale.getTotal: Tmoney;
var
  total,subTotal:Tmoney;
  iTax:TITaxCalculatorAdapter;
  SalesLIneItem:TSalesLineItem;
begin
  total:=0;
  subTotal:=0;
  for SalesLineItem in lineitems do begin
    subTotal:=SalesLineItem.getSubTotal;
    total:=total + subtotal;
  end;
  result:=total;//-iTax.getTaxes()
end;

function TSale.isComplete: boolean;
begin
  result:=complete;
end;

procedure TSale.makeLineItem(desc: TProductDescription; quantity: integer);
var
  saleslineitem:TSalesLineItem;
  i:integer;
begin
  saleslineitem:=TSalesLineItem.create;
  saleslineitem.saleslineitem(desc,quantity);
  i:=lineitems.Add(saleslineitem);
end;

procedure TSale.makePayment(cashTendered:TMoney);
begin
  payment:=TPayment.Create;
  payment.payment(cashTendered);
end;

end.
