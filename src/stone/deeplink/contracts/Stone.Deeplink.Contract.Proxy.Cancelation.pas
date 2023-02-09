unit Stone.Deeplink.Contract.Proxy.Cancelation;

interface

uses
  Stone.Deeplink.Contract.Entity.Cancelation;

type

  IStoneDeeplinkCancelationProxy = interface
    ['{80B72A24-BFEF-4842-BC85-9AED79D54AA6}']
    procedure CallCancelation(const ACancelation: IStoneDeeplinkCancelationEntity);
  end;

implementation

end.
