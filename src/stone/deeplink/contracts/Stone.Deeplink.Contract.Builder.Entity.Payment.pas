unit Stone.Deeplink.Contract.Builder.Entity.Payment;

interface

uses
  Stone.Deeplink.Enum.EditableAmountType,
  Stone.Deeplink.Enum.InstallmentType,
  Stone.Deeplink.Enum.TransactionType,
  Stone.Deeplink.Types,
  Stone.Deeplink.Contract.Entity.Payment;

type

  IStoneDeeplinkPaymentEntityBuilder = interface
    ['{4803954D-BFC0-4BA9-BB77-432C8D73EC03}']
    function SetAmount(const AAmount: TStoneDeeplinkAmount): IStoneDeeplinkPaymentEntityBuilder;
    function SetTransactionType(const ATransactionType: TStoneDeeplinkTransactionType): IStoneDeeplinkPaymentEntityBuilder;
    function SetInstallmentType(const AInstallmentType: TStoneDeeplinkInstallmentType): IStoneDeeplinkPaymentEntityBuilder;
    function SetInstallmentCount(const AInstallmentCount: TStoneDeeplinkInstallmentCount): IStoneDeeplinkPaymentEntityBuilder;
    function SetOrderId(const AOrderId: TStoneDeeplinkOrderId): IStoneDeeplinkPaymentEntityBuilder;
    function SetEditableAmount(const AEditableAmount: TStoneDeeplinkEditableAmountType): IStoneDeeplinkPaymentEntityBuilder;
    function SetReturnScheme(const AReturnScheme: string): IStoneDeeplinkPaymentEntityBuilder;
    function Build: IStoneDeeplinkPaymentEntity;
  end;

implementation

end.
