unit Stone.Deeplink.Component.Application;

interface

uses
  System.Classes,
  Stone.Deeplink.Callbacks,
  Stone.Deeplink.Contract.Application,
  Stone.Deeplink.Contract.Entity.Cancelation,
  Stone.Deeplink.Contract.Entity.Payment,
  Stone.Deeplink.Contract.Entity.CancelationReturn,
  Stone.Deeplink.Contract.Entity.PaymentReturn;

type

  TStoneDeeplinkApplicationComponent = class(TComponent)
  private
    { private declarations }
{$IFDEF ANDROID}
    FStoneDeeplinkApplication: IStoneDeeplinkApplication;
{$ENDIF}
    FOnPaymentError: TOnPaymentErrorComponent;
    FOnPaymentSuccess: TOnPaymentSuccessComponent;
    FOnCancelationSuccess: TOnCancelationSuccessComponent;
    FOnCancelationError: TOnCancelationErrorComponent;
    FExecuteCallbacks: Boolean;
    FScheme: string;
    procedure SetOnCancelationError(const Value: TOnCancelationErrorComponent);
    procedure SetOnCancelationSuccess(const Value: TOnCancelationSuccessComponent);
    procedure SetExecuteCallbacks(const Value: Boolean);
    function GetOnCancelationError: TOnCancelationErrorComponent;
    function GetOnCancelationSuccess: TOnCancelationSuccessComponent;
    function GetExecuteCallbacks: Boolean;
  protected
    { protected declarations }
    procedure SetOnPaymentError(const Value: TOnPaymentErrorComponent);
    procedure SetOnPaymentSuccess(const Value: TOnPaymentSuccessComponent);
    procedure SetScheme(const Value: string);
    function GetOnPaymentError: TOnPaymentErrorComponent;
    function GetOnPaymentSuccess: TOnPaymentSuccessComponent;
    function GetScheme: string;
    procedure DoPaymentSuccess(const APaymentReturn: IStoneDeeplinkPaymentReturnEntity);
    procedure DoPaymentError(const ACode: Integer; const AMessage: string);
    procedure DoCancelationSuccess(const ACancelationReturn: IStoneDeeplinkCancelationReturnEntity);
    procedure DoCancelationError(const AReason: string; const AResponseCode: string);
  public
    { public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure CallPayment(const APayment: IStoneDeeplinkPaymentEntity);
    procedure CallCancelation(const ACancelation: IStoneDeeplinkCancelationEntity);
  published
    { published declarations }
    property OnPaymentSuccess: TOnPaymentSuccessComponent read GetOnPaymentSuccess write SetOnPaymentSuccess;
    property OnPaymentError: TOnPaymentErrorComponent read GetOnPaymentError write SetOnPaymentError;
    property OnCancelationSuccess: TOnCancelationSuccessComponent read GetOnCancelationSuccess write SetOnCancelationSuccess;
    property OnCancelationError: TOnCancelationErrorComponent read GetOnCancelationError write SetOnCancelationError;
    property ExecuteCallbacks: Boolean read GetExecuteCallbacks write SetExecuteCallbacks default True;
    property Scheme: string read GetScheme write SetScheme;
  end;

implementation

{$IFDEF ANDROID}


uses
  Stone.Deeplink.Android.Application;
{$ENDIF}

{ TStoneDeeplinkApplicationComponent }

procedure TStoneDeeplinkApplicationComponent.CallCancelation(const ACancelation: IStoneDeeplinkCancelationEntity);
begin
{$IFDEF ANDROID}
  FStoneDeeplinkApplication.CallCancelation(ACancelation);
{$ENDIF}
end;

procedure TStoneDeeplinkApplicationComponent.CallPayment(const APayment: IStoneDeeplinkPaymentEntity);
begin
{$IFDEF ANDROID}
  FStoneDeeplinkApplication.CallPayment(APayment);
{$ENDIF}
end;

constructor TStoneDeeplinkApplicationComponent.Create(AOwner: TComponent);
begin
  inherited;
  FExecuteCallbacks := True;
{$IFDEF ANDROID}
  FStoneDeeplinkApplication := TStoneDeeplinkAndroidApplication.New(FScheme);
  FStoneDeeplinkApplication.SetExecuteCallbacks(True);
  FStoneDeeplinkApplication.SetPaymentSuccess(DoPaymentSuccess);
  FStoneDeeplinkApplication.SetPaymentError(DoPaymentError);
  FStoneDeeplinkApplication.SetCancelationSuccess(DoCancelationSuccess);
  FStoneDeeplinkApplication.SetCancelationError(DoCancelationError);
{$ENDIF}
end;

procedure TStoneDeeplinkApplicationComponent.DoCancelationError(const AReason, AResponseCode: string);
begin
  if Assigned(FOnCancelationError) then
    FOnCancelationError(Self, AReason, AResponseCode);
end;

procedure TStoneDeeplinkApplicationComponent.DoCancelationSuccess(const ACancelationReturn: IStoneDeeplinkCancelationReturnEntity);
begin
  if Assigned(FOnCancelationSuccess) then
    FOnCancelationSuccess(Self, ACancelationReturn);
end;

procedure TStoneDeeplinkApplicationComponent.DoPaymentError(const ACode: Integer; const AMessage: string);
begin
  if Assigned(FOnPaymentError) then
    FOnPaymentError(Self, ACode, AMessage);
end;

procedure TStoneDeeplinkApplicationComponent.DoPaymentSuccess(const APaymentReturn: IStoneDeeplinkPaymentReturnEntity);
begin
  if Assigned(FOnPaymentSuccess) then
    FOnPaymentSuccess(Self, APaymentReturn);
end;

function TStoneDeeplinkApplicationComponent.GetExecuteCallbacks: Boolean;
begin
  Result := FExecuteCallbacks;
end;

function TStoneDeeplinkApplicationComponent.GetOnCancelationError: TOnCancelationErrorComponent;
begin
  Result := FOnCancelationError;
end;

function TStoneDeeplinkApplicationComponent.GetOnCancelationSuccess: TOnCancelationSuccessComponent;
begin
  Result := FOnCancelationSuccess;
end;

function TStoneDeeplinkApplicationComponent.GetOnPaymentError: TOnPaymentErrorComponent;
begin
  Result := FOnPaymentError;
end;

function TStoneDeeplinkApplicationComponent.GetOnPaymentSuccess: TOnPaymentSuccessComponent;
begin
  Result := FOnPaymentSuccess;
end;

function TStoneDeeplinkApplicationComponent.GetScheme: string;
begin
  Result := FScheme;
end;

procedure TStoneDeeplinkApplicationComponent.SetExecuteCallbacks(const Value: Boolean);
begin
  FExecuteCallbacks := Value;
{$IFDEF ANDROID}
  FStoneDeeplinkApplication.SetExecuteCallbacks(FExecuteCallbacks);
{$ENDIF}
end;

procedure TStoneDeeplinkApplicationComponent.SetOnCancelationError(const Value: TOnCancelationErrorComponent);
begin
  FOnCancelationError := Value;
end;

procedure TStoneDeeplinkApplicationComponent.SetOnCancelationSuccess(const Value: TOnCancelationSuccessComponent);
begin
  FOnCancelationSuccess := Value;
end;

procedure TStoneDeeplinkApplicationComponent.SetOnPaymentError(const Value: TOnPaymentErrorComponent);
begin
  FOnPaymentError := Value;
end;

procedure TStoneDeeplinkApplicationComponent.SetOnPaymentSuccess(const Value: TOnPaymentSuccessComponent);
begin
  FOnPaymentSuccess := Value;
end;

procedure TStoneDeeplinkApplicationComponent.SetScheme(const Value: string);
begin
  FScheme := Value;
{$IFDEF ANDROID}
  FStoneDeeplinkApplication.SetScheme(Value);
{$ENDIF}
end;

end.
