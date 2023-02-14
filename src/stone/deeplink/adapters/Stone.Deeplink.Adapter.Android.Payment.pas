unit Stone.Deeplink.Adapter.Android.Payment;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNI.GraphicsContentViewText,
  Stone.Deeplink.Contract.Adapter.Payment,
  Stone.Deeplink.Contract.Entity.Payment;

type

  TStoneDeeplinkPaymentAndroidAdapter = class(TInterfacedObject, IStoneDeeplinkPaymentAdapter)
  strict private
    constructor Create(const APayment: IStoneDeeplinkPaymentEntity);
  private
    { private declarations }
    FPayment: IStoneDeeplinkPaymentEntity;
  protected
    { protected declarations }
  public
    { public declarations }
    function GetIntent: JIntent;
    class function New(const APayment: IStoneDeeplinkPaymentEntity): IStoneDeeplinkPaymentAdapter;
  end;
{$ENDIF}

implementation

{$IFDEF ANDROID}
uses
  Androidapi.Helpers,
  Androidapi.JNI.Net,
  Androidapi.Jni.JavaTypes,
  System.SysUtils,
  Stone.Deeplink.Helper.Enum.InstallmentType,
  Stone.Deeplink.Helper.Enum.TransactionType,
  Stone.Deeplink.Enum.TransactionType,
  Stone.Deeplink.Enums;

{ TStoneDeeplinkPaymentAndroidAdapter }

constructor TStoneDeeplinkPaymentAndroidAdapter.Create(const APayment: IStoneDeeplinkPaymentEntity);
begin
  FPayment := APayment;
end;

function TStoneDeeplinkPaymentAndroidAdapter.GetIntent: JIntent;
var
  LURI: JUri_Builder;
begin
  LURI := TJUri_Builder.JavaClass.init
    .authority(StringToJString('pay'))
    .scheme(StringToJString('payment-app'))
    .appendQueryParameter(StringToJString('return_scheme'), StringToJString(FPayment.GetReturnScheme))
    .appendQueryParameter(StringToJString('amount'), StringToJString(UInt64(FPayment.GetAmount).ToString))
    .appendQueryParameter(StringToJString('editable_amount'), StringToJString(Integer(FPayment.GetEditableAmount).ToString))
    .appendQueryParameter(StringToJString('transaction_type'), StringToJString(FPayment.GetTransactionType.ToString.ToLower))
    .appendQueryParameter(StringToJString('installment_type'), StringToJString(FPayment.GetInstallmentType.ToString.ToLower))
    .appendQueryParameter(StringToJString('installment_count'), StringToJString(Byte(FPayment.GetInstallmentCount).ToString));

  if FPayment.GetOrderId > 0 then
    LURI.appendQueryParameter(StringToJString('order_id'), StringToJString(UInt64(FPayment.GetOrderId).ToString));

  Result := TJIntent.JavaClass.init(TJIntent.JavaClass.ACTION_VIEW)
    .addFlags(TJIntent.JavaClass.FLAG_ACTIVITY_NEW_TASK)
    .setData(LURI.build);
end;

class function TStoneDeeplinkPaymentAndroidAdapter.New(const APayment: IStoneDeeplinkPaymentEntity): IStoneDeeplinkPaymentAdapter;
begin
  Result := Self.Create(APayment);
end;
{$ENDIF}

end.
