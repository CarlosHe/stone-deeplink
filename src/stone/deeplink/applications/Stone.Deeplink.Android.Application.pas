unit Stone.Deeplink.Android.Application;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNI.GraphicsContentViewText,
  System.Messaging,
  FMX.Platform,
  Stone.Deeplink.Contract.Application,
  Stone.Deeplink.Contract.Entity.Cancelation,
  Stone.Deeplink.Contract.Entity.Payment,
  Stone.Deeplink.Contract.Entity.CancelationReturn,
  Stone.Deeplink.Contract.Entity.PaymentReturn,
  Stone.Deeplink.Contract.Proxy.Cancelation,
  Stone.Deeplink.Contract.Proxy.Payment,
  Stone.Deeplink.Callbacks;

type

  TStoneDeeplinkAndroidApplication = class(TInterfacedObject, IStoneDeeplinkApplication)
  strict private
    { strict private declarations }
    constructor Create(const AScheme: string);
  private
    { private declarations }
    FOnPaymentSuccess: TOnPaymentSuccess;
    FOnPaymentError: TOnPaymentError;
    FOnCancelationSuccess: TOnCancelationSuccess;
    FOnCancelationError: TOnCancelationError;
    FExecuteCallbacks: Boolean;
    FScheme: string;
    FStoneDeeplinkPaymentProxy: IStoneDeeplinkPaymentProxy;
    FStoneDeeplinkCancelationProxy: IStoneDeeplinkCancelationProxy;
    FLastPaymentReturn: IStoneDeeplinkPaymentReturnEntity;
  protected
    { protected declarations }
    function HandleAppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
    procedure HandleActivityMessage(const Sender: TObject; const M: TMessage);
    function HandleIntentAction(const AIntent: JIntent): Boolean;
    procedure DoPaymentSuccess(const APaymentReturn: IStoneDeeplinkPaymentReturnEntity);
    procedure DoPaymentError(const ACode: Integer; const AMessage: string);
    procedure DoCancelationSuccess(const ACancelationReturn: IStoneDeeplinkCancelationReturnEntity);
    procedure DoCancelationError(const AReason: string; const AResponseCode: string);
  public
    { public declarations }
    procedure SetExecuteCallbacks(const AExecuteCallbacks: Boolean);
    function GetExecuteCallbacks: Boolean;
    procedure SetScheme(const AScheme: string);
    function GetScheme: string;
    procedure SetPaymentSuccess(const AOnPaymentSuccess: TOnPaymentSuccess);
    procedure SetPaymentError(const AOnPaymentError: TOnPaymentError);
    procedure SetCancelationSuccess(const AOnCancelationSuccess: TOnCancelationSuccess);
    procedure SetCancelationError(const AOnCancelationError: TOnCancelationError);
    procedure CallPayment(const APayment: IStoneDeeplinkPaymentEntity);
    procedure CallCancelation(const ACancelation: IStoneDeeplinkCancelationEntity);
    procedure CallCancelationForLastPaymentReturn;
    class function New(const AScheme: string): IStoneDeeplinkApplication;
  end;
{$ENDIF}

implementation

{$IFDEF ANDROID}
uses
  Androidapi.Helpers,
  Androidapi.JNI.App,
  Androidapi.JNI.JavaTypes,
  FMX.Platform.Android,
  System.SysUtils,
  Stone.Deeplink.Proxy.Android.Cancelation,
  Stone.Deeplink.Proxy.Android.Payment,
  Stone.Deeplink.Adapter.Android.CancelationReturn,
  Stone.Deeplink.Adapter.Android.PaymentReturn,
  Stone.Deeplink.Builder.Entity.Cancelation,
  Stone.Deeplink.Enum.EditableAmountType;

{ TStoneDeeplinkAndroidApplication }

procedure TStoneDeeplinkAndroidApplication.CallCancelation(const ACancelation: IStoneDeeplinkCancelationEntity);
begin
  if ACancelation.GetReturnScheme.Trim.IsEmpty then
    ACancelation.SetReturnScheme(FScheme);
  FStoneDeeplinkCancelationProxy.CallCancelation(ACancelation);
end;

procedure TStoneDeeplinkAndroidApplication.CallCancelationForLastPaymentReturn;
begin
  if FLastPaymentReturn = nil then
    raise Exception.Create('Unable to cancel');
  FStoneDeeplinkCancelationProxy.CallCancelation(
    TStoneDeeplinkCancelationEntityBuilder.New
    .SetReturnScheme(FScheme)
    .SetAmount(FLastPaymentReturn.GetAmount)
    .SetATK(FLastPaymentReturn.GetATK)
    .SetEditableAmount(TStoneDeeplinkEditableAmountType.Uneditable)
    .Build
    );
end;

procedure TStoneDeeplinkAndroidApplication.CallPayment(const APayment: IStoneDeeplinkPaymentEntity);
begin
  if APayment.GetReturnScheme.Trim.IsEmpty then
    APayment.SetReturnScheme(FScheme);
  FStoneDeeplinkPaymentProxy.CallPayment(APayment);
end;

