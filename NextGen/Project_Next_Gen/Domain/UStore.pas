unit UStore;

interface

uses
  UProductCatalog, URegister;

type
  TSore = class
  private
    catalog: TProductCatalog;
    register1: TRegister;
  published
    constructor create;
  public
    function getRegister: TRegister;
  end;

implementation

{ TSore }

constructor TSore.create;
begin
  catalog := TProductCatalog.create;
  register1 := TRegister.create(catalog);
end;

function TSore.getRegister: TRegister;
begin
  result := register1;
end;

end.
