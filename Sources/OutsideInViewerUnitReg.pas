unit OutsideInViewerUnitReg;

interface

procedure Register;

implementation

uses
  Classes, OutsideInViewerUnit;

procedure Register;
begin
  RegisterComponents('IC Controls', [TOutsideInViewer]);
end;

end.
