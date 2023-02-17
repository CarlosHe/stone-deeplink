# Stone Deeplink

A Delphi (Firemonkey) library for integration with Stone's card machine

## ⚙️ Installation
Installation is done using the [`boss install`](https://github.com/HashLoad/boss) command:
``` sh
boss install github.com/CarlosHe/stone-deeplink
```
## Manual initialization (without component)

### ⚡️ Initializing an instance
```delphi
uses
  Stone.Deeplink;

// GLOBAL VARIABLE
var
  FStoneDeeplinkApplication: TStoneDeeplinkAndroidApplication;

...

begin
  FStoneDeeplinkApplication := TStoneDeeplinkAndroidApplication.New(REPLACE_BY_SCHEME_NAME);
end.
```

### ⚡️ Defining the payment callback
```delphi
uses
  Stone.Deeplink;

// GLOBAL VARIABLE
var
  FStoneDeeplinkApplication: TStoneDeeplinkAndroidApplication;

...

procedure StoneDeeplinkPaymentSuccess(const APaymentReturn: IStoneDeeplinkPaymentReturnEntity);
begin
// SUCCESSFUL RETURN
end.

procedure StoneDeeplinkPaymentError(const ACode: Integer; const AMessage: string);
begin
// RETURN WITH ERROR
end.

...

begin
  FStoneDeeplinkApplication.SetPaymentSuccess(StoneDeeplinkPaymentSuccess);
  FStoneDeeplinkApplication.SetPaymentError(StoneDeeplinkPaymentError);
end.
```
### ⚡️ Calling payment
```delphi
uses
  Stone.Deeplink;

// GLOBAL VARIABLE
var
  FStoneDeeplinkApplication: TStoneDeeplinkAndroidApplication;

...

begin
  FStoneDeeplinkApplication.CallPayment(
      TStoneDeeplinkPaymentEntityBuilder.New
        .SetAmount(REPLACE_BY_AMOUNT_IN_CENTS)
        .SetTransactionType(TStoneDeeplinkTransactionType.Credit)
        .Build
  );
end.
```
