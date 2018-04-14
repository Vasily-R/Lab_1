program Project2;

uses
  Vcl.Forms,
  Unit2 in 'Ui\Unit2.pas' {Form2},
  UPayment in 'Domain\UPayment.pas',
  UProductCatalog in 'Domain\UProductCatalog.pas',
  URegister in 'Domain\URegister.pas',
  UProductDescription in 'Domain\UProductDescription.pas',
  USalesLineItem in 'Domain\USalesLineItem.pas',
  UStore in 'Domain\UStore.pas',
  UItemID in 'Scr\UItemID.pas',
  USale in 'Domain\USale.pas',
  UMoney in 'Scr\UMoney.pas',
  UConnect in 'Scr\UConnect.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
