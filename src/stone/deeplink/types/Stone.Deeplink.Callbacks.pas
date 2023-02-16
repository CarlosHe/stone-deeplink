unit Stone.Deeplink.Callbacks;

interface

uses
  Stone.Deeplink.Contract.Entity.PaymentReturn,
  Stone.Deeplink.Contract.Entity.CancelationReturn;

type

  TOnPaymentSuccess = procedure(const APaymentReturn: IStoneDeeplinkPaymentReturnEntity) of object;
  TOnPaymentError = procedure(const ACode: Integer; const AMessage: string) of object;
  TOnCancelationSuccess = procedure(const ACancelationReturn: IStoneDeeplinkCancelationReturnEntity) of object;
  TOnCancelationError = procedure(const AReason: string; const AResponseCode: string) of object;

  TOnPaymentSuccessComponent = procedure(const Sender: TObject; const APaymentReturn: IStoneDeeplinkPaymentReturnEntity) of object;
  TOnPaymentErrorComponent = procedure(const Sender: TObject; const ACode: Integer; const AMessage: string) of object;
  TOnCancelationSuccessComponent = procedure(const Sender: TObject; const ACancelationReturn: IStoneDeeplinkCancelationReturnEntity) of object;
  TOnCancelationErrorComponent = procedure(const Sender: TObject; const AReason: string; const AResponseCode: string) of object;

implementation

end.
