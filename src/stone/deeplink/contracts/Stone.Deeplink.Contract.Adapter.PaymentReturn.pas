unit Stone.Deeplink.Contract.Adapter.PaymentReturn;

interface

{$IFDEF ANDROID}
uses
  Stone.Deeplink.Contract.Entity.PaymentReturn;

type

  IStoneDeeplinkPaymentReturnAdapter = interface
    ['{8C1581E5-31BD-4E11-A763-B4D350626214}']
    function GetPaymentReturn: IStoneDeeplinkPaymentReturnEntity;
  end;
{$ENDIF}

implementation

end.
