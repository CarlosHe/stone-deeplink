unit Stone.Deeplink.Builder.Entity.Payment;

interface

uses
  Stone.Deeplink.Contract.Builder.Entity.Payment,
  Stone.Deeplink.Contract.Entity.Payment,
  Stone.Deeplink.Enum.EditableAmountType,
  Stone.Deeplink.Enum.InstallmentType,
  Stone.Deeplink.Enum.TransactionType,
  Stone.Deeplink.Types;

type

  TStoneDeeplinkPaymentEntityBuilder = class(TInterfacedObject, IStoneDeeplinkPaymentEntityBuilder)
  strict private
    { strict private declarations }
    constructor Create;
  private
    { private declarations }
    FAmount: TStoneDeeplinkAmount;
    FTransactionType: TStoneDeeplinkTransactionType;
    FInstallmentType: TStoneDeeplinkInstallmentType;
    FInstallmentCount: TStoneDeeplinkInstallmentCount;
    FOrderId: TStoneDeeplinkOrderId;
    FEditableAmount: TStoneDeeplinkEditableAmountType;
    FReturnScheme: string;
  protected
    { protected declarations }
  public
    { public declarations }
    function SetAmount(const AAmount: TStoneDeeplinkAmount): IStoneDeeplinkPaymentEntityBuilder;
    function SetTransactionType(const ATransactionType: TStoneDeeplinkTransactionType): IStoneDeeplinkPaymentEntityBuilder;
    function SetInstallmentType(const AInstallmentType: TStoneDeeplinkInstallmentType): IStoneDeeplinkPaymentEntityBuilder;
    function SetInstallmentCount(const AInstallmentCount: TStoneDeeplinkInstallmentCount): IStoneDeeplinkPaymentEntityBuilder;
    function SetOrderId(const AOrderId: TStoneDeeplinkOrderId): IStoneDeeplinkPaymentEntityBuilder;
    function SetEditableAmount(const AEditableAmount: TStoneDeeplinkEditableAmountType): IStoneDeeplinkPaymentEntityBuilder;
    function SetReturnScheme(const AReturnScheme: string): IStoneDeeplinkPaymentEntityBuilder;
    function Build: IStoneDeeplinkPaymentEntity;
    class function New: IStoneDeeplinkPaymentEntityBuilder;
  end;

implementation

uses
  Stone.Deeplink.Entity.Payment;

{ TStoneDeeplinkPaymentEntityBuilder }

function TStoneDeeplinkPaymentEntityBuilder.Build: IStoneDeeplinkPaymentEntity;
begin
  Result := TStoneDeeplinkPaymentEntity.New;
  Result.SetAmount(FAmount);
  Result.SetTransactionType(FTransactionType);
  Result.SetInstallmentType(FInstallmentType);
  Result.SetInstallmentCount(FInstallmentCount);
  Result.SetOrderId(FOrderId);
  Result.SetEditableAmount(FEditableAmount);
  REsult.SetReturnScheme(FReturnScheme);
end;

constructor TStoneDeeplinkPaymentEntityBuilder.Create;
begin
  FEditableAmount := TStoneDeeplinkEditableAmountType.Uneditable;
  FInstallmentType :=  TStoneDeeplinkInstallmentType.None;
  FInstallmentCount := 2;
end;

class function TStoneDeeplinkPaymentEntityBuilder.New: IStoneDeeplinkPaymentEntityBuilder;
begin
  Result := Self.Create;
end;

function TStoneDeeplinkPaymentEntityBuilder.SetAmount(const AAmount: TStoneDeeplinkAmount): IStoneDeeplinkPaymentEntityBuilder;
begin
  Result := Self;
  FAmount := AAmount;
end;

function TStoneDeeplinkPaymentEntityBuilder.SetEditableAmount(const AEditableAmount: TStoneDeeplinkEditableAmountType): IStoneDeeplinkPaymentEntityBuilder;
begin
  Result := Self;
  FEditableAmount := AEditableAmount;
end;

function TStoneDeeplinkPaymentEntityBuilder.SetInstallmentCount(const AInstallmentCount: TStoneDeeplinkInstallmentCount): IStoneDeeplinkPaymentEntityBuilder;
begin
  Result := Self;
  FInstallmentCount := AInstallmentCount;
end;

function TStoneDeeplinkPaymentEntityBuilder.SetInstallmentType(const AInstallmentType: TStoneDeeplinkInstallmentType): IStoneDeeplinkPaymentEntityBuilder;
begin
  Result := Self;
  FInstallmentType := AInstallmentType;
end;

function TStoneDeeplinkPaymentEntityBuilder.SetOrderId(const AOrderId: TStoneDeeplinkOrderId): IStoneDeeplinkPaymentEntityBuilder;
begin
  Result := Self;
  FOrderId := AOrderId;
end;

function TStoneDeeplinkPaymentEntityBuilder.SetReturnScheme(const AReturnScheme: string): IStoneDeeplinkPaymentEntityBuilder;
begin
  Result := Self;
  FReturnScheme := AReturnScheme;
end;

function TStoneDeeplinkPaymentEntityBuilder.SetTransactionType(const ATransactionType: TStoneDeeplinkTransactionType): IStoneDeeplinkPaymentEntityBuilder;
begin
  Result := Self;
  FTransactionType := ATransactionType;
end;

end.
