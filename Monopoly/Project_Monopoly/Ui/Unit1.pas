unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UMonopolyGame;

type
  TForm1 = class(TForm)
    Square1: TPanel;
    Square2: TPanel;
    Square3: TPanel;
    Square4: TPanel;
    Square5: TPanel;
    Square6: TPanel;
    Square7: TPanel;
    Square8: TPanel;
    Square9: TPanel;
    Square10: TPanel;
    Square11: TPanel;
    Square12: TPanel;
    Square13: TPanel;
    Square14: TPanel;
    Square15: TPanel;
    Square16: TPanel;
    Square17: TPanel;
    Square18: TPanel;
    Square19: TPanel;
    Square20: TPanel;
    Square21: TPanel;
    Square22: TPanel;
    Square23: TPanel;
    Square24: TPanel;
    Square25: TPanel;
    Square26: TPanel;
    Square27: TPanel;
    Square28: TPanel;
    Square29: TPanel;
    Square30: TPanel;
    Square31: TPanel;
    Square32: TPanel;
    Square33: TPanel;
    Square34: TPanel;
    Square35: TPanel;
    Square36: TPanel;
    Square37: TPanel;
    Square38: TPanel;
    Square39: TPanel;
    Square40: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    MGame: TMonopolyGame;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  MGame.playRound;
  Label1.Caption := MGame.getPlayers.First.getName + ' находится на ' + MGame.getPlayers.First.GetLocation.getName;
  Label2.Caption := MGame.getPlayers.Last.getName + ' находится на ' + MGame.getPlayers.Last.GetLocation.getName;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MGame:=TMonopolyGame.Create;
end;

end.
