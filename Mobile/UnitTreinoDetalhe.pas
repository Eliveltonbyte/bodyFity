unit UnitTreinoDetalhe;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.ListBox;

type
  TFrmTreinoDetalhe = class(TForm)
    lytToolBar: TLayout;
    lblTitulo: TLabel;
    Label5: TLabel;
    lbExercicios: TListBox;
    rectBtnLogin: TRectangle;
    btnIniciar: TSpeedButton;
    imgVoltar: TImage;
    procedure FormShow(Sender: TObject);
    procedure imgVoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIniciarClick(Sender: TObject);
  private
    procedure AddExercicios(id_exercicio: integer; titulo, subTitulo: string);
    procedure CarregarExercicio;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTreinoDetalhe: TFrmTreinoDetalhe;

implementation

{$R *.fmx}

uses Frame.Treino, UnitTreinoCad;

procedure TFrmTreinoDetalhe. AddExercicios(id_exercicio: integer; titulo, subTitulo: string);
var
  item: TListBoxItem;
  frame: TFrameTreino;
begin
  item :=  TListBoxItem.Create(lbExercicios);
  item.Selectable := false;
  item.Text := '';
  item.Height := 90;
  item.Tag := id_exercicio;

  //Frame...
  frame := TFrameTreino.Create(item);
  frame.lblTitulo.Text := titulo;
  frame.lblSubtitulo.Text := subtitulo;

  item.AddObject(frame);
  lbExercicios.AddObject(item);

end;

procedure TFrmTreinoDetalhe.btnIniciarClick(Sender: TObject);
begin
    if NOT Assigned(FrmTreinoCad) then
      Application.CreateForm(TFrmTreinoCad, FrmTreinoCad);

      FrmTreinoCad.show;
end;

procedure TFrmTreinoDetalhe.CarregarExercicio;
begin
    AddExercicios(1,'Cardio(esteira ou bike)', '15 minutos');
    AddExercicios(2,'Prancha isométrica', '3x 15 a 20');
    AddExercicios(3,'Lombar máquina', '3x 15 a 20');
    AddExercicios(4,'Supino', '3x 15 a 20');
    AddExercicios(5,'Remada', '3x 15 a 20');

end;

procedure TFrmTreinoDetalhe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := TCloseAction.caFree;
    FrmTreinoDetalhe := nil;
end;

procedure TFrmTreinoDetalhe.FormShow(Sender: TObject);
begin
    CarregarExercicio;
end;

procedure TFrmTreinoDetalhe.imgVoltarClick(Sender: TObject);
begin
    close;
end;

end.
