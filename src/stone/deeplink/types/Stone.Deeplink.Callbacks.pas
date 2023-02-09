unit Stone.Deeplink.Callbacks;

interface

uses
  Stone.Deeplink.Contract.Entity.PaymentReturn;

type

  TOnPaymentSuccess = procedure(const APaymentReturn: IStoneDeeplinkPaymentReturnEntity) of object;
  TOnPaymentError = procedure(const ACode: Integer; const AMessage: string) of object;

  TOnPaymentSuccessComponent = procedure(const Sender: TObject; const APaymentReturn: IStoneDeeplinkPaymentReturnEntity) of object;
  TOnPaymentErrorComponent = procedure(const Sender: TObject; const ACode: Integer; const AMessage: string) of object;

implementation

end.
