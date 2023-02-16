unit Stone.Deeplink.Entity.PaymentReturn;

interface

uses
  Stone.Deeplink.Types,
  Stone.Deeplink.Enum.TransactionType,
  Stone.Deeplink.Contract.Entity.PaymentReturn;

type

  TStoneDeeplinkPaymentReturnEntity = class(TInterfacedObject, IStoneDeeplinkPaymentReturnEntity)
  strict private
    { strict private declarations }
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
    { public declarations }
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
    class function New: IStoneDeeplinkPaymentReturnEntity;
  end;

implementation

{ TStoneDeeplinkPaymentReturnEntity }

constructor TStoneDeeplinkPaymentReturnEntity.Create;
begin

end;

function TStoneDeeplinkPaymentReturnEntity.GetAccountId: string;
begin
  Result := FAccountId;
end;

function TStoneDeeplinkPaymentReturnEntity.GetAmount: TStoneDeeplinkAmount;
begin
  Result := FAmount;
end;

function TStoneDeeplinkPaymentReturnEntity.GetATK: UInt64;
begin
  Result := FATK;
end;

function TStoneDeeplinkPaymentReturnEntity.GetAuthorizationCode: UInt32;
begin
  Result := FAuthorizationCode;
end;

function TStoneDeeplinkPaymentReturnEntity.GetAuthorizationDateTime: TDateTime;
begin
  Result := FAuthorizationDateTime;
end;

function TStoneDeeplinkPaymentReturnEntity.GetBrand: string;
begin
  Result := FBrand;
end;

function TStoneDeeplinkPaymentReturnEntity.GetCardholderName: string;
begin
  Result := FCardholderName;
end;

function TStoneDeeplinkPaymentReturnEntity.GetCode: string;
begin
  Result := GetCode;
end;

function TStoneDeeplinkPaymentReturnEntity.GetCustomerWalletProviderId: string;
begin
  Result := FCustomerWalletProviderId;
end;

function TStoneDeeplinkPaymentReturnEntity.GetEntryMode: string;
begin
  Result := FEntryMode;
end;

function TStoneDeeplinkPaymentReturnEntity.GetInstallmentCount: TStoneDeeplinkInstallmentCount;
begin
  Result := FInstallmentCount;
end;

function TStoneDeeplinkPaymentReturnEntity.GetITK: string;
begin
  Result := FITK;
end;

function TStoneDeeplinkPaymentReturnEntity.GetOrderId: TStoneDeeplinkOrderId;
begin
  Result := FOrderId;
end;

function TStoneDeeplinkPaymentReturnEntity.GetPAN: string;
begin
  Result := FPAN;
end;

function TStoneDeeplinkPaymentReturnEntity.GetType: TStoneDeeplinkTransactionType;
begin
  Result := FType;
end;

class function TStoneDeeplinkPaymentReturnEntity.New: IStoneDeeplinkPaymentReturnEntity;
begin
  Result := Self.Create;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetAccountId(const AAccountId: string);
begin
  FAccountId := AAccountId;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetAmount(const AAmount: TStoneDeeplinkAmount);
begin
  FAmount := AAmount;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetATK(const AATK: UInt64);
begin
  FATK := AATK;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetAuthorizationCode(const AAuthorizationCode: UInt32);
begin
  FAuthorizationCode := AAuthorizationCode;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetAuthorizationDateTime(const AAuthorizationDateTime: TDateTime);
begin
  FAuthorizationDateTime := AAuthorizationDateTime;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetBrand(const ABrand: string);
begin
  FBrand := ABrand;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetCardholderName(const ACardholderName: string);
begin
  FCardholderName := ACardholderName;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetCode(const ACode: string);
begin
  FCode := ACode;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetCustomerWalletProviderId(const ACustomerWalletProviderId: string);
begin
  FCustomerWalletProviderId := ACustomerWalletProviderId;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetEntryMode(const AEntryMode: string);
begin
  FEntryMode := AEntryMode;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetInstallmentCount(const AInstallmentCount: TStoneDeeplinkInstallmentCount);
begin
  FInstallmentCount := AInstallmentCount;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetITK(const AITK: string);
begin
  FITK := AITK;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetOrderId(const AOrderId: TStoneDeeplinkOrderId);
begin
  FOrderId := AOrderId;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetPAN(const APAN: string);
begin
  FPAN := APAN;
end;

procedure TStoneDeeplinkPaymentReturnEntity.SetType(const AType: TStoneDeeplinkTransactionType);
begin
  FType := AType;
end;

end.
