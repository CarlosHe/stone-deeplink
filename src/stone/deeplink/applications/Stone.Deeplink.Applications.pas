unit Stone.Deeplink.Applications;

interface

{$IFDEF ANDROID}
uses
  Stone.Deeplink.Android.Application;

type

  TStoneDeeplinkAndroidApplication = Stone.Deeplink.Android.Application.TStoneDeeplinkAndroidApplication;
{$ENDIF}

implementation


end.
