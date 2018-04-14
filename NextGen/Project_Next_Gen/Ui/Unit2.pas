unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Uregister,
  UProductCatalog, Data.DB, Data.Win.ADODB;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Regicter: TRegister;
    catalog: TProductCatalog;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  id: integer;
  qty: integer;
begin
  // Registe.enterItem();
  id := StrToInt(Edit1.Text);
  qty := StrToInt(Edit2.Text);
  Regicter.makeNewSale;
  Regicter.enterItem(id, qty);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  //
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  catalog := TProductCatalog.create;
  Regicter := TRegister.create(catalog);
end;

end.
