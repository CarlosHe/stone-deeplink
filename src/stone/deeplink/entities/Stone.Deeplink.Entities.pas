unit Stone.Deeplink.Entities;

interface

uses
  Stone.Deeplink.Entity.Cancelation,
  Stone.Deeplink.Entity.Payment,
  Stone.Deeplink.Entity.CancelationReturn,
  Stone.Deeplink.Entity.PaymentReturn;

type

  TStoneDeeplinkCancelationEntity = Stone.Deeplink.Entity.Cancelation.TStoneDeeplinkCancelationEntity;
  TStoneDeeplinkPaymentEntity = Stone.Deeplink.Entity.Payment.TStoneDeeplinkPaymentEntity;
  TStoneDeeplinkCancelationReturnEntity = Stone.Deeplink.Entity.CancelationReturn.TStoneDeeplinkCancelationReturnEntity;
  TStoneDeeplinkPaymentReturnEntity = Stone.Deeplink.Entity.PaymentReturn.TStoneDeeplinkPaymentReturnEntity;

implementation

end.
