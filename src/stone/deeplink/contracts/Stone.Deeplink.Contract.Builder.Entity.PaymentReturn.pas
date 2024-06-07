unit Stone.Deeplink.Contract.Builder.Entity.PaymentReturn;

interface

uses
  Stone.Deeplink.Types,
  Stone.Deeplink.Enum.TransactionType,
  Stone.Deeplink.Contract.Entity.PaymentReturn;

type

  IStoneDeeplinkPaymentReturnEntityBuilder = interface
    ['{5F3EED44-C2BC-442F-874E-ED223C7D4170}']
    function SetAmount(const AAmount: TStoneDeeplinkAmount): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetCardholderName(const ACardholderName: string): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetITK(const AITK: string): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetATK(const AATK: string): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetAuthorizationDateTime(const AAuthorizationDateTime: TDateTime): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetBrand(const ABrand: string): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetOrderId(const AOrderId: TStoneDeeplinkOrderId): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetAuthorizationCode(const AAuthorizationCode: UInt32): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetInstallmentCount(const AInstallmentCount: TStoneDeeplinkInstallmentCount): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetPAN(const APAN: string): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetType(const AType: TStoneDeeplinkTransactionType): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetEntryMode(const AEntryMode: string): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetAccountId(const AAccountId: string): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetCustomerWalletProviderId(const ACustomerWalletProviderId: string): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetCode(const ACode: string): IStoneDeeplinkPaymentReturnEntityBuilder;
    function Build: IStoneDeeplinkPaymentReturnEntity;
  end;

implementation

end.
