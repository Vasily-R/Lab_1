program Project2Tests;
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
  TestUPayment in 'TestUPayment.pas',
  UPayment in '..\Domain\UPayment.pas',
  UMoney in '..\Scr\UMoney.pas',
  TestUProductCatalog in 'TestUProductCatalog.pas',
  UProductCatalog in '..\Domain\UProductCatalog.pas',
  UItemID in '..\Scr\UItemID.pas',
  TestURegister in 'TestURegister.pas',
  URegister in '..\Domain\URegister.pas',
  USale in '..\Domain\USale.pas',
  USalesLineItem in '..\Domain\USalesLineItem.pas',
  UProductDescription in '..\Domain\UProductDescription.pas',
  TestUProductDescription in 'TestUProductDescription.pas',
  TestUSale in 'TestUSale.pas',
  TestUSalesLineItem in 'TestUSalesLineItem.pas',
  TestUStore in 'TestUStore.pas',
  UStore in '..\Domain\UStore.pas';

{ R *.RES }

begin
  DUnitTestRunner.RunRegisteredTests;

end.
