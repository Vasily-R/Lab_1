unit UPlayers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPlayer, Vcl.StdCtrls,UMonopolyGame;

type
  TForm2 = class(TForm)
    Button1: TButton;
     procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    MonopolyGame:TmonopolyGame;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;


procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  MonopolyGame:=TMonopolyGame.Create;
end;

end.
