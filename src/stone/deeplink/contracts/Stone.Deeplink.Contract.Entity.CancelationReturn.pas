unit Stone.Deeplink.Contract.Entity.CancelationReturn;

interface

uses
  Stone.Deeplink.Types;

type

  IStoneDeeplinkCancelationReturnEntity = interface
    ['{BE1E3F41-3630-40EF-A08F-256B5430398E}']
    function GetATK: string;
    procedure SetATK(const AATK: string);
    function GetCanceledAmount: TStoneDeeplinkAmount;
    procedure SetCanceledAmount(const ACanceledAmount: TStoneDeeplinkAmount);
    function GetPaymentType: Integer;
    procedure SetPaymentType(const APaymentType: Integer);
    function GetTransactionAmount: TStoneDeeplinkAmount;
    procedure SetTransactionAmount(const ATransactionAmount: TStoneDeeplinkAmount);
    function GetOrderId: TStoneDeeplinkOrderId;
    procedure SetOrderId(const AOrderId: TStoneDeeplinkOrderId);
    function GetAuthorizationCode: UInt32;
    procedure SetAuthorizationCode(const AAuthorizationCode: UInt32);
    function GetReason: string;
    procedure SetReason(const AReason: string);
    function GetResponseCode: string;
    procedure SetResponseCode(const AResponseCode: string);
  end;

implementation

end.
