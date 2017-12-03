program TOKEISAN;

uses
  Forms,
  TOKEISAN1 in 'TOKEISAN1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'TOKEISAN';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
