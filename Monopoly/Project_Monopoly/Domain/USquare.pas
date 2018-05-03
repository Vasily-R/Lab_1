unit USquare;

interface

type
  TSquare = class;

  ISquare = class
    procedure setNextSquare(s: TSquare); virtual; abstract;
    function getNextSquare: TSquare; virtual; abstract;
    function getName: string; virtual; abstract;
    function getIndex: integer;  virtual; abstract;
    function landedOn:TSquare; virtual; abstract;
  end;

  TSquare = class(ISquare)
  private
    name: string;
    nextSquare: TSquare;
    index: integer;
  public
    procedure setNextSquare(s: TSquare);  override;
    function getNextSquare: TSquare;  override;
    function getName: string;  override;
    function getIndex: integer;  override;
    function landedOn:TSquare; override;
  published
    constructor Create(name: string; index: integer);
  end;

implementation

{ TSquare }

constructor TSquare.Create(name: string; index: integer);
begin
  self.name:=name;
  self.index:=index;
end;

function TSquare.getIndex: integer;
begin
  result:=index;
end;

function TSquare.getName: string;
begin
  result:=name;
end;

function TSquare.getNextSquare: TSquare;
begin
  result:=nextSquare;
end;

function TSquare.landedOn: TSquare;
begin
  {}
end;

procedure TSquare.setNextSquare(s: TSquare);
begin
  nextSquare:=s;
end;

end.
