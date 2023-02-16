unit Stone.Deeplink.Contract.Builder.Entity.CancelationReturn;

interface

uses
  Stone.Deeplink.Contract.Entity.CancelationReturn,
  Stone.Deeplink.Types;

type

  IStoneDeeplinkCancelationReturnEntityBuilder = interface
    ['{D661D192-AA14-44D9-8945-7E863AAD9B82}']
    function SetATK(const AATK: UInt64): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetCanceledAmount(const ACanceledAmount: TStoneDeeplinkAmount): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetPaymentType(const APaymentType: Integer): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetTransactionAmount(const ATransactionAmount: TStoneDeeplinkAmount): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetOrderId(const AOrderId: TStoneDeeplinkOrderId): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetAuthorizationCode(const AAuthorizationCode: UInt32): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetReason(const AReason: string): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetResponseCode(const AResponseCode: string): IStoneDeeplinkCancelationReturnEntityBuilder;
    function Build: IStoneDeeplinkCancelationReturnEntity;
  end;

implementation

end.
