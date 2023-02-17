unit Stone.Deeplink.Helper.AmountType;

interface

uses
  System.SysUtils,
  Stone.Deeplink.Types;

type

  TStoneDeeplinkAmountHelper = record helper for TStoneDeeplinkAmount
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    class function FromDouble(const AAmount: Double): TStoneDeeplinkAmount; inline; static;
    class function FromString(const AAmount: string): TStoneDeeplinkAmount; inline; static;
    function ToDouble: Double; inline;
    function ToString: string; inline;
    function ToFormatCurr(const AFormat: string = '##0.00'): string; inline;
  end;

implementation

uses
  System.Math;

{ TStoneDeeplinkAmountHelper }

class function TStoneDeeplinkAmountHelper.FromDouble(const AAmount: Double): TStoneDeeplinkAmount;
begin
  Result := Trunc(RoundTo(AAmount, -2) * 100);
end;

class function TStoneDeeplinkAmountHelper.FromString(const AAmount: string): TStoneDeeplinkAmount;
begin
  Result := FromDouble(StrToFloat(AAmount));
end;

function TStoneDeeplinkAmountHelper.ToDouble: Double;
begin
  Result := Self / 100;
end;

function TStoneDeeplinkAmountHelper.ToFormatCurr(const AFormat: string): string;
begin
  Result := FormatCurr(AFormat, Self.ToDouble);
end;

function TStoneDeeplinkAmountHelper.ToString: string;
begin
  Result := Self.ToDouble.ToString;
end;

end.
