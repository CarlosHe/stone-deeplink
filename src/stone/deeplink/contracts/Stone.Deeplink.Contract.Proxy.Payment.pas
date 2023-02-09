unit Stone.Deeplink.Contract.Proxy.Payment;

interface

uses
  Stone.Deeplink.Contract.Entity.Payment;

type

  IStoneDeeplinkPaymentProxy = interface
    ['{D85DEF19-A6B1-438B-9EB4-AB1098A6F5E7}']
    procedure CallPayment(const APaymentEntity: IStoneDeeplinkPaymentEntity);
  end;

implementation

end.
