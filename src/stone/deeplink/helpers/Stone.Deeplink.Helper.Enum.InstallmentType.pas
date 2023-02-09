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
    class operator Implicit(AInstallmentType: TStoneDeeplinkInstallmentType): string;
    class operator Explicit(AInstallmentType: TStoneDeeplinkInstallmentType): string;
    function ToString: string;
    function ToInteger: Integer;
  end;

implementation

uses
  System.TypInfo;

{ TStoneDeeplinkInstallmentTypeHelper }

class operator TStoneDeeplinkInstallmentTypeHelper.Explicit(AInstallmentType: TStoneDeeplinkInstallmentType): string;
begin
  Result := AInstallmentType.ToString;
end;

class operator TStoneDeeplinkInstallmentTypeHelper.Implicit(AInstallmentType: TStoneDeeplinkInstallmentType): string;
begin
  Result := AInstallmentType.ToString;
end;

function TStoneDeeplinkInstallmentTypeHelper.ToInteger: Integer;
begin
  Result := Integer(Self);
end;

function TStoneDeeplinkInstallmentTypeHelper.ToString: string;
begin
  Result := GetEnumName(TypeInfo(TStoneDeeplinkInstallmentType), Self.ToInteger);
end;

end.
