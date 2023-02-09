unit Stone.Deeplink.Component.Application;

interface

uses
  System.Classes,
  Stone.Deeplink.Callbacks,
  Stone.Deeplink.Contract.Application,
  Stone.Deeplink.Contract.Entity.Cancelation,
  Stone.Deeplink.Contract.Entity.Payment,
  Stone.Deeplink.Contract.Entity.PaymentReturn;

type

  TStoneDeeplinkApplicationComponent = class(TComponent)
  private
    FOnPaymentError: TOnPaymentErrorComponent;
    FOnPaymentSuccess: TOnPaymentSuccessComponent;
    FScheme: string;
{$IFDEF ANDROID}
    FStoneDeeplinkApplication: IStoneDeeplinkApplication;
{$ENDIF}
    { private declarations }
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
  public
    { public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure CallPayment(const APayment: IStoneDeeplinkPaymentEntity);
    procedure CallCancelation(const ACancelation: IStoneDeeplinkCancelationEntity);
  published
    { published declarations }
    property OnPaymentSuccess: TOnPaymentSuccessComponent read GetOnPaymentSuccess write SetOnPaymentSuccess;
    property OnPaymentError: TOnPaymentErrorComponent read GetOnPaymentError write SetOnPaymentError;
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
{$IFDEF ANDROID}
  FStoneDeeplinkApplication := TStoneDeeplinkAndroidApplication.New(FScheme);
  FStoneDeeplinkApplication.SetPaymentSuccess(DoPaymentSuccess);
  FStoneDeeplinkApplication.SetPaymentError(DoPaymentError);
{$ENDIF}
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
