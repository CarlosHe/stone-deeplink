unit Stone.Deeplink.Builder.Entity.Cancelation;

interface

uses
  Stone.Deeplink.Contract.Builder.Entity.Cancelation,
  Stone.Deeplink.Types,
  Stone.Deeplink.Enum.EditableAmountType,
  Stone.Deeplink.Contract.Entity.Cancelation;

type

  TStoneDeeplinkCancelationEntityBuilder = class(TInterfacedObject, IStoneDeeplinkCancelationEntityBuilder)
  strict private
    { strict private declarations }
    constructor Create;
  private
    { private declarations }
    FAmount: TStoneDeeplinkAmount;
    FATK: string;
    FEditableAmount: TStoneDeeplinkEditableAmountType;
    FReturnScheme: string;
  protected
    { protected declarations }
  public
    { public declarations }
    function SetAmount(const AAmount: TStoneDeeplinkAmount): IStoneDeeplinkCancelationEntityBuilder;
    function SetATK(const AATK: string): IStoneDeeplinkCancelationEntityBuilder;
    function SetEditableAmount(const AEditableAmount: TStoneDeeplinkEditableAmountType): IStoneDeeplinkCancelationEntityBuilder;
    function SetReturnScheme(const AReturnScheme: string): IStoneDeeplinkCancelationEntityBuilder;
    function Build: IStoneDeeplinkCancelationEntity;
    class function New: IStoneDeeplinkCancelationEntityBuilder;
  end;

implementation

uses
  Stone.Deeplink.Entity.Cancelation;

{ TStoneDeeplinkCancelationEntityBuilder }

function TStoneDeeplinkCancelationEntityBuilder.Build: IStoneDeeplinkCancelationEntity;
begin
  Result := TStoneDeeplinkCancelationEntity.New;
  Result.SetAmount(FAmount);
  Result.SetATK(FATK);
  Result.SetEditableAmount(FEditableAmount);
  Result.SetReturnScheme(FReturnScheme);
end;

constructor TStoneDeeplinkCancelationEntityBuilder.Create;
begin

end;

class function TStoneDeeplinkCancelationEntityBuilder.New: IStoneDeeplinkCancelationEntityBuilder;
begin
  Result := Self.Create;
end;

function TStoneDeeplinkCancelationEntityBuilder.SetAmount(const AAmount: TStoneDeeplinkAmount): IStoneDeeplinkCancelationEntityBuilder;
begin
  Result := Self;
  FAmount := AAmount;
end;

function TStoneDeeplinkCancelationEntityBuilder.SetATK(const AATK: string): IStoneDeeplinkCancelationEntityBuilder;
begin
  Result := Self;
  FATK := AATK;
end;

function TStoneDeeplinkCancelationEntityBuilder.SetEditableAmount(const AEditableAmount: TStoneDeeplinkEditableAmountType): IStoneDeeplinkCancelationEntityBuilder;
begin
  Result := Self;
  FEditableAmount := AEditableAmount;
end;

function TStoneDeeplinkCancelationEntityBuilder.SetReturnScheme(const AReturnScheme: string): IStoneDeeplinkCancelationEntityBuilder;
begin
  Result := Self;
  FReturnScheme := AReturnScheme;
end;

end.
