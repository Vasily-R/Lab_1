unit UProductDescription;

interface

uses UItemId, UMoney;

type
  IProductDescription = class
    procedure ProductDescription(id: TItemID; price: TMoney;
      description: string); virtual; abstract;
    function getItemID: TItemID; virtual; abstract;
    function getPrice: TMoney; virtual; abstract;
    function getDescription: string; virtual; abstract;
  end;

  TProductDescription = class(IProductDescription)
  private
    id: TItemID;
    price: TMoney;
    description: string;
  public
    procedure ProductDescription(id: TItemID; price: TMoney;
      description: string); override;
    function getItemID: TItemID; override;
    function getPrice: TMoney; override;
    function getDescription: String; override;
  end;

implementation

{ TProductDescription }

function TProductDescription.getDescription: String;
begin
  result:=description;
end;

function TProductDescription.getItemID: TItemID;
begin
  result:=id;
end;

function TProductDescription.getPrice: TMoney;
begin
  result:=price;
end;

procedure TProductDescription.ProductDescription(id: TItemId; price: TMoney;
  description: string);
begin
  self.id:=id;
  self.price:=price;
  self.description:=description;
end;

end.
