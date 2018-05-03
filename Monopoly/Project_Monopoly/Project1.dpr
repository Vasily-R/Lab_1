program Project1;

uses
  Vcl.Forms,
  Unit1 in 'UI\Unit1.pas' {Form1},
  USquare in 'Domain\USquare.pas',
  UPiece in 'Domain\UPiece.pas',
  UDie in 'Domain\UDie.pas',
  UBoard in 'Domain\UBoard.pas',
  UPlayer in 'Domain\UPlayer.pas',
  UMonopolyGame in 'Domain\UMonopolyGame.pas',
  UPlayers in 'UI\UPlayers.pas' {Form2},
  UCup in 'Domain\UCup.pas',
  UIncomeTaxSquare in 'Polymorphism\UIncomeTaxSquare.pas',
  URegularSquare in 'Polymorphism\URegularSquare.pas',
  UGoSquare in 'Polymorphism\UGoSquare.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
