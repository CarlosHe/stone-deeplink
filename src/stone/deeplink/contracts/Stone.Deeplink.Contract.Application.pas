unit Stone.Deeplink.Contract.Application;

interface

uses
  Stone.Deeplink.Contract.Entity.Cancelation,
  Stone.Deeplink.Contract.Entity.PaymentReturn,
  Stone.Deeplink.Contract.Entity.Payment,
  Stone.Deeplink.Callbacks;

type

  IStoneDeeplinkApplication = interface
    procedure SetExecuteCallbacks(const AExecuteCallbacks: Boolean);
    function GetExecuteCallbacks: Boolean;
    procedure SetScheme(const AScheme: string);
    function GetScheme: string;
    procedure SetPaymentSuccess(const AOnPaymentSuccess: TOnPaymentSuccess);
    procedure SetPaymentError(const AOnPaymentError: TOnPaymentError);
    procedure SetCancelationSuccess(const AOnCancelationSuccess: TOnCancelationSuccess);
    procedure SetCancelationError(const AOnCancelationError: TOnCancelationError);
    procedure CallPayment(const APayment: IStoneDeeplinkPaymentEntity);
    procedure CallCancelation(const ACancelation: IStoneDeeplinkCancelationEntity);
    procedure CallCancelationForLastPaymentReturn;
  end;

implementation

end.
