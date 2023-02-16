unit Stone.Deeplink.Adapter.Android.PaymentReturn;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNI.GraphicsContentViewText,
  Stone.Deeplink.Contract.Adapter.PaymentReturn,
  Stone.Deeplink.Contract.Entity.PaymentReturn,
  Stone.Deeplink.Enum.TransactionType,
  Stone.Deeplink.Types;

type

  TStoneDeeplinkPaymentReturnAndroidAdapter = class(TInterfacedObject, IStoneDeeplinkPaymentReturnAdapter)
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
    function GetPaymentReturn: IStoneDeeplinkPaymentReturnEntity;
    class function New(const AIntent: JIntent): IStoneDeeplinkPaymentReturnAdapter;
  end;
{$ENDIF}

implementation

{$IFDEF ANDROID}
uses
  Androidapi.JNI.JavaTypes,
  Androidapi.Helpers,
  System.SysUtils,
  Stone.Deeplink.Builder.Entity.PaymentReturn,
  Stone.Deeplink.Contract.Builder.Entity.PaymentReturn,
  Stone.Deeplink.Helper.Enum.TransactionType,
  FMX.Dialogs;

{ TStoneDeeplinkPaymentReturnAndroidAdapter }

constructor TStoneDeeplinkPaymentReturnAndroidAdapter.Create(const AIntent: JIntent);
begin
  FIntent := AIntent;
end;

function TStoneDeeplinkPaymentReturnAndroidAdapter.GetATK(AATK: string): UInt64;
begin
  if not AATK.IsEmpty then
    Result := AATK.ToInt64
  else
    Result := 0;
end;

function TStoneDeeplinkPaymentReturnAndroidAdapter.GetOrderId(AOrderId: string): TStoneDeeplinkOrderId;
begin
  if not AOrderId.IsEmpty then
    Result := TStoneDeeplinkOrderId(AOrderId.ToInt64)
  else
    Result := 0;
end;

function TStoneDeeplinkPaymentReturnAndroidAdapter.GetPaymentReturn: IStoneDeeplinkPaymentReturnEntity;
var
  LPaymentReturnEntityBuilder: IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  LPaymentReturnEntityBuilder := TStoneDeeplinkPaymentReturnEntityBuilder.New
    .SetAmount(TStoneDeeplinkAmount(JStringToString(FIntent.getData.getQueryParameter(StringToJString('amount'))).ToInt64))
    .SetCardholderName(JStringToString(FIntent.getData.getQueryParameter(StringToJString('cardholder_name'))))
    .SetITK(JStringToString(FIntent.getData.getQueryParameter(StringToJString('itk'))))
    .SetATK(GetATK(JStringToString(FIntent.getData.getQueryParameter(StringToJString('atk')))))
    .SetAuthorizationDateTime(StrToDateTime(JStringToString(FIntent.getData.getQueryParameter(StringToJString('authorization_date_time')))))
    .SetBrand(JStringToString(FIntent.getData.getQueryParameter(StringToJString('brand'))))
    .SetOrderId(GetOrderId(JStringToString(FIntent.getData.getQueryParameter(StringToJString('order_id')))))
    .SetAuthorizationCode(JStringToString(FIntent.getData.getQueryParameter(StringToJString('authorization_code'))).ToInteger)
    .SetInstallmentCount(TStoneDeeplinkInstallmentCount(JStringToString(FIntent.getData.getQueryParameter(StringToJString('installment_count'))).ToInteger))
    .SetPAN(JStringToString(FIntent.getData.getQueryParameter(StringToJString('pan'))))
    .SetType(TStoneDeeplinkTransactionType.FromPortuguese((JStringToString(FIntent.getData.getQueryParameter(StringToJString('type'))))))
    .SetEntryMode(JStringToString(FIntent.getData.getQueryParameter(StringToJString('entry_mode'))))
    .SetAccountId(JStringToString(FIntent.getData.getQueryParameter(StringToJString('account_id'))))
    .SetCustomerWalletProviderId(JStringToString(FIntent.getData.getQueryParameter(StringToJString('customer_wallet_provider_id'))))
    .SetCode(JStringToString(FIntent.getData.getQueryParameter(StringToJString('code'))));

  Result := LPaymentReturnEntityBuilder.Build;
end;

class function TStoneDeeplinkPaymentReturnAndroidAdapter.New(const AIntent: JIntent): IStoneDeeplinkPaymentReturnAdapter;
begin
  Result := Self.Create(AIntent);
end;
{$ENDIF}

end.
