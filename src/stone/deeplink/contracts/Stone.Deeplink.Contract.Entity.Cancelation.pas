unit Stone.Deeplink.Contract.Entity.Cancelation;

interface

uses
  Stone.Deeplink.Types,
  Stone.Deeplink.Enum.EditableAmountType;

type

  IStoneDeeplinkCancelationEntity = interface
    ['{00C28437-9A4C-40C9-8ADA-01CC9657954D}']
    function GetAmount: TStoneDeeplinkAmount;
    procedure SetAmount(const AAmount: TStoneDeeplinkAmount);
    function GetATK: string;
    procedure SetATK(const AATK: string);
    function GetEditableAmount: TStoneDeeplinkEditableAmountType;
    procedure SetEditableAmount(const AEditableAmount: TStoneDeeplinkEditableAmountType);
    function GetReturnScheme: string;
    procedure SetReturnScheme(const AReturnScheme: string);
  end;

implementation

end.
