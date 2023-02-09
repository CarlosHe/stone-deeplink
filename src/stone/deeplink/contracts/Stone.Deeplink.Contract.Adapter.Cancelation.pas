unit Stone.Deeplink.Contract.Adapter.Cancelation;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNI.GraphicsContentViewText;

type

  IStoneDeeplinkCancelationAdapter = interface
    ['{2D9FD156-33C1-4A03-AFF4-FFF4CAB12A17}']
    function GetIntent: JIntent;
  end;
{$ENDIF}

implementation

end.
