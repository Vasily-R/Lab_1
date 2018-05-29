unit UStore;

interface

uses UProductCatalog, URegister;

type
  IStore = class
    function getregister: TRegister; virtual; abstract;
  end;

  TStore = class(IStore)
  private
    Catalog: TProductCatalog;
    register1: TRegister;
  published
    constructor create;
  public
    function getregister: TRegister; override;
  end;

implementation

{ TStore }

constructor TStore.create;
begin
  catalog:=TProductCatalog.create;
  register1:=TRegister.create(catalog);
end;

function TStore.getregister: TRegister;
begin
  result:=register1;
end;

end.
