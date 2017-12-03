unit TOKEISAN1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Tabnotbk, Menus, Buttons;

type
  TForm1 = class(TForm)
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    btnAllClear: TButton;
    btnClear: TButton;
    kekka: TEdit;
    EditCalc: TEdit;
    Tab: TPageControl;
    btnStart: TButton;
    Button3: TButton;
    btnWrite: TButton;
    Edit1: TEdit;
    Timer1: TTimer;
    Edit2: TEdit;
    nensyu: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    day: TEdit;
    Label4: TLabel;
    Day2: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Min: TLabel;
    Sec: TLabel;
    Hour: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    zayunomei: TLabel;
    Label12: TLabel;
    tanka: TEdit;
    Label1: TLabel;
    hosoku: TLabel;
    Memo2: TMemo;
    TabSheet4: TTabSheet;
    edtTimer: TEdit;
    Timer2: TTimer;
    CX: TEdit;
    lblTimer: TLabel;
    Label13: TLabel;
    bbKeisan: TBitBtn;
    bbTimer: TBitBtn;
    lblDay: TLabel;
    bbExport: TBitBtn;
    SaveDialog1: TSaveDialog;
    BitBtn1: TBitBtn;
    procedure btn0Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnPointClick(Sender: TObject);
    procedure btnResultClick(Sender: TObject);
    procedure btnBClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure btnDClick(Sender: TObject);
    procedure btnAllClearClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnAClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    Procedure Timer(Sender: TObject; var Done: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnWriteClick(Sender: TObject);
    procedure EditCalcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure keisanClick(Sender: TObject);
    procedure EditCalcEnter(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure bbKeisanClick(Sender: TObject);
    procedure bbTimerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    { Private 宣言 }
    FSokutei: Boolean;
    FStartTime: DWord;
    FS: Boolean;
    procedure TimePrint(PTime: Integer);

  public
    { Public 宣言 }
  end;

var
  Form1:TForm1;
  s:Char;
  Se,Mi:Extended;
  TimerFLG : Boolean = False; //タイマーの動作を表現

implementation

uses
  MMSystem;
var
  GT:integer; {経過時間を宣言}

{$R *.DFM}

procedure TForm1.btn0Click(Sender: TObject);
begin
  if Sender is TButton then
  begin
    s:= TButton(Sender).Name[4];
    if EditCalc.Text <> '0' then
    begin
      EditCalc.Text := EditCalc.Text + s;
    end else
    begin
     EditCalc.Text := s;
    end;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if Sender is TButton then
  begin
    s := TButton(Sender).Name[4];
    if EditCalc.Text <> '0' then
    begin
      EditCalc.Text := EditCalc.Text + s
    end else
    begin
      EditCalc.Text := s;
    end;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if Sender is TButton then
  begin
    s := TButton(Sender).Name[4];
    if EditCalc.Text <> '0' then
    begin
      EditCalc.Text := EditCalc.Text + s
    end else
    begin
      EditCalc.Text := s;
    end;
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if Sender is TButton then
  begin
    s := TButton(Sender).Name[4];
    if EditCalc.Text <> '0' then
    begin
      EditCalc.Text := EditCalc.Text + s
    end else
    begin
      EditCalc.Text := s;
    end;
  end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if Sender is TButton then
  begin
    s := TButton(Sender).Name[4];
    if EditCalc.Text <> '0' then
    begin
      EditCalc.Text := EditCalc.Text + s
    end else
    begin
      editCalc.Text := s;
    end;
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  if Sender is TButton then
  begin
    s := TButton(Sender).Name[4];
    if EditCalc.Text <> '0' then
    begin
      EditCalc.Text := EditCalc.Text + s
    end else
    begin
      EditCalc.Text := s;
    end;
  end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if Sender is TButton then
  begin
    s := TButton(Sender).Name[4];
    if EditCalc.Text <> '0' then
    begin
      EditCalc.Text := EditCalc.Text + s
    end else
    begin
     EditCalc.Text := s;
    end;
  end;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  if Sender is TButton then
  begin
    s := TButton(Sender).Name[4];
    if EditCalc.Text <> '0' then
    begin
      EditCalc.Text := EditCalc.Text + s
    end else
    begin
      EditCalc.Text := s;
    end;
  end;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  if Sender is TButton then
  begin
    s := TButton(Sender).Name[4];
    if EditCalc.Text <> '0' then
    begin
      EditCalc.Text := EditCalc.Text + s
    end else
    begin
     EditCalc.Text := s;
    end;
  end;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  if Sender is TButton then
  begin
    s := TButton(Sender).Name[4];
    if EditCalc.Text <> '0' then
    begin
      EditCalc.Text := EditCalc.Text + s
    end else
    begin
      EditCalc.Text := s;
    end;
  end;
end;

procedure TForm1.btnPointClick(Sender: TObject);
begin
  if Pos('.',EditCalc.Text) = 0 then
  begin
    EditCalc.Text := EditCalc.Text + '.';
  end;
end;

procedure TForm1.btnBClick(Sender: TObject);
begin
  if EditCalc.Text = '' then
  begin
    raise Exception.Create ('値を入力してから演算ボタンをクリックして下さい。')
  end else
  begin
    EditCalc.Text := EditCalc.Text + '-';
  end;
end;

procedure TForm1.btnCClick(Sender: TObject);
begin
  if EditCalc.Text = '' then
  begin
    raise Exception.Create ('値を入力してから演算ボタンをクリックして下さい。')
  end else
  begin
    EditCalc.Text := EditCalc.Text + '*';
  end;
end;

procedure TForm1.btnDClick(Sender: TObject);
begin
  if EditCalc.Text = '' then
  begin
    raise Exception.Create ('値を入力してから演算ボタンをクリックして下さい。')
  end else
  begin
    EditCalc.Text := EditCalc.Text + '/';
  end;
end;

procedure TForm1.btnAllClearClick(Sender: TObject);
begin
  EditCalc.Text := '';
  Kekka.Text := '';
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  EditCalc.Text := '' ;
end;

function Calc(s: String; var Ans:Extended):Boolean;
var
  Err : Boolean;
  P:PChar;

procedure Error;
begin
  Err := True;
end;

function Number: Extended;
var
  X,A: Extended;
  Sign: Char;
begin
  Result := 0;
  Sign := P^;
  if P^in ['+','-'] then
  begin
    Sign := P^;
    Inc(P);
  end;
  if P^in ['0'..'9'] then
  begin
    X := Ord(P^) - Ord('0');
    Inc(P);
    while P^in ['0'..'9'] do
    begin
      X := 10 * X + Ord(P^) - Ord('0');
      Inc(P);
    end;
    if P^ = '.' then
    begin
      A := 1;
      Inc(p);
      while P^in ['0'..'9'] do
      begin
        A := 0.1 * A;
        X := X + A * (Ord(P^) - Ord('0'));
        Inc(P);
      end;
    end;
    if Sign = '-' then
    begin
      Result := -X
    end else
    begin
      Result := X;
    end;
  end else
  begin
    Error;
  end;
end;


function Expression: Extended;
var
  X: Extended;

function Term: Extended;
var
  X,Y : Extended;

function Factor: Extended;
begin
  if P^<>'(' then
  begin
    Result := Number
  end else
  begin
    Inc(P);
    Result := Expression;
    if P^=')' then
    begin
      Inc(P);
    end else
    begin
      Error;
    end;
  end;
end;

begin
  X := Factor;
  while P^ in ['*','/'] do
  if P^ = '*' then
  begin
    Inc(P);
    X := X * Factor;
  end else
  begin
    Inc(P);
    Y := Factor;
    if Y <> 0 then
    begin
      X := X / Y
    end else
    begin
      Error;
    end;
  end;
  Result := X;
end;

begin
  X := Term;
  while P^ in ['+','-'] do
  case P^ of
  '+':begin
        Inc(P);
        X := X + Term;
      end;
  '-':begin
        Inc(P);
        X := X - Term;
      end;
  end;
  Result := X;
end;

begin
  Ans := 0;
  Err := false;
  P := PChar(S);
  Ans := Expression;
  if (Trim(P) <> '') then
  begin
    Error;
  end;
  if Err then
  begin
    Ans := 0;
  end;
  Result := not Err;
end;

procedure TForm1.btnResultClick(Sender: TObject);
var
  Ans: Extended;
begin
  if Calc(EditCalc.Text,Ans) then
  begin
    EditCalc.Text := FloatToStr(Ans);
    Kekka.Text := FloatToStr(Ans);
  end else
  begin
    Kekka.Text := 'error';
  end;
end;

procedure TForm1.btnAClick(Sender: TObject);
begin
  if EditCalc.Text = '' then
  begin
    raise Exception.Create('値を入力してから演算ボタンをクリックして下さい。')
  end else
  begin
    EditCalc.Text := EditCalc.Text + '+';
  end;
end;

procedure TForm1.btnStartClick(Sender: TObject);
begin
  if FSokutei then
  begin
    Form1.Tag := Tag + TimeGetTime - FStartTime;
    TimePrint(Form1.Tag);
    Application.OnIdle := nil;
  end else
  begin
    FStartTime := TimeGetTime;
    Application.OnIdle := Timer;
  end;
  FSokutei := Not FSokutei; {測定フラグを反転}
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit2.Text := '';
  Form1.Tag := 0;
  TimePrint(Form1.Tag);
end;

procedure TForm1.TimePrint;
var
  a,b,c:Integer;
const
  HH:Integer = 0;
  MM:Integer = 0;
  SS:Integer = 0;
begin
  if HH <> PTime Div 3600000 then //分 制御
  begin
    HH:= PTime Div 3600000;
  end;
  if MM <> PTime Div 60000 then //分 制御
  begin
    MM:= PTime  Div 60000 Mod 60;
  end;
  if SS <> PTime Div 1000 then  //秒 制御
  begin
    SS:= PTime  Div  1000 Mod 60;
  end;
  edit1.Text:= IntToStr(HH) + ':'
             + IntToStr(MM) + ':'
             + IntToStr(SS) + '.'
             + Format('%.3d', [(PTime Mod 1000)]);
  if Hour.Caption <> '' then
  begin
    a:= StrToInt(Hour.Caption);
    b:= StrToInt(Min.Caption);
    c:= StrToInt(Sec.Caption);
    a:= a * HH;
    b:= b * MM;
    c:= c * SS;
    Tanka.Text:= FloatToStrF( a + b + c,ffCurrency,15,0);
    Hosoku.Caption := 'あなたがこの作業に費やしている時間価値です。'
  end;
end;

procedure TForm1.Timer(Sender: TObject; var Done: Boolean);
var
  ATime: Integer;
begin
  ATime := Form1.Tag + TimeGetTime -FStartTime;
  TimePrint(ATime);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  h,s,m,CountTime :integer;
begin
  CountTime:= GetTickCount div 1000; //Windows起動時からの時間を取得し1000で割る
  h:= CountTime div 3600;
  m:= CountTime div 60 mod 60;
  s:= CountTime mod 60;
  Label1.Caption := 'PC起動後：'+ Format('%2d 時間 %2d 分 %2d 秒',[h,m,s]);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SetWindowLong(Edit1.Handle,GWL_STYLE,GetWindowLong(
  Edit1.Handle,GWL_STYLE) or ES_CENTER);

  SetWindowLong(Kekka.Handle,GWL_STYLE,GetWindowLong(
  Kekka.Handle,GWL_STYLE) or ES_RIGHT);

  SetWindowLong(Nensyu.Handle,GWL_STYLE,GetWindowLong(
  Nensyu.Handle,GWL_STYLE) or ES_RIGHT or ES_NUMBER);

  SetWindowPos(Nensyu.Handle,0,0,0,0,0,
  SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER or SWP_FRAMECHANGED);

  SetWindowLong(Day.Handle,GWL_STYLE,GetWindowLong(
  Day.Handle,GWL_STYLE) or ES_RIGHT or ES_NUMBER);

  SetWindowPos(day.Handle,0,0,0,0,0,
  SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER or SWP_FRAMECHANGED);

  SetWindowLong(Tanka.Handle,GWL_STYLE,GetWindowLong(
  Tanka.Handle,GWL_STYLE) or ES_CENTER);

  SetWindowLong(edtTimer.Handle,GWL_STYLE,GetWindowLong(
  edtTimer.Handle,GWL_STYLE) or ES_CENTER);

  SetWindowLong(CX.Handle,GWL_STYLE,GetWindowLong(
  CX.Handle,GWL_STYLE) or ES_RIGHT or ES_NUMBER);
  SetWindowPos(CX.Handle,0,0,0,0,0,SWP_NOMOVE or SWP_NOSIZE or
  SWP_NOZORDER or SWP_FRAMECHANGED);
end;

procedure TForm1.btnWriteClick(Sender: TObject);
var
  Time_Data:string;
begin
 // if Edit2.Text = '' then
 // begin
 //   Application.MessageBox('【作業内容】を入力して下さい。'
 //   ,'【入力不備】',mb_IconInformation);
 //   Exit;
 // end;

  //時間を記録
  Time_Data:= Time_Data + Edit2.Text + ',' + Edit1.Text;

  Memo2.Lines.Add(Time_Data);
end;

procedure TForm1.EditCalcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Ans: Extended;
begin
  if (Key = VK_RETURN) then
  begin
    if Calc(EditCalc.Text,Ans) then
    begin
      EditCalc.Text := FloatToStr(Ans);
      Kekka.Text := FloatToStr(Ans);
      //文字列の最後にキャレットを移動させる
      TEdit(Sender).SelStart := Length(TEdit(Sender).Text);
    end else
    begin
      Kekka.Text := 'error';
    end;
  end;
end;

procedure TForm1.keisanClick(Sender: TObject);
var
  Num1,Num2,Kekka:Extended;
  Num3:Integer;
begin
  if Nensyu.Text = '' then
  begin
    Application.MessageBox('【年収】を入力して下さい。'
    ,'【入力不備】',mb_IconInformation);
    Exit;
  end;

  if Day.Text = '' then
  begin
    Application.MessageBox('【年間勤務日数】を入力して下さい。'
    ,'【入力不備】',mb_IconInformation);
    Exit;
  end;

  if day2.ItemIndex = -1 then
  begin
    Application.MessageBox('【平均勤務時間】を入力して下さい。'
    ,'【入力不備】',mb_IconInformation);
    Exit;
  end;

  Num1 := StrToFloat(Nensyu.Text);
  Num2 := StrToFloat(Day.Text);

  case Day2.Itemindex of
    0:Num3:= 8;
    1:Num3:= 9;
    2:Num3:= 10;
    3:Num3:= 11;
    4:Num3:= 12;
    5:Num3:= 13;
    6:Num3:= 14;
    7:Num3:= 15;
    8:Num3:= 16;
    9:Num3:= 17;
  end;

  try
    Kekka := Round(Num1 * 10000 / Num2 / Num3);
  except
    Application.MessageBox('ゼロで割ることはできません。'
    +#13+ '正しい値を入力して下さい。'
    ,'【不正計算】',mb_IconInformation);
    Exit;
  end;
  Mi := Round(Kekka/60);
  Se := Round(Mi   /60);
  Hour.Caption:= FloatToStr(Kekka); //時給
  Min.Caption := FloatToStr(Mi);    //分給
  Sec.Caption := FloatToStr(Se);    //秒給
  Zayunomei.Caption:= '時は命なり。';
  Label12.Caption  := '時間を大切にしましょう。'
end;

procedure TForm1.EditCalcEnter(Sender: TObject);
begin
  //文字列の最後にキャレットを移動する
  TEdit(Sender).SelStart := Length(TEdit(Sender).Text);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  a,SC:Extended;
begin
  if CX.Text <> '' then
  begin
    a:= ROUND(StrToFloat(CX.Text));  //四捨五入する（小数点処理回避）
    GT := GT + 1;                    //1/100秒を経過させる
    SC := GT div 60;                 //秒
    if a-SC >= 0 then
    begin
      edtTimer.Text := FloatToStr(a-SC);
      if a-SC = 0 then
      begin
        Timer2.Interval := 0;
        lblTimer.Caption := 'おわり';
        Application.MessageBox('時間です。'
        ,'【おわり】',mb_IconInformation);
        Beep;    //音を鳴らす
        Exit;
      end;
    end;
  end;
end;

procedure TForm1.bbKeisanClick(Sender: TObject);
var
  Num1,Num2,Kekka:Extended;
  Num3:Integer;
begin
  if Nensyu.Text = '' then
  begin
    Application.MessageBox('【年収】を入力して下さい。'
    ,'【入力不備】',mb_IconInformation);
    Exit;
  end;

  if Day.Text = '' then
  begin
    Application.MessageBox('【年間勤務日数】を入力して下さい。'
    ,'【入力不備】',mb_IconInformation);
    Exit;
  end;

  if day2.ItemIndex = -1 then
  begin
    Application.MessageBox('【平均勤務時間】を入力して下さい。'
    ,'【入力不備】',mb_IconInformation);
    Exit;
  end;

  Num1 := StrToFloat(Nensyu.Text);
  Num2 := StrToFloat(Day.Text);

  case Day2.Itemindex of
    0:Num3:= 8;
    1:Num3:= 9;
    2:Num3:= 10;
    3:Num3:= 11;
    4:Num3:= 12;
    5:Num3:= 13;
    6:Num3:= 14;
    7:Num3:= 15;
    8:Num3:= 16;
    9:Num3:= 17;
  end;

  try
    Kekka := Round(Num1 * 10000 / Num2 / Num3);
  except
    Application.MessageBox('ゼロで割ることはできません。'
    +#13+ '正しい値を入力して下さい。'
    ,'【不正計算】',mb_IconInformation);
    Exit;
  end;
  Mi := Round(Kekka/60);
  Se := Round(Mi   /60);
  Hour.Caption:= FloatToStr(Kekka); //時給
  Min.Caption := FloatToStr(Mi);    //分給
  Sec.Caption := FloatToStr(Se);    //秒給
  Zayunomei.Caption  := '時は命なり。';
  Label12.Caption  := '時間を大切にしましょう。'
end;

procedure TForm1.bbTimerClick(Sender: TObject);
begin
  { 入力不備判定 }
  if CX.Text = '' then
  begin
    Application.MessageBox('計測時間を入力して下さい。'
    ,'【入力不備】',mb_IconInformation);
    Exit;
  end;

  FS := not FS; {測定フラグを反転}
  if FS then
  begin
    Timer2.Interval := 10;{タイマー間隔を1/100秒に}
    CX.Visible      := False;
    lblTimer.Caption := '計測中';
    label13.Caption := '';
  end else
  begin
    Timer2.Interval := 0; {タイマー間隔をゼロに}
    GT := 0;
    CX.Visible := True;
    CX.Text := edtTimer.Text;
    lblTimer.Caption := '';
    label13.Caption := '(単位：秒)';
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  lblDay.Caption := DateToStr(Date);
end;

procedure TForm1.bbExportClick(Sender: TObject);
var
  F:       TextFile;
  CSVFile: String;
  stl:     TStringList;
  i:       Integer;
begin
   if SaveDialog1.Execute then
  begin
    CSVFile := SaveDialog1.FileName; //保存場所の指定
  end
  else
  begin
    Exit;
  end;
  stl := TStringList.Create;
  try                        {*ファイル出力*}
  try
    AssignFile(F, CSVFile);  //実ファイルと結びつける
    ReWrite(F);              //新規作成して開く

    i := Memo2.Lines.Count;  //フィールド行
    for i := 0 to Memo2.Lines.Count do
    begin
      stl.Add(Memo2.Lines.Text);
    end;
    Writeln(F, stl.CommaText);
    stl.Clear;  //リスト出力

   // while Not(Memo2.Lines.Text.Eof) do
   // begin
     // for i := 0 to Memo2.Lines.Text.FieldCount -1 do
      begin
     //   stl.Add(Memo2.Lines.Text.Fields[i].AsString);
      end;
   //   Writeln(F, stl.CommaText);  //テキストファイルに一行出力
   //   stl.Clear;
   // Memo2.Lines.Text.Next;  //次のレコードを処理
   // end;
    CloseFile(F);  //ファイルを閉じる
  finally
    stl.Free;
  end;
  except
    MessageDlg('出力に失敗しました。再度実行して下さい。', mtError ,[mbOk], 0);
end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('メモ欄を消去してもよろしいですか？'
     ,mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    //メモ欄を全消去
    Memo2.Clear;
  end;

end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  //誤終了の回避用制御
  if MessageDlg('時計算を終了してもよろしいですか？',
     mtConfirmation, [mbYes, mbNo], 0) = idNo then
     CanClose := False;
end;

end.
