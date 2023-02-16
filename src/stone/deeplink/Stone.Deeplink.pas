unit Stone.Deeplink;

{
  -------------------------------------------------------------------------------------------
  |  author: Carlos Modesto                                                                 |
  |  page:   https://github.com/CarlosHe                                                    |
  -------------------------------------------------------------------------------------------
}

interface

uses
  Stone.Deeplink.Adapters,
  Stone.Deeplink.Applications,
  Stone.Deeplink.Builders,
  Stone.Deeplink.Components,
  Stone.Deeplink.Contracts,
  Stone.Deeplink.Entities,
  Stone.Deeplink.Enums,
  Stone.Deeplink.Proxies,
  Stone.Deeplink.Types,
  Stone.Deeplink.Callbacks;

type
{$IFDEF ANDROID}
  // adapters
  TStoneDeeplinkCancelationAndroidAdapter = Stone.Deeplink.Adapters.TStoneDeeplinkCancelationAndroidAdapter;
  TStoneDeeplinkPaymentAndroidAdapter = Stone.Deeplink.Adapters.TStoneDeeplinkPaymentAndroidAdapter;
  TStoneDeeplinkCancelationReturnAndroidAdapter = Stone.Deeplink.Adapters.TStoneDeeplinkCancelationReturnAndroidAdapter;
  TStoneDeeplinkPaymentReturnAndroidAdapter = Stone.Deeplink.Adapters.TStoneDeeplinkPaymentReturnAndroidAdapter;
  // applications
  TStoneDeeplinkAndroidApplication = Stone.Deeplink.Applications.TStoneDeeplinkAndroidApplication;
{$ENDIF}
  // builders
  TStoneDeeplinkCancelationEntityBuilder = Stone.Deeplink.Builders.TStoneDeeplinkCancelationEntityBuilder;
  TStoneDeeplinkPaymentEntityBuilder = Stone.Deeplink.Builders.TStoneDeeplinkPaymentEntityBuilder;
  TStoneDeeplinkCancelationReturnEntityBuilder = Stone.Deeplink.Builders.TStoneDeeplinkCancelationReturnEntityBuilder;
  TStoneDeeplinkPaymentReturnEntityBuilder = Stone.Deeplink.Builders.TStoneDeeplinkPaymentReturnEntityBuilder;
  // components
  TStoneDeeplink = class(TStoneDeeplinkApplicationComponent);
{$IFDEF ANDROID}
  // contracts
  IStoneDeeplinkCancelationAdapter = Stone.Deeplink.Contracts.IStoneDeeplinkCancelationAdapter;
  IStoneDeeplinkPaymentAdapter = Stone.Deeplink.Contracts.IStoneDeeplinkPaymentAdapter;
  IStoneDeeplinkCancelationReturnAdapter = Stone.Deeplink.Contracts.IStoneDeeplinkCancelationReturnAdapter;
  IStoneDeeplinkPaymentReturnAdapter = Stone.Deeplink.Contracts.IStoneDeeplinkPaymentReturnAdapter;
{$ENDIF}
  IStoneDeeplinkApplication = Stone.Deeplink.Contracts.IStoneDeeplinkApplication;
  IStoneDeeplinkCancelationEntityBuilder = Stone.Deeplink.Contracts.IStoneDeeplinkCancelationEntityBuilder;
  IStoneDeeplinkPaymentEntityBuilder = Stone.Deeplink.Contracts.IStoneDeeplinkPaymentEntityBuilder;
  IStoneDeeplinkCancelationReturnEntityBuilder = Stone.Deeplink.Contracts.IStoneDeeplinkCancelationReturnEntityBuilder;
  IStoneDeeplinkPaymentReturnEntityBuilder = Stone.Deeplink.Contracts.IStoneDeeplinkPaymentReturnEntityBuilder;
  IStoneDeeplinkCancelationEntity = Stone.Deeplink.Contracts.IStoneDeeplinkCancelationEntity;
  IStoneDeeplinkPaymentEntity = Stone.Deeplink.Contracts.IStoneDeeplinkPaymentEntity;
  IStoneDeeplinkCancelationReturnEntity = Stone.Deeplink.Contracts.IStoneDeeplinkCancelationReturnEntity;
  IStoneDeeplinkPaymentReturnEntity = Stone.Deeplink.Contracts.IStoneDeeplinkPaymentReturnEntity;
  IStoneDeeplinkCancelationProxy = Stone.Deeplink.Contracts.IStoneDeeplinkCancelationProxy;
  IStoneDeeplinkPaymentProxy = Stone.Deeplink.Contracts.IStoneDeeplinkPaymentProxy;
  IStoneDeeplinkPrinterProxy = Stone.Deeplink.Contracts.IStoneDeeplinkPrinterProxy;
  // entities
  TStoneDeeplinkCancelationEntity = Stone.Deeplink.Entities.TStoneDeeplinkCancelationEntity;
  TStoneDeeplinkPaymentEntity = Stone.Deeplink.Entities.TStoneDeeplinkPaymentEntity;
  TStoneDeeplinkCancelationReturnEntity = Stone.Deeplink.Entities.TStoneDeeplinkCancelationReturnEntity;
  TStoneDeeplinkPaymentReturnEntity = Stone.Deeplink.Entities.TStoneDeeplinkPaymentReturnEntity;
  // enums
  TStoneDeeplinkTransactionType = Stone.Deeplink.Enums.TStoneDeeplinkTransactionType;
  TStoneDeeplinkInstallmentType = Stone.Deeplink.Enums.TStoneDeeplinkInstallmentType;
  TStoneDeeplinkEditableAmountType = Stone.Deeplink.Enums.TStoneDeeplinkEditableAmountType;
{$IFDEF ANDROID}
  // proxies
  TStoneDeeplinkCancelationProxy = Stone.Deeplink.Proxies.TStoneDeeplinkCancelationProxy;
  TStoneDeeplinkPaymentProxy = Stone.Deeplink.Proxies.TStoneDeeplinkPaymentProxy;
  TStoneDeeplinkPrinterProxy = Stone.Deeplink.Proxies.TStoneDeeplinkPrinterProxy;
{$ENDIF}
  // types
  TStoneDeeplinkAmount = Stone.Deeplink.Types.TStoneDeeplinkAmount;
  TStoneDeeplinkInstallmentCount = Stone.Deeplink.Types.TStoneDeeplinkInstallmentCount;
  TStoneDeeplinkOrderId = Stone.Deeplink.Types.TStoneDeeplinkOrderId;
  TOnPaymentSuccess = Stone.Deeplink.Callbacks.TOnPaymentSuccess;
  TOnPaymentError = Stone.Deeplink.Callbacks.TOnPaymentError;
  TOnCancelationSuccess = Stone.Deeplink.Callbacks.TOnCancelationSuccess;
  TOnCancelationError = Stone.Deeplink.Callbacks.TOnCancelationError;

implementation

end.
