program SampleOracleDBConn;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fmConnectORA};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmConnectORA, fmConnectORA);
  Application.Run;
end.
