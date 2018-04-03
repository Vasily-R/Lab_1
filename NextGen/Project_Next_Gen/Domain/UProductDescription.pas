unit UProductDescription;

interface

uses
  UMoney, UItemID;

type
  TProductDescription = class
  private
    id: TItemID;
    price: TMoney;
    description: string;
  public
    procedure ProductDescription(id: TItemID; price: TMoney;
      description: string);
    function getItemId: TItemID;
    function getPrice: TMoney;
    function getDescription: string;
  end;

implementation

{ TProductDescription }

function TProductDescription.getDescription: string;
begin
  result := description;
end;

function TProductDescription.getItemId: TItemID;
begin
  result := id;
end;

function TProductDescription.getPrice: TMoney;
begin
  result := price;
end;

procedure TProductDescription.ProductDescription(id: TItemID; price: TMoney;
  description: string);
begin
  self.id := id;
  self.price := price;
  self.description := description;
end;

end.
