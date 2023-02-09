unit Stone.Deeplink.Entity.Cancelation;

interface

uses
  Stone.Deeplink.Contract.Entity.Cancelation,
  Stone.Deeplink.Types,
  Stone.Deeplink.Enum.EditableAmountType;

type

  TStoneDeeplinkCancelationEntity = class(TInterfacedObject, IStoneDeeplinkCancelationEntity)
  strict private
    constructor Create;
  private
    { private declarations }
    FAmount: TStoneDeeplinkAmount;
    FATK: UInt64;
    FEditableAmount: TStoneDeeplinkEditableAmountType;
    FReturnScheme: string;
  protected
    { protected declarations }
  public
    { public declarations }
    function GetAmount: TStoneDeeplinkAmount;
    procedure SetAmount(const AAmount: TStoneDeeplinkAmount);
    function GetATK: UInt64;
    procedure SetATK(const AATK: UInt64);
    function GetEditableAmount: TStoneDeeplinkEditableAmountType;
    procedure SetEditableAmount(const AEditableAmount: TStoneDeeplinkEditableAmountType);
    function GetReturnScheme: string;
    procedure SetReturnScheme(const AReturnScheme: string);
    class function New: IStoneDeeplinkCancelationEntity;
  end;

implementation

{ TStoneDeeplinkCancelationEntity }

constructor TStoneDeeplinkCancelationEntity.Create;
begin

end;

function TStoneDeeplinkCancelationEntity.GetAmount: TStoneDeeplinkAmount;
begin
  Result := FAmount;
end;

function TStoneDeeplinkCancelationEntity.GetATK: UInt64;
begin
  Result := FATK;
end;

function TStoneDeeplinkCancelationEntity.GetEditableAmount: TStoneDeeplinkEditableAmountType;
begin
  Result := FEditableAmount;
end;

function TStoneDeeplinkCancelationEntity.GetReturnScheme: string;
begin
  Result := FReturnScheme;
end;

class function TStoneDeeplinkCancelationEntity.New: IStoneDeeplinkCancelationEntity;
begin
  Result := Self.Create;
end;

procedure TStoneDeeplinkCancelationEntity.SetAmount(const AAmount: TStoneDeeplinkAmount);
begin
  FAmount := AAmount;
end;

procedure TStoneDeeplinkCancelationEntity.SetATK(const AATK: UInt64);
begin
  FATK := AATK;
end;

procedure TStoneDeeplinkCancelationEntity.SetEditableAmount(const AEditableAmount: TStoneDeeplinkEditableAmountType);
begin
  FEditableAmount := AEditableAmount;
end;

procedure TStoneDeeplinkCancelationEntity.SetReturnScheme(const AReturnScheme: string);
begin
  FReturnScheme := AReturnScheme;
end;

end.
