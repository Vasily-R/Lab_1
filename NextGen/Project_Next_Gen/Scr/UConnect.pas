unit UConnect;

interface

uses
  Data.DB, Data.Win.ADODB;

type
  TConect = class
  private
    ADOConnection: TADOConnection;
    function GetADOConnection: TADOConnection;
    procedure SetADOConnection;
  end;

implementation

{ TConect }

function TConect.GetADOConnection: TADOConnection;
begin
  result:= ADOConnection;
end;

procedure TConect.SetADOConnection;
begin
  ADOConnection:=TADOConnection.Create(nil);
  ADOConnection.ConnectionString :=
    'Provider=MSDASQL.1;Password=1234;Persist Security Info=True;User ID=User;Extended Properties="Driver=MySQL ODBC 5.3 ANSI Driver;SERVER=localhost;UID=User;PWD=1234;DATABASE=test;PORT=3306;COLUMN_SIZE_S32=1";Initial Catalog=test';
  ADOConnection.LoginPrompt := false;
  ADOConnection.Connected := true;
end;

end.
