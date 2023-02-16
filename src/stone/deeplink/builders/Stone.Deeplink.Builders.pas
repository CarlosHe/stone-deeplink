unit Stone.Deeplink.Builders;

interface

uses
  Stone.Deeplink.Builder.Entity.Cancelation,
  Stone.Deeplink.Builder.Entity.Payment,
  Stone.Deeplink.Builder.Entity.CancelationReturn,
  Stone.Deeplink.Builder.Entity.PaymentReturn;

type

  TStoneDeeplinkCancelationEntityBuilder = Stone.Deeplink.Builder.Entity.Cancelation.TStoneDeeplinkCancelationEntityBuilder;
  TStoneDeeplinkPaymentEntityBuilder = Stone.Deeplink.Builder.Entity.Payment.TStoneDeeplinkPaymentEntityBuilder;
  TStoneDeeplinkCancelationReturnEntityBuilder = Stone.Deeplink.Builder.Entity.CancelationReturn.TStoneDeeplinkCancelationReturnEntityBuilder;
  TStoneDeeplinkPaymentReturnEntityBuilder = Stone.Deeplink.Builder.Entity.PaymentReturn.TStoneDeeplinkPaymentReturnEntityBuilder;

implementation

end.
