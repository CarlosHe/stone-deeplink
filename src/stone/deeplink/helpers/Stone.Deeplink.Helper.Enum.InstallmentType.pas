unit Stone.Deeplink.Helper.Enum.InstallmentType;

interface

uses
  Stone.Deeplink.Enum.InstallmentType;

type

  TStoneDeeplinkInstallmentTypeHelper = record helper for TStoneDeeplinkInstallmentType
  private
    { private declarations }
  protected
    { protected declarations }

  public
    { public declarations }
    function ToString: string; inline;
    function ToInteger: Integer; inline;
  end;

implementation

uses
  System.TypInfo;

{ TStoneDeeplinkInstallmentTypeHelper }

function TStoneDeeplinkInstallmentTypeHelper.ToInteger: Integer;
begin
  Result := Integer(Self);
end;

function TStoneDeeplinkInstallmentTypeHelper.ToString: string;
begin
  Result := GetEnumName(TypeInfo(TStoneDeeplinkInstallmentType), Self.ToInteger);
end;

end.
