unit Stone.Deeplink.Contract.Adapter.Payment;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNI.GraphicsContentViewText;

type

  IStoneDeeplinkPaymentAdapter = interface
    ['{4F9049E9-4099-4FA1-A070-3D294B3390DF}']
    function GetIntent: JIntent;
  end;
{$ENDIF}

implementation

end.
