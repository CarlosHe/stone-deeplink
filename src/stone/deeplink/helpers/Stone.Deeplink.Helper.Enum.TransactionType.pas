unit Stone.Deeplink.Helper.Enum.TransactionType;

interface

uses
  System.SysUtils,
  Stone.Deeplink.Enum.TransactionType;

type

  TStoneDeeplinkTransactionTypeHelper = record helper for TStoneDeeplinkTransactionType
  private
    { private declarations }
  protected
    { protected declarations }

  public
    { public declarations }
    function ToString: string; inline;
    function ToInteger: Integer; inline;
    class function FromPortuguese(const ATransactionType: string): TStoneDeeplinkTransactionType; inline; static;
  end;

implementation

uses
  System.StrUtils,
  System.TypInfo;

{ TStoneDeeplinkTransactionTypeHelper }

class function TStoneDeeplinkTransactionTypeHelper.FromPortuguese(const ATransactionType: string): TStoneDeeplinkTransactionType;
begin
  Result := TStoneDeeplinkTransactionType(IndexStr(ATransactionType.ToLower, ['débito', 'crédito', 'vale', 'pagamento instantâneo', 'pix']));
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
