program BodyFit;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitLogin in 'UnitLogin.pas' {FrmLogin},
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  Frame.Treino in 'Frames\Frame.Treino.pas' {FrameTreino: TFrame},
  UnitTreinoDetalhe in 'UnitTreinoDetalhe.pas' {FrmTreinoDetalhe},
  UnitTreinoCad in 'UnitTreinoCad.pas' {FrmTreinoCad},
  Frame.FichaExercicio in 'Frames\Frame.FichaExercicio.pas' {FrameFichaExercicio: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmTreinoDetalhe, FrmTreinoDetalhe);
  Application.CreateForm(TFrmTreinoCad, FrmTreinoCad);
  Application.Run;
end.
