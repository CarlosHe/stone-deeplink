unit Stone.Deeplink.Entity.Payment;

interface

uses
  Stone.Deeplink.Contract.Entity.Payment,
  Stone.Deeplink.Enum.EditableAmountType,
  Stone.Deeplink.Enum.InstallmentType,
  Stone.Deeplink.Enum.TransactionType,
  Stone.Deeplink.Types;

type

  TStoneDeeplinkPaymentEntity = class(TInterfacedObject, IStoneDeeplinkPaymentEntity)
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
    class function New: IStoneDeeplinkPaymentEntity;
  end;

implementation

{ TStoneDeeplinkPaymentEntity }

constructor TStoneDeeplinkPaymentEntity.Create;
begin

end;

function TStoneDeeplinkPaymentEntity.GetAmount: TStoneDeeplinkAmount;
begin
  Result := FAmount;
end;

function TStoneDeeplinkPaymentEntity.GetEditableAmount: TStoneDeeplinkEditableAmountType;
begin
  Result := FEditableAmount;
end;

function TStoneDeeplinkPaymentEntity.GetInstallmentCount: TStoneDeeplinkInstallmentCount;
begin
  Result := FInstallmentCount;
end;

function TStoneDeeplinkPaymentEntity.GetInstallmentType: TStoneDeeplinkInstallmentType;
begin
  Result := FInstallmentType;
end;

function TStoneDeeplinkPaymentEntity.GetOrderId: TStoneDeeplinkOrderId;
begin
  Result := FOrderId;
end;

function TStoneDeeplinkPaymentEntity.GetReturnScheme: string;
begin
  Result := FReturnScheme;
end;

function TStoneDeeplinkPaymentEntity.GetTransactionType: TStoneDeeplinkTransactionType;
begin
  Result := FTransactionType;
end;

class function TStoneDeeplinkPaymentEntity.New: IStoneDeeplinkPaymentEntity;
begin
  Result := Self.Create;
end;

procedure TStoneDeeplinkPaymentEntity.SetAmount(const AAmount: TStoneDeeplinkAmount);
begin
  FAmount := AAmount;
end;

procedure TStoneDeeplinkPaymentEntity.SetEditableAmount(const AEditableAmount: TStoneDeeplinkEditableAmountType);
begin
  FEditableAmount := AEditableAmount;
end;

procedure TStoneDeeplinkPaymentEntity.SetInstallmentCount(const AInstallmentCount: TStoneDeeplinkInstallmentCount);
begin
  FInstallmentCount := AInstallmentCount;
end;

procedure TStoneDeeplinkPaymentEntity.SetInstallmentType(const AInstallmentType: TStoneDeeplinkInstallmentType);
begin
  FInstallmentType := AInstallmentType;
end;

procedure TStoneDeeplinkPaymentEntity.SetOrderId(const AOrderId: TStoneDeeplinkOrderId);
begin
  FOrderId := AOrderId;
end;

procedure TStoneDeeplinkPaymentEntity.SetReturnScheme(const AReturnScheme: string);
begin
  FReturnScheme := AReturnScheme;
end;

procedure TStoneDeeplinkPaymentEntity.SetTransactionType(const ATransactionType: TStoneDeeplinkTransactionType);
begin
  FTransactionType := ATransactionType;
end;

end.
