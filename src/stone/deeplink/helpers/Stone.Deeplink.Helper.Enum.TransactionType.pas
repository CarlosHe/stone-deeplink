unit Stone.Deeplink.Helper.Enum.TransactionType;

interface

uses
  Stone.Deeplink.Enum.TransactionType;

type

  TStoneDeeplinkTransactionTypeHelper = record helper for TStoneDeeplinkTransactionType
  private
    { private declarations }
  protected
    { protected declarations }

  public
    { public declarations }
    class operator Implicit(ATransactionType: TStoneDeeplinkTransactionType): string;
    class operator Explicit(ATransactionType: TStoneDeeplinkTransactionType): string;
    function ToString: string;
    function ToInteger: Integer;
    class function FromPortuguese(const ATransactionType: string): TStoneDeeplinkTransactionType; static;
  end;

implementation

uses
  System.SysUtils,
  System.StrUtils,
  System.TypInfo;

{ TStoneDeeplinkTransactionTypeHelper }

class operator TStoneDeeplinkTransactionTypeHelper.Explicit(ATransactionType: TStoneDeeplinkTransactionType): string;
begin
  Result := ATransactionType.ToString;
end;

class function TStoneDeeplinkTransactionTypeHelper.FromPortuguese(const ATransactionType: string): TStoneDeeplinkTransactionType;
const
  TransationTypePt: array [0 .. 4] of string = ('débito', 'crédito', 'vale', 'pagamento instantâneo', 'pix');
begin
  Result := TStoneDeeplinkTransactionType(IndexStr(ATransactionType.ToLower, TransationTypePt));
end;

class operator TStoneDeeplinkTransactionTypeHelper.Implicit(ATransactionType: TStoneDeeplinkTransactionType): string;
begin
  Result := ATransactionType.ToString;
end;

function TStoneDeeplinkTransactionTypeHelper.ToInteger: Integer;
begin
  Result := Integer(Self);
end;

function TStoneDeeplinkTransactionTypeHelper.ToString: string;
begin
  Result := GetEnumName(TypeInfo(TStoneDeeplinkTransactionType), Self.ToInteger);
end;

end.
