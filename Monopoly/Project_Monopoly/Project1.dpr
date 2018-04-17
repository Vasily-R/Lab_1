program Project1;

uses
  Vcl.Forms,
  Unit1 in 'ui\Unit1.pas' {Form1},
  UPiece in 'domain\UPiece.pas',
  UPlayer in 'domain\UPlayer.pas',
  UBoard in 'domain\UBoard.pas',
  UMGame in 'domain\UMGame.pas',
  UDie in 'domain\UDie.pas',
  USquare in 'domain\USquare.pas',
  Unit2 in 'ui\Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
