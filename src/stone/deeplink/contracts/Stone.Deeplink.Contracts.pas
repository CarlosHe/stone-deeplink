unit Stone.Deeplink.Contracts;

interface

uses
  Stone.Deeplink.Contract.Adapter.Cancelation,
  Stone.Deeplink.Contract.Adapter.Payment,
  Stone.Deeplink.Contract.Adapter.PaymentReturn,
  Stone.Deeplink.Contract.Application,
  Stone.Deeplink.Contract.Builder.Entity.Cancelation,
  Stone.Deeplink.Contract.Builder.Entity.Payment,
  Stone.Deeplink.Contract.Builder.Entity.PaymentReturn,
  Stone.Deeplink.Contract.Entity.Cancelation,
  Stone.Deeplink.Contract.Entity.Payment,
  Stone.Deeplink.Contract.Entity.PaymentReturn,
  Stone.Deeplink.Contract.Proxy.Cancelation,
  Stone.Deeplink.Contract.Proxy.Payment,
  Stone.Deeplink.Contract.Proxy.Printer;

type
{$IFDEF ANDROID}
  IStoneDeeplinkCancelationAdapter = Stone.Deeplink.Contract.Adapter.Cancelation.IStoneDeeplinkCancelationAdapter;
  IStoneDeeplinkPaymentAdapter = Stone.Deeplink.Contract.Adapter.Payment.IStoneDeeplinkPaymentAdapter;
  IStoneDeeplinkPaymentReturnAdapter = Stone.Deeplink.Contract.Adapter.PaymentReturn.IStoneDeeplinkPaymentReturnAdapter;
{$ENDIF}
  IStoneDeeplinkApplication = Stone.Deeplink.Contract.Application.IStoneDeeplinkApplication;
  IStoneDeeplinkCancelationEntityBuilder = Stone.Deeplink.Contract.Builder.Entity.Cancelation.IStoneDeeplinkCancelationEntityBuilder;
  IStoneDeeplinkPaymentEntityBuilder = Stone.Deeplink.Contract.Builder.Entity.Payment.IStoneDeeplinkPaymentEntityBuilder;
  IStoneDeeplinkPaymentReturnEntityBuilder = Stone.Deeplink.Contract.Builder.Entity.PaymentReturn.IStoneDeeplinkPaymentReturnEntityBuilder;
  IStoneDeeplinkCancelationEntity = Stone.Deeplink.Contract.Entity.Cancelation.IStoneDeeplinkCancelationEntity;
  IStoneDeeplinkPaymentEntity = Stone.Deeplink.Contract.Entity.Payment.IStoneDeeplinkPaymentEntity;
  IStoneDeeplinkPaymentReturnEntity = Stone.Deeplink.Contract.Entity.PaymentReturn.IStoneDeeplinkPaymentReturnEntity;
  IStoneDeeplinkCancelationProxy = Stone.Deeplink.Contract.Proxy.Cancelation.IStoneDeeplinkCancelationProxy;
  IStoneDeeplinkPaymentProxy = Stone.Deeplink.Contract.Proxy.Payment.IStoneDeeplinkPaymentProxy;
  IStoneDeeplinkPrinterProxy = Stone.Deeplink.Contract.Proxy.Printer.IStoneDeeplinkPrinterProxy;

implementation

end.
