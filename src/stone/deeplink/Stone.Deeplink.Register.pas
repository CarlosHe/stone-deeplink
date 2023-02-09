unit Stone.Deeplink.Register;

interface

uses
  Stone.Deeplink;

procedure Register;

implementation

uses
  System.Classes;

procedure Register;
begin
  RegisterComponents('Stone - Deeplink', [TStoneDeeplink]);
end;

end.
