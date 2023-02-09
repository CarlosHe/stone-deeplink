unit Stone.Deeplink.Proxies;

interface

{$IFDEF ANDROID}
uses
  Stone.Deeplink.Proxy.Android.Cancelation,
  Stone.Deeplink.Proxy.Android.Payment,
  Stone.Deeplink.Proxy.Android.Printer;

type

  TStoneDeeplinkCancelationProxy = Stone.Deeplink.Proxy.Android.Cancelation.TStoneDeeplinkCancelationProxy;
  TStoneDeeplinkPaymentProxy = Stone.Deeplink.Proxy.Android.Payment.TStoneDeeplinkPaymentProxy;
  TStoneDeeplinkPrinterProxy = Stone.Deeplink.Proxy.Android.Printer.TStoneDeeplinkPrinterProxy;
{$ENDIF}

implementation

end.
