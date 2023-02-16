unit Stone.Deeplink.Entity.CancelationReturn;

interface

uses
  Stone.Deeplink.Contract.Entity.CancelationReturn,
  Stone.Deeplink.Types;

type

  TStoneDeeplinkCancelationReturnEntity = class(TInterfacedObject, IStoneDeeplinkCancelationReturnEntity)
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
    function GetATK: UInt64;
    procedure SetATK(const AATK: UInt64);
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
    class function New: IStoneDeeplinkCancelationReturnEntity;
  end;

implementation

{ TStoneDeeplinkCancelationReturnEntity }

constructor TStoneDeeplinkCancelationReturnEntity.Create;
begin

end;

function TStoneDeeplinkCancelationReturnEntity.GetATK: UInt64;
begin
  Result := FATK;
end;

function TStoneDeeplinkCancelationReturnEntity.GetAuthorizationCode: UInt32;
begin
  Result := FAuthorizationCode;
end;

function TStoneDeeplinkCancelationReturnEntity.GetCanceledAmount: TStoneDeeplinkAmount;
begin
  Result := FCanceledAmount;
end;

function TStoneDeeplinkCancelationReturnEntity.GetOrderId: TStoneDeeplinkOrderId;
begin
  Result := FOrderId;
end;

function TStoneDeeplinkCancelationReturnEntity.GetPaymentType: Integer;
begin
  Result := FPaymentType;
end;

function TStoneDeeplinkCancelationReturnEntity.GetReason: string;
begin
  Result := FReason;
end;

function TStoneDeeplinkCancelationReturnEntity.GetResponseCode: string;
begin
  Result := FResponseCode;
end;

function TStoneDeeplinkCancelationReturnEntity.GetTransactionAmount: TStoneDeeplinkAmount;
begin
  Result := FTransactionAmount;
end;

class function TStoneDeeplinkCancelationReturnEntity.New: IStoneDeeplinkCancelationReturnEntity;
begin
  Result := Self.Create;
end;

procedure TStoneDeeplinkCancelationReturnEntity.SetATK(const AATK: UInt64);
begin
  FATK := AATK;
end;

procedure TStoneDeeplinkCancelationReturnEntity.SetAuthorizationCode(const AAuthorizationCode: UInt32);
begin
  FAuthorizationCode := AAuthorizationCode;
end;

procedure TStoneDeeplinkCancelationReturnEntity.SetCanceledAmount(const ACanceledAmount: TStoneDeeplinkAmount);
begin
  FCanceledAmount := ACanceledAmount;
end;

procedure TStoneDeeplinkCancelationReturnEntity.SetOrderId(const AOrderId: TStoneDeeplinkOrderId);
begin
  FOrderId := AOrderId;
end;

procedure TStoneDeeplinkCancelationReturnEntity.SetPaymentType(const APaymentType: Integer);
begin
  FPaymentType := APaymentType;
end;

procedure TStoneDeeplinkCancelationReturnEntity.SetReason(const AReason: string);
begin
  FReason := AReason;
end;

procedure TStoneDeeplinkCancelationReturnEntity.SetResponseCode(const AResponseCode: string);
begin
  FResponseCode := AResponseCode;
end;

procedure TStoneDeeplinkCancelationReturnEntity.SetTransactionAmount(const ATransactionAmount: TStoneDeeplinkAmount);
begin
  FTransactionAmount := ATransactionAmount;
end;

end.
