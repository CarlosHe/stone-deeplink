unit Stone.Deeplink.Proxy.Android.Printer;

{
  -------------------------------------------------------------------------------
  | Printer - temporary                                                         |
  -------------------------------------------------------------------------------
}

{ TODO : class in process of implementation }

interface

{$IFDEF ANDROID}
uses
  Stone.Deeplink.Contract.Proxy.Printer;

type

  TStoneDeeplinkPrinterProxy = class(TInterfacedObject, IStoneDeeplinkPrinterProxy)
  strict private
    constructor Create;
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    procedure CallPrinter();
    class function New: IStoneDeeplinkPrinterProxy;
  end;
{$ENDIF}

implementation

{$IFDEF ANDROID}
uses
  System.SysUtils;

{ TStoneDeeplinkPrinterProxy }

procedure TStoneDeeplinkPrinterProxy.CallPrinter;
begin
  raise Exception.Create('Not implemented');
end;

constructor TStoneDeeplinkPrinterProxy.Create;
begin

end;

class function TStoneDeeplinkPrinterProxy.New: IStoneDeeplinkPrinterProxy;
begin
  Result := Self.Create;
end;
{$ENDIF}

end.
