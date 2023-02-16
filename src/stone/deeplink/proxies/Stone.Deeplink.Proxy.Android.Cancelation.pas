unit Stone.Deeplink.Proxy.Android.Cancelation;

interface

{$IFDEF ANDROID}
uses
  Stone.Deeplink.Contract.Proxy.Cancelation,
  Stone.Deeplink.Contract.Entity.Cancelation;

type

  TStoneDeeplinkCancelationProxy = class(TInterfacedObject, IStoneDeeplinkCancelationProxy)
  strict private
    { strict private declarations }
    constructor Create;
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    procedure CallCancelation(const ACancelation: IStoneDeeplinkCancelationEntity);
    class function New: IStoneDeeplinkCancelationProxy;
  end;
{$ENDIF}

implementation

{$IFDEF ANDROID}
uses
  System.SysUtils,
  Androidapi.Helpers,
  Androidapi.JNI.App,
  Stone.Deeplink.Adapter.Android.Cancelation;

{ TStoneDeeplinkPaymentProxy }

procedure TStoneDeeplinkCancelationProxy.CallCancelation(const ACancelation: IStoneDeeplinkCancelationEntity);
begin
  TAndroidHelper.Activity.startActivity(TStoneDeeplinkCancelationAndroidAdapter.New(ACancelation).GetIntent);
end;

constructor TStoneDeeplinkCancelationProxy.Create;
begin

end;

class function TStoneDeeplinkCancelationProxy.New: IStoneDeeplinkCancelationProxy;
begin
  Result := Self.Create;
end;
{$ENDIF}

end.
