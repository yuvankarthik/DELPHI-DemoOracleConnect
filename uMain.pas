unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXOracle, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Vcl.StdCtrls;

type
  TfmConnectORA = class(TForm)
    SQLConnection1: TSQLConnection;
    SQLQuery1: TSQLQuery;
    memoSQLText: TMemo;
    Label1: TLabel;
    btnExecuteQuery: TButton;
    memoResult: TMemo;
    Label2: TLabel;
    procedure btnExecuteQueryClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ConnecttoOracle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConnectORA: TfmConnectORA;

implementation

{$R *.dfm}

//On Formshow
procedure TfmConnectORA.FormShow(Sender: TObject);
begin
  //Connect to Oracle DB
  ConnecttoOracle;
end;

//Connect to oracle databse
Procedure TfmConnectORA.ConnecttoOracle;
begin
  try
    SQLConnection1.ConnectionName := 'OracleConnection';
    SQLConnection1.DriverName := 'Oracle';
    SQLConnection1.GetDriverFunc := 'getSQLDriverORACLE';
    SQLConnection1.LibraryName := 'dbxora.dll';
    SQLConnection1.VendorLib := 'OCI.dll';
    SQLConnection1.LoginPrompt := false;

    With SQLConnection1 do
    begin
      // Params.Values['HostName'] := 'localhost';
      Params.Values['Database'] := 'orcl'; // 'orcl';
      Params.Values['User_Name'] := 'demoapp'; // 'demoapp';
      Params.Values['Password'] := 'log'; // 'log';
    end;

    SQLConnection1.Connected := true;
  Except
    on E: Exception do
      raise Exception.Create('Error in ConnecttoOracle.' + E.Message);
  end;
end;

//Execute query
procedure TfmConnectORA.btnExecuteQueryClick(Sender: TObject);
begin
  try
    try
      memoResult.Text := '';
      SQLQuery1.CommandText := Trim(memoSQLText.Lines.Text);
      SQLQuery1.Open;
      if SQLQuery1.RecordCount > 0 then
      begin
        memoResult.Text := 'Query executed. Recordcount : ' +
          InttoStr(SQLQuery1.RecordCount);
        memoResult.Lines.Add('First Row - First Column result : ');
        memoResult.Lines.Add(SQLQuery1.fields[0].AsString);
      end
      else
      begin
        memoResult.Text := 'Query executed. No records found.';
      end;
    Except
      on E: Exception do
        memoResult.Text := 'Error : ' + E.Message;
    end;
  finally
    SQLQuery1.Close;
  end;
end;

end.
