unit UPayment;

interface

uses
  UMoney;

type
  TPayment = class
  private
    amount: TMoney;
  public
    procedure Payment(CashTendered: TMoney);
    function getAmount: TMoney;
  end;

implementation

{ TPayment }

function TPayment.getAmount: TMoney;
begin
  result := amount;
end;

procedure TPayment.Payment(CashTendered: TMoney);
begin
  amount := CashTendered;
end;

end.
