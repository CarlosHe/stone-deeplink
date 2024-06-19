unit Stone.Deeplink.Adapter.Android.Cancelation;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNI.GraphicsContentViewText,
  Stone.Deeplink.Contract.Adapter.Cancelation,
  Stone.Deeplink.Contract.Entity.Cancelation;

type

  TStoneDeeplinkCancelationAndroidAdapter = class(TInterfacedObject, IStoneDeeplinkCancelationAdapter)
  strict private
    { strict private declarations }
    constructor Create(const ACancelation: IStoneDeeplinkCancelationEntity);
  private
    { private declarations }
    FCancelation: IStoneDeeplinkCancelationEntity;
  protected
    { protected declarations }
  public
    { public declarations }
    function GetIntent: JIntent;
    class function New(const ACancelation: IStoneDeeplinkCancelationEntity): IStoneDeeplinkCancelationAdapter;
  end;
{$ENDIF}

implementation

{$IFDEF ANDROID}
uses
  Androidapi.Helpers,
  Androidapi.JNI.Net,
  Androidapi.JNI.JavaTypes,
  System.TypInfo,
  System.SysUtils;

{ TStoneDeeplinkCancelationAndroidAdapter }

constructor TStoneDeeplinkCancelationAndroidAdapter.Create(const ACancelation: IStoneDeeplinkCancelationEntity);
begin
  FCancelation := ACancelation;
end;

function TStoneDeeplinkCancelationAndroidAdapter.GetIntent: JIntent;
var
  LURI: JUri_Builder;
begin
  LURI := TJUri_Builder.JavaClass.init
    .authority(StringToJString('cancel'))
    .scheme(StringToJString('cancel-app'))
    .appendQueryParameter(StringToJString('returnscheme'), StringToJString(FCancelation.GetReturnScheme))
    .appendQueryParameter(StringToJString('atk'), StringToJString(FCancelation.GetAtk))
    .appendQueryParameter(StringToJString('amount'), StringToJString(UInt64(FCancelation.GetAmount).ToString))
    .appendQueryParameter(StringToJString('editable_amount'), StringToJString(Integer(FCancelation.GetEditableAmount).ToString));

  Result := TJIntent.JavaClass.init(TJIntent.JavaClass.ACTION_VIEW)
    .addFlags(TJIntent.JavaClass.FLAG_ACTIVITY_NEW_TASK)
    .setData(LURI.build);
end;

class function TStoneDeeplinkCancelationAndroidAdapter.New(const ACancelation: IStoneDeeplinkCancelationEntity): IStoneDeeplinkCancelationAdapter;
begin
  Result := Self.Create(ACancelation);
end;
{$ENDIF}

end.