constructor TStoneDeeplinkAndroidApplication.Create(const AScheme: string);
var
  LAppEventService: IFMXApplicationEventService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXApplicationEventService, LAppEventService) then
    LAppEventService.SetApplicationEventHandler(HandleAppEvent);
  MainActivity.registerIntentAction(StringToJString('android.intent.action.VIEW'));
  TMessageManager.DefaultManager.SubscribeToMessage(TMessageReceivedNotification, HandleActivityMessage);

  FStoneDeeplinkCancelationProxy := TStoneDeeplinkCancelationProxy.New;
  FStoneDeeplinkPaymentProxy := TStoneDeeplinkPaymentProxy.New;

  FScheme := AScheme;
end;

procedure TStoneDeeplinkAndroidApplication.DoCancelationError(const AReason, AResponseCode: string);
begin
  if Assigned(FOnCancelationError) then
    FOnCancelationError(AReason, AResponseCode);
end;

procedure TStoneDeeplinkAndroidApplication.DoCancelationSuccess(const ACancelationReturn: IStoneDeeplinkCancelationReturnEntity);
begin
  if Assigned(FOnCancelationSuccess) then
    FOnCancelationSuccess(ACancelationReturn);
end;

procedure TStoneDeeplinkAndroidApplication.DoPaymentError(const ACode: Integer; const AMessage: string);
begin
  if Assigned(FOnPaymentError) then
    FOnPaymentError(ACode, AMessage);
end;

procedure TStoneDeeplinkAndroidApplication.DoPaymentSuccess(const APaymentReturn: IStoneDeeplinkPaymentReturnEntity);
begin
  FLastPaymentReturn := APaymentReturn;
  if Assigned(FOnPaymentSuccess) then
    FOnPaymentSuccess(APaymentReturn);
end;

function TStoneDeeplinkAndroidApplication.GetExecuteCallbacks: Boolean;
begin
  Result := FExecuteCallbacks;
end;

function TStoneDeeplinkAndroidApplication.GetScheme: string;
begin
  Result := FScheme;
end;

procedure TStoneDeeplinkAndroidApplication.HandleActivityMessage(const Sender: TObject; const M: TMessage);
begin
  if M is TMessageReceivedNotification then
    HandleIntentAction(TMessageReceivedNotification(M).Value);
end;

function TStoneDeeplinkAndroidApplication.HandleAppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
var
  LStartupIntent: JIntent;
begin
  Result := False;
  if AAppEvent = TApplicationEvent.BecameActive then
  begin
    LStartupIntent := MainActivity.getIntent;
    if LStartupIntent <> nil then
      HandleIntentAction(LStartupIntent);
  end;
end;

function TStoneDeeplinkAndroidApplication.HandleIntentAction(const AIntent: JIntent): Boolean;
begin
  Result := False;
  if not FExecuteCallbacks then
    Exit;
  if (AIntent <> nil) then
  begin
    if (AIntent.GetScheme <> nil) and (AIntent.GetScheme.equals(StringToJString(FScheme))) then
    begin
      if AIntent.getData.getHost.equals(StringToJString('pay-response')) then
      begin
        if AIntent.getData.getQueryParameter(StringToJString('message')) <> nil then
          DoPaymentError(JStringToString(AIntent.getData.getQueryParameter(StringToJString('code'))).ToInteger, JStringToString(AIntent.getData.getQueryParameter(StringToJString('message'))))
        else
          DoPaymentSuccess(TStoneDeeplinkPaymentReturnAndroidAdapter.New(AIntent).GetPaymentReturn)
      end
      else if AIntent.getData.getHost.equals(StringToJString('cancel')) then
      begin
        if AIntent.getData.getQueryParameter(StringToJString('success')).equals(StringToJString('false')) then
          DoCancelationError(JStringToString(AIntent.getData.getQueryParameter(StringToJString('reason'))), JStringToString(AIntent.getData.getQueryParameter(StringToJString('responsecode'))))
        else
          DoCancelationSuccess(TStoneDeeplinkCancelationReturnAndroidAdapter.New(AIntent).GetCancelationReturn);
      end;
    end;
  end;
end;

class function TStoneDeeplinkAndroidApplication.New(const AScheme: string): IStoneDeeplinkApplication;
begin
  Result := Self.Create(AScheme);
end;

procedure TStoneDeeplinkAndroidApplication.SetCancelationError(const AOnCancelationError: TOnCancelationError);
begin
  FOnCancelationError := AOnCancelationError;
end;

procedure TStoneDeeplinkAndroidApplication.SetCancelationSuccess(const AOnCancelationSuccess: TOnCancelationSuccess);
begin
  FOnCancelationSuccess := AOnCancelationSuccess;
end;

procedure TStoneDeeplinkAndroidApplication.SetExecuteCallbacks(const AExecuteCallbacks: Boolean);
begin
  FExecuteCallbacks := AExecuteCallbacks;
end;

procedure TStoneDeeplinkAndroidApplication.SetPaymentError(const AOnPaymentError: TOnPaymentError);
begin
  FOnPaymentError := AOnPaymentError;
end;

procedure TStoneDeeplinkAndroidApplication.SetPaymentSuccess(const AOnPaymentSuccess: TOnPaymentSuccess);
begin
  FOnPaymentSuccess := AOnPaymentSuccess;
end;

procedure TStoneDeeplinkAndroidApplication.SetScheme(const AScheme: string);
begin
  FScheme := AScheme;
end;
{$ENDIF}

end.
