unit UDie;

interface

type
  IDie = class
    procedure roll;  virtual; abstract;
    function getFaceValue: integer; virtual; abstract;
  end;

  TDie = class(IDie)
  const
    MAX = 6;
  private
    faceValue: integer;
  public
    procedure roll; override;
    function getFaceValue: integer; override;
  published
    constructor Create;
  end;

implementation

{ TDie }

constructor TDie.Create;
begin
  roll;
end;

function TDie.getFaceValue: integer;
begin
  result:=faceValue;
end;

procedure TDie.roll;
begin
  faceValue:=random(MAX)+1;
end;

end.
