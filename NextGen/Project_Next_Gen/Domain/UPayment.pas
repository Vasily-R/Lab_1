unit UPayment;

interface

uses UMoney;

type
  IPayment = class
    procedure Payment(CashTendered: TMoney); virtual; abstract;
    function getAmount: TMoney; virtual; abstract;
  end;

  TPayment = class(IPayment)
  private
    amount: TMoney;
  public
    procedure Payment(CashTendered: TMoney); override;
    function getAmount: TMoney; override;
  end;

implementation

{ TPayment }

function TPayment.getAmount: TMoney;
begin
  result:=amount;
end;

procedure TPayment.Payment(CashTendered: TMoney);
begin
  amount:=CashTendered;
end;

end.
