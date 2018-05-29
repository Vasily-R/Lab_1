unit UCup;

interface

uses Generics.Collections, Generics.Defaults, UDie;

type
  ICup = class
    function getTotal(var dice: TList<TDie>): integer; virtual; abstract;
  end;

  TCup = class(ICup)
  public
    function getTotal(var dice: TList<TDie>): integer; override;
  end;

implementation

{ TCup }

function TCup.getTotal (var dice: TList<TDie>): integer;
var
  rollTotal, i:integer;
begin
  rollTotal:=0;
  for i:=0 to dice.Count-1 do begin
    dice.Items[i].roll;
    rollTotal:=rollTotal+dice.Items[i].getFaceValue;
  end;
end;

end.
