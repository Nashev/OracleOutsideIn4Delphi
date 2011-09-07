program Demo;

uses
  Forms,
  baseio in '..\Sources\baseio.pas',
  charsets in '..\Sources\charsets.pas',
  lodlg in '..\Sources\lodlg.pas',
  lomenu in '..\Sources\lomenu.pas',
  sccanno in '..\Sources\sccanno.pas',
  sccca in '..\Sources\sccca.pas',
  sccda in '..\Sources\sccda.pas',
  sccerrUnit in '..\Sources\sccerrUnit.pas',
  sccfi in '..\Sources\sccfi.pas',
  sccid in '..\Sources\sccid.pas',
  sccio in '..\Sources\sccio.pas',
  scclink in '..\Sources\scclink.pas',
  sccop in '..\Sources\sccop.pas',
  sccopval in '..\Sources\sccopval.pas',
  sccra in '..\Sources\sccra.pas',
  sccrc4 in '..\Sources\sccrc4.pas',
  sccta in '..\Sources\sccta.pas',
  scctype in '..\Sources\scctype.pas',
  sccvw in '..\Sources\sccvw.pas',
  sccvw_w in '..\Sources\sccvw_w.pas',
  verbuild in '..\Sources\verbuild.pas',
  vtchars in '..\Sources\vtchars.pas',
  OutsideInViewerUnit in '..\Sources\OutsideInViewerUnit.pas',
  OutsideInViewerUnitReg in '..\Sources\OutsideInViewerUnitReg.pas',
  MainFormUnit in 'MainFormUnit.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
