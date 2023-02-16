unit Stone.Deeplink.Builder.Entity.CancelationReturn;

interface

uses
  Stone.Deeplink.Contract.Builder.Entity.CancelationReturn,
  Stone.Deeplink.Contract.Entity.CancelationReturn,
  Stone.Deeplink.Types;

type

  TStoneDeeplinkCancelationReturnEntityBuilder = class(TInterfacedObject, IStoneDeeplinkCancelationReturnEntityBuilder)
  strict private
    { strict private declarations }
    constructor Create;
  private
    { private declarations }
    FATK: UInt64;
    FCanceledAmount: TStoneDeeplinkAmount;
    FPaymentType: Integer;
    FTransactionAmount: TStoneDeeplinkAmount;
    FOrderId: TStoneDeeplinkOrderId;
    FAuthorizationCode: UInt32;
    FReason: string;
    FResponseCode: string;
  protected
    { protected declarations }
  public
    { public declarations }
    function SetATK(const AATK: UInt64): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetCanceledAmount(const ACanceledAmount: TStoneDeeplinkAmount): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetPaymentType(const APaymentType: Integer): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetTransactionAmount(const ATransactionAmount: TStoneDeeplinkAmount): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetOrderId(const AOrderId: TStoneDeeplinkOrderId): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetAuthorizationCode(const AAuthorizationCode: UInt32): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetReason(const AReason: string): IStoneDeeplinkCancelationReturnEntityBuilder;
    function SetResponseCode(const AResponseCode: string): IStoneDeeplinkCancelationReturnEntityBuilder;
    function Build: IStoneDeeplinkCancelationReturnEntity;
    class function New: IStoneDeeplinkCancelationReturnEntityBuilder;
  end;

implementation

uses
  Stone.Deeplink.Entity.CancelationReturn;

{ TStoneDeeplinkCancelationReturnEntityBuilder }

function TStoneDeeplinkCancelationReturnEntityBuilder.Build: IStoneDeeplinkCancelationReturnEntity;
begin
  Result := TStoneDeeplinkCancelationReturnEntity.New;
  Result.SetATK(FATK);
  Result.SetCanceledAmount(FCanceledAmount);
  Result.SetPaymentType(FPaymentType);
  Result.SetTransactionAmount(FTransactionAmount);
  Result.SetOrderId(FOrderId);
  Result.SetAuthorizationCode(FAuthorizationCode);
  Result.SetReason(FReason);
  Result.SetResponseCode(FResponseCode);
end;

constructor TStoneDeeplinkCancelationReturnEntityBuilder.Create;
begin

end;

class function TStoneDeeplinkCancelationReturnEntityBuilder.New: IStoneDeeplinkCancelationReturnEntityBuilder;
begin
  Result := Self.Create;
end;

function TStoneDeeplinkCancelationReturnEntityBuilder.SetATK(const AATK: UInt64): IStoneDeeplinkCancelationReturnEntityBuilder;
begin
  Result := Self;
  FATK := AATK;
end;

function TStoneDeeplinkCancelationReturnEntityBuilder.SetAuthorizationCode(const AAuthorizationCode: UInt32): IStoneDeeplinkCancelationReturnEntityBuilder;
begin
  Result := Self;
  FAuthorizationCode := AAuthorizationCode;
end;

function TStoneDeeplinkCancelationReturnEntityBuilder.SetCanceledAmount(const ACanceledAmount: TStoneDeeplinkAmount): IStoneDeeplinkCancelationReturnEntityBuilder;
begin
  Result := Self;
  FCanceledAmount := ACanceledAmount
end;

function TStoneDeeplinkCancelationReturnEntityBuilder.SetOrderId(const AOrderId: TStoneDeeplinkOrderId): IStoneDeeplinkCancelationReturnEntityBuilder;
begin
  Result := Self;
  FOrderId := AOrderId;
end;

function TStoneDeeplinkCancelationReturnEntityBuilder.SetPaymentType(const APaymentType: Integer): IStoneDeeplinkCancelationReturnEntityBuilder;
begin
  Result := Self;
  FPaymentType := APaymentType;
end;

function TStoneDeeplinkCancelationReturnEntityBuilder.SetReason(const AReason: string): IStoneDeeplinkCancelationReturnEntityBuilder;
begin
  Result := Self;
  FReason := AReason;
end;

function TStoneDeeplinkCancelationReturnEntityBuilder.SetResponseCode(const AResponseCode: string): IStoneDeeplinkCancelationReturnEntityBuilder;
begin
  Result := Self;
  FResponseCode := AResponseCode;
end;

function TStoneDeeplinkCancelationReturnEntityBuilder.SetTransactionAmount(const ATransactionAmount: TStoneDeeplinkAmount): IStoneDeeplinkCancelationReturnEntityBuilder;
begin
  Result := Self;
  FTransactionAmount := ATransactionAmount;
end;

end.
