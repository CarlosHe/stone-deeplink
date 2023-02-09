unit Stone.Deeplink.Adapters;

interface

{$IFDEF ANDROID}
uses
  Stone.Deeplink.Adapter.Android.Cancelation,
  Stone.Deeplink.Adapter.Android.Payment,
  Stone.Deeplink.Adapter.Android.PaymentReturn;

type
  TStoneDeeplinkCancelationAndroidAdapter = Stone.Deeplink.Adapter.Android.Cancelation.TStoneDeeplinkCancelationAndroidAdapter;
  TStoneDeeplinkPaymentAndroidAdapter = Stone.Deeplink.Adapter.Android.Payment.TStoneDeeplinkPaymentAndroidAdapter;
  TStoneDeeplinkPaymentReturnAndroidAdapter = Stone.Deeplink.Adapter.Android.PaymentReturn.TStoneDeeplinkPaymentReturnAndroidAdapter;
{$ENDIF}

implementation

end.
