unit Stone.Deeplink.Contract.Adapter.CancelationReturn;

interface

{$IFDEF ANDROID}
uses
  Stone.Deeplink.Contract.Entity.CancelationReturn;

type

  IStoneDeeplinkCancelationReturnAdapter = interface
    ['{CCFE1BB5-BFC9-4E77-9570-9F9962A496D5}']
    function GetCancelationReturn: IStoneDeeplinkCancelationReturnEntity;
  end;
{$ENDIF}

implementation

end.
