unit TestUPiece;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, UPiece, USquare;

type
  // Test methods for class TPiece

  TestTPiece = class(TTestCase)
  strict private
    FPiece: TPiece;
    location: TSquare;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  end;

implementation

procedure TestTPiece.SetUp;
begin
  FPiece := TPiece.Create(location);
end;

procedure TestTPiece.TearDown;
begin
  FPiece.Free;
  FPiece := nil;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTPiece.Suite);
end.

