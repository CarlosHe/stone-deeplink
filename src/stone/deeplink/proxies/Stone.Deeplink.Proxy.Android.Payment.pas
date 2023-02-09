unit Stone.Deeplink.Proxy.Android.Payment;

interface

{$IFDEF ANDROID}
uses
  Stone.Deeplink.Contract.Proxy.Payment,
  Stone.Deeplink.Contract.Entity.Payment;

type

  TStoneDeeplinkPaymentProxy = class(TInterfacedObject, IStoneDeeplinkPaymentProxy)
  strict private
    constructor Create;
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    procedure CallPayment(const APayment: IStoneDeeplinkPaymentEntity);
    class function New: IStoneDeeplinkPaymentProxy;
  end;
{$ENDIF}

implementation

{$IFDEF ANDROID}
uses
  System.SysUtils,
  Androidapi.Helpers,
  Androidapi.JNI.App,
  Stone.Deeplink.Adapter.Android.Payment;

{ TStoneDeeplinkPaymentProxy }

procedure TStoneDeeplinkPaymentProxy.CallPayment(const APayment: IStoneDeeplinkPaymentEntity);
begin
  TAndroidHelper.Activity.startActivity(TStoneDeeplinkPaymentAndroidAdapter.New(APayment).GetIntent);
end;

constructor TStoneDeeplinkPaymentProxy.Create;
begin

end;

class function TStoneDeeplinkPaymentProxy.New: IStoneDeeplinkPaymentProxy;
begin
  Result := Self.Create;
end;
{$ENDIF}

end.
