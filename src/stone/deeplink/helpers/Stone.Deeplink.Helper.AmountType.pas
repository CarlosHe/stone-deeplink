unit Stone.Deeplink.Helper.AmountType;

interface

uses
  Stone.Deeplink.Types;

type

  TStoneDeeplinkAmountHelper = record helper for TStoneDeeplinkAmount
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    class operator Implicit(AAmount: TStoneDeeplinkAmount): Double;
    class operator Implicit(AAmount: TStoneDeeplinkAmount): UInt64;
    class operator Implicit(AAmount: Double): TStoneDeeplinkAmount;
    class operator Explicit(AAmount: TStoneDeeplinkAmount): Double;
    class operator Explicit(AAmount: TStoneDeeplinkAmount): UInt64;
    class operator Explicit(AAmount: Double): TStoneDeeplinkAmount;
    function ToDouble: Double;
    class function FromDouble(const AAmount: Double): TStoneDeeplinkAmount; static;
  end;

implementation

uses
  System.Math;

{ TStoneDeeplinkAmountHelper }

class operator TStoneDeeplinkAmountHelper.Explicit(AAmount: TStoneDeeplinkAmount): Double;
begin
  Result := AAmount.ToDouble;
end;

class operator TStoneDeeplinkAmountHelper.Explicit(AAmount: Double): TStoneDeeplinkAmount;
begin
  Result := FromDouble(AAmount);
end;

class operator TStoneDeeplinkAmountHelper.Explicit(AAmount: TStoneDeeplinkAmount): UInt64;
begin
  Result := UInt64(AAmount);
end;

class function TStoneDeeplinkAmountHelper.FromDouble(const AAmount: Double): TStoneDeeplinkAmount;
begin
  Result := Trunc(RoundTo(AAmount, 2) * 100);
end;

class operator TStoneDeeplinkAmountHelper.Implicit(AAmount: Double): TStoneDeeplinkAmount;
begin
  Result := FromDouble(AAmount);
end;

class operator TStoneDeeplinkAmountHelper.Implicit(AAmount: TStoneDeeplinkAmount): UInt64;
begin
  Result := UInt64(AAmount);
end;

class operator TStoneDeeplinkAmountHelper.Implicit(AAmount: TStoneDeeplinkAmount): Double;
begin
  Result := AAmount.ToDouble;
end;

function TStoneDeeplinkAmountHelper.ToDouble: Double;
begin
  Result := Self / 100;
end;

end.
