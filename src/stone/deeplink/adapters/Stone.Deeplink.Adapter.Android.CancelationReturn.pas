unit Stone.Deeplink.Adapter.Android.CancelationReturn;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNI.GraphicsContentViewText,
  Stone.Deeplink.Contract.Adapter.CancelationReturn,
  Stone.Deeplink.Contract.Entity.CancelationReturn,
  Stone.Deeplink.Enum.TransactionType,
  Stone.Deeplink.Types;

type

  TStoneDeeplinkCancelationReturnAndroidAdapter = class(TInterfacedObject, IStoneDeeplinkCancelationReturnAdapter)
  strict private
    { strict private declarations }
    constructor Create(const AIntent: JIntent);
  private
    { private declarations }
    FIntent: JIntent;

  protected
    { protected declarations }
    function GetOrderId(AOrderId: string): TStoneDeeplinkOrderId;
    function GetATK(AATK: string): UInt64;
    // function GetInstallmentCount
  public
    { public declarations }
    function GetCancelationReturn: IStoneDeeplinkCancelationReturnEntity;
    class function New(const AIntent: JIntent): IStoneDeeplinkCancelationReturnAdapter;
  end;
{$ENDIF}

implementation

{$IFDEF ANDROID}
uses
  Androidapi.JNI.JavaTypes,
  Androidapi.Helpers,
  System.SysUtils,
  Stone.Deeplink.Builder.Entity.CancelationReturn,
  Stone.Deeplink.Contract.Builder.Entity.CancelationReturn,
  Stone.Deeplink.Helper.Enum.TransactionType,
  FMX.Dialogs;

{ TStoneDeeplinkCancelationReturnAndroidAdapter }

constructor TStoneDeeplinkCancelationReturnAndroidAdapter.Create(const AIntent: JIntent);
begin
  FIntent := AIntent;
end;

function TStoneDeeplinkCancelationReturnAndroidAdapter.GetATK(AATK: string): UInt64;
begin
  if not AATK.IsEmpty then
    Result := AATK.ToInt64
  else
    Result := 0;
end;

function TStoneDeeplinkCancelationReturnAndroidAdapter.GetOrderId(AOrderId: string): TStoneDeeplinkOrderId;
begin
  if not AOrderId.IsEmpty then
    Result := TStoneDeeplinkOrderId(AOrderId.ToInt64)
  else
    Result := 0;
end;

function TStoneDeeplinkCancelationReturnAndroidAdapter.GetCancelationReturn: IStoneDeeplinkCancelationReturnEntity;
var
  LCancelationReturnEntityBuilder: IStoneDeeplinkCancelationReturnEntityBuilder;
begin
  LCancelationReturnEntityBuilder := TStoneDeeplinkCancelationReturnEntityBuilder.New
    .SetATK(GetATK(JStringToString(FIntent.getData.getQueryParameter(StringToJString('atk')))))
    .SetCanceledAmount(JStringToString(FIntent.getData.getQueryParameter(StringToJString('canceledamount'))).ToInt64)
    .SetPaymentType(JStringToString(FIntent.getData.getQueryParameter(StringToJString('paymenttype'))).ToInteger)
    .SetTransactionAmount(JStringToString(FIntent.getData.getQueryParameter(StringToJString('transactionamount'))).ToInt64)
    .SetOrderId(GetOrderId(JStringToString(FIntent.getData.getQueryParameter(StringToJString('orderid')))))
    .SetAuthorizationCode(JStringToString(FIntent.getData.getQueryParameter(StringToJString('authorizationcode'))).ToInteger)
    .SetReason(JStringToString(FIntent.getData.getQueryParameter(StringToJString('reason'))))
    .SetResponseCode(JStringToString(FIntent.getData.getQueryParameter(StringToJString('responsecode'))));

  Result := LCancelationReturnEntityBuilder.Build;
end;

class function TStoneDeeplinkCancelationReturnAndroidAdapter.New(const AIntent: JIntent): IStoneDeeplinkCancelationReturnAdapter;
begin
  Result := Self.Create(AIntent);
end;
{$ENDIF}

end.
