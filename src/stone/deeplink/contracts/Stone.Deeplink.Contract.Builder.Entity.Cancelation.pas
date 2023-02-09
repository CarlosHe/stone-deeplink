unit Stone.Deeplink.Contract.Builder.Entity.Cancelation;

interface

uses
  Stone.Deeplink.Types,
  Stone.Deeplink.Enum.EditableAmountType,
  Stone.Deeplink.Contract.Entity.Cancelation;

type

  IStoneDeeplinkCancelationEntityBuilder = interface
    ['{D1B193F4-232B-4F24-BAD0-9C03983D70C4}']
    function SetAmount(const AAmount: TStoneDeeplinkAmount): IStoneDeeplinkCancelationEntityBuilder;
    function SetATK(const AATK: UInt64): IStoneDeeplinkCancelationEntityBuilder;
    function SetEditableAmount(const AEditableAmount: TStoneDeeplinkEditableAmountType): IStoneDeeplinkCancelationEntityBuilder;
    function SetReturnScheme(const AReturnScheme: string): IStoneDeeplinkCancelationEntityBuilder;
    function Build: IStoneDeeplinkCancelationEntity;
  end;

implementation

end.
