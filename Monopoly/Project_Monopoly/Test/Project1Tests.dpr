program Project1Tests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestUBoard in 'TestUBoard.pas',
  UBoard in '..\domain\UBoard.pas',
  TestUDie in 'TestUDie.pas',
  UDie in '..\domain\UDie.pas',
  TestUMGame in 'TestUMGame.pas',
  UMGame in '..\domain\UMGame.pas',
  TestUPlayer in 'TestUPlayer.pas',
  UPlayer in '..\domain\UPlayer.pas',
  TestUPiece in 'TestUPiece.pas',
  UPiece in '..\domain\UPiece.pas',
  TestUSquare in 'TestUSquare.pas',
  USquare in '..\domain\USquare.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

