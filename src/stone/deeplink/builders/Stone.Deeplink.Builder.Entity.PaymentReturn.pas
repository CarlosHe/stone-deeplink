unit Stone.Deeplink.Builder.Entity.PaymentReturn;

interface

uses
  Stone.Deeplink.Types,
  Stone.Deeplink.Enum.TransactionType,
  Stone.Deeplink.Contract.Entity.PaymentReturn,
  Stone.Deeplink.Contract.Builder.Entity.PaymentReturn;

type

  TStoneDeeplinkPaymentReturnEntityBuilder = class(TInterfacedObject, IStoneDeeplinkPaymentReturnEntityBuilder)
  strict private
    constructor Create;
  private
    { private declarations }
    FAmount: TStoneDeeplinkAmount;
    FCardholderName: string;
    FITK: string;
    FATK: UInt64;
    FAuthorizationDateTime: TDateTime;
    FBrand: string;
    FOrderId: TStoneDeeplinkOrderId;
    FAuthorizationCode: UInt32;
    FInstallmentCount: TStoneDeeplinkInstallmentCount;
    FPAN: string;
    FType: TStoneDeeplinkTransactionType;
    FEntryMode: string;
    FAccountId: string;
    FCustomerWalletProviderId: string;
    FCode: string;
  protected
    { protected declarations }
  public
    function SetAmount(const AAmount: TStoneDeeplinkAmount): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetCardholderName(const ACardholderName: string): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetITK(const AITK: string): IStoneDeeplinkPaymentReturnEntityBuilder;
    function SetATK(const AATK: UInt64): IStoneDeeplinkPaymentReturnEntityBuilder;
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
    class function New: IStoneDeeplinkPaymentReturnEntityBuilder;
  end;

implementation

uses
  Stone.Deeplink.Entity.PaymentReturn;

{ TStoneDeeplinkPaymentReturnEntityBuilder }

function TStoneDeeplinkPaymentReturnEntityBuilder.Build: IStoneDeeplinkPaymentReturnEntity;
begin
  Result := TStoneDeeplinkPaymentReturnEntity.New;
  Result.SetAmount(FAmount);
  Result.SetCardholderName(FCardholderName);
  Result.SetITK(FITK);
  Result.SetATK(FATK);
  Result.SetAuthorizationDateTime(FAuthorizationDateTime);
  Result.SetBrand(FBrand);
  Result.SetOrderId(FOrderId);
  Result.SetAuthorizationCode(FAuthorizationCode);
  Result.SetInstallmentCount(FInstallmentCount);
  Result.SetPAN(FPAN);
  Result.SetType(FType);
  Result.SetEntryMode(FEntryMode);
  Result.SetAccountId(FAccountId);
  Result.SetCustomerWalletProviderId(FCustomerWalletProviderId);
  Result.SetCode(FCode);
end;

constructor TStoneDeeplinkPaymentReturnEntityBuilder.Create;
begin

end;

class function TStoneDeeplinkPaymentReturnEntityBuilder.New: IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self.Create;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetAccountId(const AAccountId: string): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FAccountId := AAccountId;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetAmount(const AAmount: TStoneDeeplinkAmount): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FAmount := AAmount;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetATK(const AATK: UInt64): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FATK := AATK;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetAuthorizationCode(const AAuthorizationCode: UInt32): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FAuthorizationCode := AAuthorizationCode;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetAuthorizationDateTime(const AAuthorizationDateTime: TDateTime): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FAuthorizationDateTime := AAuthorizationDateTime;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetBrand(const ABrand: string): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FBrand := ABrand;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetCardholderName(const ACardholderName: string): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FCardholderName := ACardholderName;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetCode(const ACode: string): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FCode := ACode;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetCustomerWalletProviderId(const ACustomerWalletProviderId: string): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FCustomerWalletProviderId := ACustomerWalletProviderId;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetEntryMode(const AEntryMode: string): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FEntryMode := AEntryMode;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetInstallmentCount(const AInstallmentCount: TStoneDeeplinkInstallmentCount): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FInstallmentCount := AInstallmentCount;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetITK(const AITK: string): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FITK := AITK;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetOrderId(const AOrderId: TStoneDeeplinkOrderId): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FOrderId := AOrderId;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetPAN(const APAN: string): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FPAN := APAN;
end;

function TStoneDeeplinkPaymentReturnEntityBuilder.SetType(const AType: TStoneDeeplinkTransactionType): IStoneDeeplinkPaymentReturnEntityBuilder;
begin
  Result := Self;
  FType := AType;
end;

end.
