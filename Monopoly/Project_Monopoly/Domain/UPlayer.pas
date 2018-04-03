unit UPlayer;

interface
uses UPiece,UBoard,UDie,USquare,sysUtils,generics.collections,generics.defaults,classes;
type
  TPlayer = class
private
  name:string;
  piece:TPiece;
  board:TBoard;
  dice:TList<TDie>;
published
  constructor create(name:string; dice:TDie; board:TBoard);
public
  procedure takeTurn;
  function getLocation:TSquare;
  function getName:string;
  end;
implementation

{ TPlayer }



constructor TPlayer.create(name: string; dice: TDie; board: TBoard);
begin
  self.name:=name;
  self.dice:=TList<TDie>.Create;
 // self.dice.Add(dice);  self.dice.Add(dice);
  self.board:=board;
  piece:=TPiece.create(board.getStartSquare)
end;

function TPlayer.getLocation: TSquare;
begin
  result:=piece.getlocation;
end;

function TPlayer.getName: string;
begin
  result:=name;
end;

procedure TPlayer.takeTurn;
var rollTotal,i:integer;
newLoc:TSquare;
begin
  rollTotal:=0;
  for  i:= 0 to dice.Count-1 do
  begin
    dice.Items[i].roll;
    rollTotal:=rollTotal+self.dice.items[i].getFaceValue;
  end;
  newLoc:=board.getSquare(piece.getLocation, rollTotal);
  piece.setLocation(newLoc);


end;

end.
