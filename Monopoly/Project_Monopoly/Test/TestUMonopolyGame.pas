unit TestUMonopolyGame;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, UMonopolyGame, Generics.Defaults, Generics.Collections, UPlayer, UDie,
  Classes, SysUtils, UBoard;

type
  // Test methods for class TMonopolyGame

  TestTMonopolyGame = class(TTestCase)
  strict private
    FMonopolyGame: TMonopolyGame;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  end;

implementation

procedure TestTMonopolyGame.SetUp;
begin
  FMonopolyGame := TMonopolyGame.Create;
end;

procedure TestTMonopolyGame.TearDown;
begin
  FMonopolyGame.Free;
  FMonopolyGame := nil;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTMonopolyGame.Suite);
end.
