unit Stone.Deeplink.Contract.Entity.Payment;

interface

uses
  Stone.Deeplink.Enum.EditableAmountType,
  Stone.Deeplink.Enum.InstallmentType,
  Stone.Deeplink.Enum.TransactionType,
  Stone.Deeplink.Types;

type

  IStoneDeeplinkPaymentEntity = interface
    ['{00C28437-9A4C-40C9-8ADA-01CC9657954D}']
    function GetAmount: TStoneDeeplinkAmount;
    procedure SetAmount(const AAmount: TStoneDeeplinkAmount);
    function GetTransactionType: TStoneDeeplinkTransactionType;
    procedure SetTransactionType(const ATransactionType: TStoneDeeplinkTransactionType);
    function GetInstallmentType: TStoneDeeplinkInstallmentType;
    procedure SetInstallmentType(const AInstallmentType: TStoneDeeplinkInstallmentType);
    function GetInstallmentCount: TStoneDeeplinkInstallmentCount;
    procedure SetInstallmentCount(const AInstallmentCount: TStoneDeeplinkInstallmentCount);
    function GetOrderId: TStoneDeeplinkOrderId;
    procedure SetOrderId(const AOrderId: TStoneDeeplinkOrderId);
    function GetEditableAmount: TStoneDeeplinkEditableAmountType;
    procedure SetEditableAmount(const AEditableAmount: TStoneDeeplinkEditableAmountType);
    function GetReturnScheme: string;
    procedure SetReturnScheme(const AReturnScheme: string);
  end;

implementation

end.
