unit CalcVarTemp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask;

type
  TFormCalcVarTemp = class(TForm)
    dtpDateInit: TDateTimePicker;
    dtpTimeInit: TDateTimePicker;
    Label1: TLabel;
    dtpTimeEnd: TDateTimePicker;
    dtpDateEnd: TDateTimePicker;
    Label2: TLabel;
    mskedtDifer: TMaskEdit;
    Label3: TLabel;
    procedure dtpDateInitChange(Sender: TObject);
    procedure dtpTimeInitChange(Sender: TObject);
    procedure dtpDateEndChange(Sender: TObject);
    procedure dtpTimeEndChange(Sender: TObject);
    procedure mskedtDiferExit(Sender: TObject);
  private
    { Private declarations }
    procedure CalcDifer;
  public
    { Public declarations }
  end;

var
  FormCalcVarTemp: TFormCalcVarTemp;

implementation

{$R *.dfm}

uses
    StrUtils;
    
procedure TFormCalcVarTemp.dtpDateInitChange(Sender: TObject);
var
  dateInit, dateEnd:        TDateTime;
begin
    Self.dtpTimeInit.DateTime := Int(Self.dtpDateInit.DateTime) + Frac(Self.dtpTimeInit.DateTime);
    CalcDifer;
end;

procedure TFormCalcVarTemp.dtpTimeInitChange(Sender: TObject);
begin
    Self.dtpDateInit.DateTime := Int(Self.dtpDateInit.DateTime) + Frac(Self.dtpTimeInit.DateTime);
    CalcDifer;
end;

procedure TFormCalcVarTemp.dtpDateEndChange(Sender: TObject);
begin
    Self.dtpTimeEnd.DateTime := Int(Self.dtpDateEnd.DateTime) + Frac(Self.dtpTimeEnd.DateTime);
    CalcDifer;
end;

procedure TFormCalcVarTemp.dtpTimeEndChange(Sender: TObject);
begin
    Self.dtpDateEnd.DateTime := Int(Self.dtpDateEnd.DateTime) + Frac(Self.dtpTimeEnd.DateTime);
    CalcDifer;
end;

function Digits(val, numDigits: Integer): String;
begin
    if (numDigits <= 0) or (val < 0) then
        Result := '';

    Result := StrUtils.RightStr( StringOfChar('0', numDigits) + IntToStr(val), numDigits);
end;

procedure TFormCalcVarTemp.CalcDifer;
var
    differ:                     Double;
    hours, minutes, seconds:     Integer;
begin
    differ := Self.dtpDateEnd.DateTime - Self.dtpDateInit.DateTime;
    if differ < 0 then
        differ := differ * -1;

    // Tranforma em horas.
    hours := Trunc(differ * 24);
    minutes := Trunc((differ - hours/24) * 24 * 60);
    seconds := Trunc((differ - (hours/24 + minutes/1440)) * 24 * 60 * 60);
    Self.mskedtDifer.Text := Digits(hours,4) + ':' + Digits(minutes,2) + ':' + Digits(seconds,2);
end;

procedure TFormCalcVarTemp.mskedtDiferExit(Sender: TObject);
var
    hours, minutes, seconds:     Double;
begin
    hours := StrToFloat(Copy (Self.mskedtDifer.Text,1,4));
    minutes := StrToFloat(Copy (Self.mskedtDifer.Text,6,2));
    seconds := StrToFloat(Copy (Self.mskedtDifer.Text,9,2));

    Self.dtpDateEnd.DateTime := Self.dtpDateInit.DateTime + hours/24 + minutes/24/60 + seconds/24/60/60;
    Self.dtpTimeEnd.DateTime := Self.dtpDateEnd.DateTime;
end;

end.
