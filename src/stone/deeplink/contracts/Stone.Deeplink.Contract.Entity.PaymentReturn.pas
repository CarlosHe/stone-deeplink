unit Stone.Deeplink.Contract.Entity.PaymentReturn;

interface

uses
  Stone.Deeplink.Types,
  Stone.Deeplink.Enum.TransactionType;

type

  IStoneDeeplinkPaymentReturnEntity = interface
    ['{56E4A02A-BFD1-41A6-BCED-6F524B842C5E}']
    function GetAmount: TStoneDeeplinkAmount;
    procedure SetAmount(const AAmount: TStoneDeeplinkAmount);
    function GetCardholderName: string;
    procedure SetCardholderName(const ACardholderName: string);
    function GetITK: string;
    procedure SetITK(const AITK: string);
    function GetATK: UInt64;
    procedure SetATK(const AATK: UInt64);
    function GetAuthorizationDateTime: TDateTime;
    procedure SetAuthorizationDateTime(const AAuthorizationDateTime: TDateTime);
    function GetBrand: string;
    procedure SetBrand(const ABrand: string);
    function GetOrderId: TStoneDeeplinkOrderId;
    procedure SetOrderId(const AOrderId: TStoneDeeplinkOrderId);
    function GetAuthorizationCode: UInt32;
    procedure SetAuthorizationCode(const AAuthorizationCode: UInt32);
    function GetInstallmentCount: TStoneDeeplinkInstallmentCount;
    procedure SetInstallmentCount(const AInstallmentCount: TStoneDeeplinkInstallmentCount);
    function GetPAN: string;
    procedure SetPAN(const APAN: string);
    function GetType: TStoneDeeplinkTransactionType;
    procedure SetType(const AType: TStoneDeeplinkTransactionType);
    function GetEntryMode: string;
    procedure SetEntryMode(const AEntryMode: string);
    function GetAccountId: string;
    procedure SetAccountId(const AAccountId: string);
    function GetCustomerWalletProviderId: string;
    procedure SetCustomerWalletProviderId(const ACustomerWalletProviderId: string);
    function GetCode: string;
    procedure SetCode(const ACode: string);
  end;

implementation

end.
